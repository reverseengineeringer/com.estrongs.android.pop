package oauth.signpost.signature;

import oauth.signpost.OAuth;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

public class QueryStringSigningStrategy
  implements SigningStrategy
{
  private static final long serialVersionUID = 1L;
  
  public String writeSignature(String paramString, HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
  {
    paramString = new StringBuilder(OAuth.addQueryParameters(paramHttpRequest.getRequestUrl(), new String[] { "oauth_signature", paramString }));
    if (paramHttpParameters.containsKey("oauth_token"))
    {
      paramString.append("&");
      paramString.append(paramHttpParameters.getAsQueryString("oauth_token"));
    }
    if (paramHttpParameters.containsKey("oauth_callback"))
    {
      paramString.append("&");
      paramString.append(paramHttpParameters.getAsQueryString("oauth_callback"));
    }
    if (paramHttpParameters.containsKey("oauth_verifier"))
    {
      paramString.append("&");
      paramString.append(paramHttpParameters.getAsQueryString("oauth_verifier"));
    }
    paramString.append("&");
    paramString.append(paramHttpParameters.getAsQueryString("oauth_consumer_key"));
    paramString.append("&");
    paramString.append(paramHttpParameters.getAsQueryString("oauth_version"));
    paramString.append("&");
    paramString.append(paramHttpParameters.getAsQueryString("oauth_signature_method"));
    paramString.append("&");
    paramString.append(paramHttpParameters.getAsQueryString("oauth_timestamp"));
    paramString.append("&");
    paramString.append(paramHttpParameters.getAsQueryString("oauth_nonce"));
    paramString = paramString.toString();
    paramHttpRequest.setRequestUrl(paramString);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.signature.QueryStringSigningStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */