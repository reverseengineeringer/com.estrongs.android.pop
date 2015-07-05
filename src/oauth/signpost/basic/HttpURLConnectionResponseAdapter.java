package oauth.signpost.basic;

import java.io.InputStream;
import java.net.HttpURLConnection;
import oauth.signpost.http.HttpResponse;

public class HttpURLConnectionResponseAdapter
  implements HttpResponse
{
  private HttpURLConnection connection;
  
  public HttpURLConnectionResponseAdapter(HttpURLConnection paramHttpURLConnection)
  {
    connection = paramHttpURLConnection;
  }
  
  public InputStream getContent()
  {
    return connection.getInputStream();
  }
  
  public String getReasonPhrase()
  {
    return connection.getResponseMessage();
  }
  
  public int getStatusCode()
  {
    return connection.getResponseCode();
  }
  
  public Object unwrap()
  {
    return connection;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.basic.HttpURLConnectionResponseAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */