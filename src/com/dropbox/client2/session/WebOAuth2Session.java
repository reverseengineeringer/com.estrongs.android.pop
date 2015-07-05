package com.dropbox.client2.session;

import com.dropbox.client2.RESTUtility;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;

public class WebOAuth2Session
  extends AbstractSession
{
  public WebOAuth2Session(AppKeyPair paramAppKeyPair)
  {
    super(paramAppKeyPair);
  }
  
  public WebOAuth2Session(AppKeyPair paramAppKeyPair, String paramString)
  {
    super(paramAppKeyPair, paramString);
  }
  
  public String getAuthorizeURL()
  {
    return getAuthorizeURL(null, null);
  }
  
  public String getAuthorizeURL(String paramString1, String paramString2)
  {
    String str = getAppKeyPairkey;
    return RESTUtility.buildURL(getWebServer(), 1, "/oauth2/authorize", new String[] { "response_type", "code", "client_id", str, "redirect_uri", paramString1, "state", paramString2 });
  }
  
  public String retrieveWebAccessToken(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("'code' must not be null");
    }
    String str1 = getAppKeyPairkey;
    String str2 = getAppKeyPairsecret;
    paramString1 = (String)((Map)RESTUtility.parseAsJSON(RESTUtility.execute(this, new HttpPost(RESTUtility.buildURL(getAPIServer(), 1, "/oauth2/token", new String[] { "grant_type", "authorization_code", "code", paramString1, "client_id", str1, "client_secret", str2, "redirect_uri", paramString2 }))))).get("access_token");
    setOAuth2AccessToken(paramString1);
    return paramString1;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.WebOAuth2Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */