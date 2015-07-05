package oauth.signpost;

import java.io.IOException;
import java.util.Random;
import oauth.signpost.basic.UrlStringRequestAdapter;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.signature.AuthorizationHeaderSigningStrategy;
import oauth.signpost.signature.HmacSha1MessageSigner;
import oauth.signpost.signature.OAuthMessageSigner;
import oauth.signpost.signature.QueryStringSigningStrategy;
import oauth.signpost.signature.SigningStrategy;

public abstract class AbstractOAuthConsumer
  implements OAuthConsumer
{
  private static final long serialVersionUID = 1L;
  private HttpParameters additionalParameters;
  private String consumerKey;
  private String consumerSecret;
  private OAuthMessageSigner messageSigner;
  private HttpParameters requestParameters;
  private boolean sendEmptyTokens;
  private SigningStrategy signingStrategy;
  private String token;
  
  public AbstractOAuthConsumer(String paramString1, String paramString2)
  {
    consumerKey = paramString1;
    consumerSecret = paramString2;
    setMessageSigner(new HmacSha1MessageSigner());
    setSigningStrategy(new AuthorizationHeaderSigningStrategy());
  }
  
  protected void collectBodyParameters(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
  {
    String str = paramHttpRequest.getContentType();
    if ((str != null) && (str.startsWith("application/x-www-form-urlencoded"))) {
      paramHttpParameters.putAll(OAuth.decodeForm(paramHttpRequest.getMessagePayload()), true);
    }
  }
  
  protected void collectHeaderParameters(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
  {
    paramHttpParameters.putAll(OAuth.oauthHeaderToParamsMap(paramHttpRequest.getHeader("Authorization")), false);
  }
  
  protected void collectQueryParameters(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
  {
    paramHttpRequest = paramHttpRequest.getRequestUrl();
    int i = paramHttpRequest.indexOf('?');
    if (i >= 0) {
      paramHttpParameters.putAll(OAuth.decodeForm(paramHttpRequest.substring(i + 1)), true);
    }
  }
  
  protected void completeOAuthParameters(HttpParameters paramHttpParameters)
  {
    if (!paramHttpParameters.containsKey("oauth_consumer_key")) {
      paramHttpParameters.put("oauth_consumer_key", consumerKey, true);
    }
    if (!paramHttpParameters.containsKey("oauth_signature_method")) {
      paramHttpParameters.put("oauth_signature_method", messageSigner.getSignatureMethod(), true);
    }
    if (!paramHttpParameters.containsKey("oauth_timestamp")) {
      paramHttpParameters.put("oauth_timestamp", generateTimestamp(), true);
    }
    if (!paramHttpParameters.containsKey("oauth_nonce")) {
      paramHttpParameters.put("oauth_nonce", generateNonce(), true);
    }
    if (!paramHttpParameters.containsKey("oauth_version")) {
      paramHttpParameters.put("oauth_version", "1.0", true);
    }
    if ((!paramHttpParameters.containsKey("oauth_token")) && (((token != null) && (!token.equals(""))) || (sendEmptyTokens))) {
      paramHttpParameters.put("oauth_token", token, true);
    }
  }
  
  protected String generateNonce()
  {
    return Long.toString(new Random().nextLong());
  }
  
  protected String generateTimestamp()
  {
    return Long.toString(System.currentTimeMillis() / 1000L);
  }
  
  public String getConsumerKey()
  {
    return consumerKey;
  }
  
  public String getConsumerSecret()
  {
    return consumerSecret;
  }
  
  public HttpParameters getRequestParameters()
  {
    return requestParameters;
  }
  
  public String getToken()
  {
    return token;
  }
  
  public String getTokenSecret()
  {
    return messageSigner.getTokenSecret();
  }
  
  public void setAdditionalParameters(HttpParameters paramHttpParameters)
  {
    additionalParameters = paramHttpParameters;
  }
  
  public void setMessageSigner(OAuthMessageSigner paramOAuthMessageSigner)
  {
    messageSigner = paramOAuthMessageSigner;
    paramOAuthMessageSigner.setConsumerSecret(consumerSecret);
  }
  
  public void setSendEmptyTokens(boolean paramBoolean)
  {
    sendEmptyTokens = paramBoolean;
  }
  
  public void setSigningStrategy(SigningStrategy paramSigningStrategy)
  {
    signingStrategy = paramSigningStrategy;
  }
  
  public void setTokenWithSecret(String paramString1, String paramString2)
  {
    token = paramString1;
    messageSigner.setTokenSecret(paramString2);
  }
  
  public String sign(String paramString)
  {
    paramString = new UrlStringRequestAdapter(paramString);
    SigningStrategy localSigningStrategy = signingStrategy;
    signingStrategy = new QueryStringSigningStrategy();
    sign(paramString);
    signingStrategy = localSigningStrategy;
    return paramString.getRequestUrl();
  }
  
  public HttpRequest sign(Object paramObject)
  {
    return sign(wrap(paramObject));
  }
  
  public HttpRequest sign(HttpRequest paramHttpRequest)
  {
    if (consumerKey == null) {
      throw new OAuthExpectationFailedException("consumer key not set");
    }
    if (consumerSecret == null) {
      throw new OAuthExpectationFailedException("consumer secret not set");
    }
    requestParameters = new HttpParameters();
    try
    {
      if (additionalParameters != null) {
        requestParameters.putAll(additionalParameters, false);
      }
      collectHeaderParameters(paramHttpRequest, requestParameters);
      collectQueryParameters(paramHttpRequest, requestParameters);
      collectBodyParameters(paramHttpRequest, requestParameters);
      completeOAuthParameters(requestParameters);
      requestParameters.remove("oauth_signature");
      String str = messageSigner.sign(paramHttpRequest, requestParameters);
      OAuth.debugOut("signature", str);
      signingStrategy.writeSignature(str, paramHttpRequest, requestParameters);
      OAuth.debugOut("Auth header", paramHttpRequest.getHeader("Authorization"));
      OAuth.debugOut("Request URL", paramHttpRequest.getRequestUrl());
      return paramHttpRequest;
    }
    catch (IOException paramHttpRequest)
    {
      throw new OAuthCommunicationException(paramHttpRequest);
    }
  }
  
  protected abstract HttpRequest wrap(Object paramObject);
}

/* Location:
 * Qualified Name:     oauth.signpost.AbstractOAuthConsumer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */