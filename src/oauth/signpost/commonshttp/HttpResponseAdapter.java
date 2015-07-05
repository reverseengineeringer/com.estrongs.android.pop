package oauth.signpost.commonshttp;

import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;

public class HttpResponseAdapter
  implements oauth.signpost.http.HttpResponse
{
  private org.apache.http.HttpResponse response;
  
  public HttpResponseAdapter(org.apache.http.HttpResponse paramHttpResponse)
  {
    response = paramHttpResponse;
  }
  
  public InputStream getContent()
  {
    return response.getEntity().getContent();
  }
  
  public String getReasonPhrase()
  {
    return response.getStatusLine().getReasonPhrase();
  }
  
  public int getStatusCode()
  {
    return response.getStatusLine().getStatusCode();
  }
  
  public Object unwrap()
  {
    return response;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.commonshttp.HttpResponseAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */