package com.dropbox.client2.session;

import com.dropbox.client2.DropboxAPI.RequestAndResponse;
import com.dropbox.client2.RESTUtility;
import com.dropbox.client2.RESTUtility.RequestMethod;
import com.dropbox.client2.exception.DropboxParseException;
import java.util.Locale;
import java.util.Map;

public class WebAuthSession
  extends AbstractSession
{
  public WebAuthSession(AppKeyPair paramAppKeyPair)
  {
    super(paramAppKeyPair);
  }
  
  public WebAuthSession(AppKeyPair paramAppKeyPair, AccessTokenPair paramAccessTokenPair)
  {
    super(paramAppKeyPair, paramAccessTokenPair);
  }
  
  public WebAuthSession(AppKeyPair paramAppKeyPair, Session.AccessType paramAccessType)
  {
    super(paramAppKeyPair, paramAccessType);
  }
  
  public WebAuthSession(AppKeyPair paramAppKeyPair, Session.AccessType paramAccessType, AccessTokenPair paramAccessTokenPair)
  {
    super(paramAppKeyPair, paramAccessType, paramAccessTokenPair);
  }
  
  private Map<String, String> setUpToken(String paramString)
  {
    paramString = RESTUtility.parseAsQueryString(streamRequestGETgetAPIServer1"locale"getLocaletoStringresponse);
    if ((!paramString.containsKey("oauth_token")) || (!paramString.containsKey("oauth_token_secret"))) {
      throw new DropboxParseException("Did not get tokens from Dropbox");
    }
    setAccessTokenPair(new AccessTokenPair((String)paramString.get("oauth_token"), (String)paramString.get("oauth_token_secret")));
    return paramString;
  }
  
  public WebAuthSession.WebAuthInfo getAuthInfo()
  {
    return getAuthInfo(null);
  }
  
  public WebAuthSession.WebAuthInfo getAuthInfo(String paramString)
  {
    setUpToken("/oauth/request_token");
    Object localObject = getAccessTokenPair();
    RequestTokenPair localRequestTokenPair = new RequestTokenPair(key, secret);
    if (paramString != null)
    {
      localObject = new String[6];
      localObject[0] = "oauth_token";
      localObject[1] = key;
      localObject[2] = "oauth_callback";
      localObject[3] = paramString;
      localObject[4] = "locale";
      localObject[5] = getLocale().toString();
      paramString = (String)localObject;
    }
    for (;;)
    {
      return new WebAuthSession.WebAuthInfo(RESTUtility.buildURL(getWebServer(), 1, "/oauth/authorize", paramString), localRequestTokenPair, null);
      paramString = new String[4];
      paramString[0] = "oauth_token";
      paramString[1] = key;
      paramString[2] = "locale";
      paramString[3] = getLocale().toString();
    }
  }
  
  public String retrieveWebAccessToken(RequestTokenPair paramRequestTokenPair)
  {
    setAccessTokenPair(paramRequestTokenPair);
    return (String)setUpToken("/oauth/access_token").get("uid");
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.WebAuthSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */