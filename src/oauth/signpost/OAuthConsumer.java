package oauth.signpost;

import java.io.Serializable;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.signature.OAuthMessageSigner;
import oauth.signpost.signature.SigningStrategy;

public abstract interface OAuthConsumer
  extends Serializable
{
  public abstract String getConsumerKey();
  
  public abstract String getConsumerSecret();
  
  public abstract HttpParameters getRequestParameters();
  
  public abstract String getToken();
  
  public abstract String getTokenSecret();
  
  public abstract void setAdditionalParameters(HttpParameters paramHttpParameters);
  
  public abstract void setMessageSigner(OAuthMessageSigner paramOAuthMessageSigner);
  
  public abstract void setSendEmptyTokens(boolean paramBoolean);
  
  public abstract void setSigningStrategy(SigningStrategy paramSigningStrategy);
  
  public abstract void setTokenWithSecret(String paramString1, String paramString2);
  
  public abstract String sign(String paramString);
  
  public abstract HttpRequest sign(Object paramObject);
  
  public abstract HttpRequest sign(HttpRequest paramHttpRequest);
}

/* Location:
 * Qualified Name:     oauth.signpost.OAuthConsumer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */