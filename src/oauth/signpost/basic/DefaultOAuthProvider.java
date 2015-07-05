package oauth.signpost.basic;

import java.net.HttpURLConnection;
import java.net.URL;
import oauth.signpost.AbstractOAuthProvider;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.http.HttpResponse;

public class DefaultOAuthProvider
  extends AbstractOAuthProvider
{
  private static final long serialVersionUID = 1L;
  
  public DefaultOAuthProvider(String paramString1, String paramString2, String paramString3)
  {
    super(paramString1, paramString2, paramString3);
  }
  
  protected void closeConnection(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse)
  {
    paramHttpRequest = (HttpURLConnection)paramHttpRequest.unwrap();
    if (paramHttpRequest != null) {
      paramHttpRequest.disconnect();
    }
  }
  
  protected HttpRequest createRequest(String paramString)
  {
    paramString = (HttpURLConnection)new URL(paramString).openConnection();
    paramString.setRequestMethod("POST");
    paramString.setAllowUserInteraction(false);
    paramString.setRequestProperty("Content-Length", "0");
    return new HttpURLConnectionRequestAdapter(paramString);
  }
  
  protected HttpResponse sendRequest(HttpRequest paramHttpRequest)
  {
    paramHttpRequest = (HttpURLConnection)paramHttpRequest.unwrap();
    paramHttpRequest.connect();
    return new HttpURLConnectionResponseAdapter(paramHttpRequest);
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.basic.DefaultOAuthProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */