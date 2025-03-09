package plugin

import (
	"bytes"
	"encoding/json"
	"fmt"
	"net/http"
	"net/url"
	"strings"
)

func (o *OauthConfig) GetAuthAddr(state string, params map[string]string) string {
	u := url.Values{}
	u.Add("client_id", o.ClientId)
	u.Add("redirect_uri", o.ClientId)
	u.Add("scope", strings.Join(o.Scopes, ","))
	u.Add("state", state)

	if params["response_type"] == "" {
		u.Add("response_type", "code")
	}

	for k, v := range params {
		u.Set(k, v)
	}
	return fmt.Sprintf("%s?%s", o.AuthUrl, u.Encode())
}

func (o *OauthConfig) AuthCodeVerifier(codeVerifier string) (*Token, error) {
	return o.getToken("authorization_code", "", "", codeVerifier)
}

func (o *OauthConfig) AuthCode(code string) (*Token, error) {
	return o.getToken("authorization_code", code, "", "")
}

func (o *OauthConfig) RefreshToken(refreshToken string) (*Token, error) {
	return o.getToken("refresh_token", "", refreshToken, "")
}

func (o *OauthConfig) getToken(grantType, code, refreshToken, codeVerifier string) (*Token, error) {
	param := map[string]string{
		"client_id":     o.ClientId,
		"client_secret": o.ClientSecret,
		"grant_type":    grantType,
		"code":          code,
		"refresh_token": refreshToken,
		"code_verifier": codeVerifier,
	}
	if o.ClientSecret != "" {
		param["client_secret"] = o.ClientSecret
	}
	var (
		req *http.Request
		err error
	)
	switch o.TokenReqType {
	case "json":
		reqData, err := json.Marshal(param)
		if err != nil {
			return nil, err
		}
		req, err = http.NewRequest("POST", o.TokenUrl, bytes.NewBuffer(reqData))
		if err != nil {
			return nil, err
		}
		req.Header.Set("Content-Type", "application/json")
	case "url":
		u := url.Values{}
		for k, v := range param {
			u.Set(k, v)
		}
		req, err = http.NewRequest("GET", fmt.Sprintf("%s%s", o.TokenUrl, u.Encode()), nil)
		if err != nil {
			return nil, err
		}
	default:
		return nil, fmt.Errorf("unsupported token request type: %s", o.TokenReqType)
	}

	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()
	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("unexpected status code: %d", resp.StatusCode)
	}
	var token = Token{}
	if err := json.NewDecoder(resp.Body).Decode(&token); err != nil {
		return nil, err
	}
	return &token, nil

}
