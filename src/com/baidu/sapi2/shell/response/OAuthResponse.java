package com.baidu.sapi2.shell.response;

public class OAuthResponse
  extends SapiResponse
{
  public String accessToken;
  public int expiresIn;
  public String extra;
  public String refreshToken;
  public String sessionKey;
  public String sessionSecret;
  
  public String toString()
  {
    return "OAuthResponse{accessToken='" + accessToken + '\'' + ", expiresIn=" + expiresIn + ", refreshToken='" + refreshToken + '\'' + ", sessionKey='" + sessionKey + '\'' + ", sessionSecret='" + sessionSecret + '\'' + ", extra='" + extra + '\'' + '}';
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.response.OAuthResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */