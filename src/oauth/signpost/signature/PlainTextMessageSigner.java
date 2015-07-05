package oauth.signpost.signature;

import oauth.signpost.OAuth;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

public class PlainTextMessageSigner
  extends OAuthMessageSigner
{
  public String getSignatureMethod()
  {
    return "PLAINTEXT";
  }
  
  public String sign(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
  {
    return OAuth.percentEncode(getConsumerSecret()) + '&' + OAuth.percentEncode(getTokenSecret());
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.signature.PlainTextMessageSigner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */