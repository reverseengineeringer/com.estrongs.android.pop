package oauth.signpost;

import java.io.Serializable;
import java.util.Map;
import oauth.signpost.http.HttpParameters;

public abstract interface OAuthProvider
  extends Serializable
{
  public abstract String getAccessTokenEndpointUrl();
  
  public abstract String getAuthorizationWebsiteUrl();
  
  @Deprecated
  public abstract Map<String, String> getRequestHeaders();
  
  public abstract String getRequestTokenEndpointUrl();
  
  public abstract HttpParameters getResponseParameters();
  
  public abstract boolean isOAuth10a();
  
  public abstract void removeListener(OAuthProviderListener paramOAuthProviderListener);
  
  public abstract void retrieveAccessToken(OAuthConsumer paramOAuthConsumer, String paramString);
  
  public abstract String retrieveRequestToken(OAuthConsumer paramOAuthConsumer, String paramString);
  
  public abstract void setListener(OAuthProviderListener paramOAuthProviderListener);
  
  public abstract void setOAuth10a(boolean paramBoolean);
  
  @Deprecated
  public abstract void setRequestHeader(String paramString1, String paramString2);
  
  public abstract void setResponseParameters(HttpParameters paramHttpParameters);
}

/* Location:
 * Qualified Name:     oauth.signpost.OAuthProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */