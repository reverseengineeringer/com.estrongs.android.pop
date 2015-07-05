package oauth.signpost.basic;

import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import oauth.signpost.http.HttpRequest;

public class UrlStringRequestAdapter
  implements HttpRequest
{
  private String url;
  
  public UrlStringRequestAdapter(String paramString)
  {
    url = paramString;
  }
  
  public Map<String, String> getAllHeaders()
  {
    return Collections.emptyMap();
  }
  
  public String getContentType()
  {
    return null;
  }
  
  public String getHeader(String paramString)
  {
    return null;
  }
  
  public InputStream getMessagePayload()
  {
    return null;
  }
  
  public String getMethod()
  {
    return "GET";
  }
  
  public String getRequestUrl()
  {
    return url;
  }
  
  public void setHeader(String paramString1, String paramString2) {}
  
  public void setRequestUrl(String paramString)
  {
    url = paramString;
  }
  
  public Object unwrap()
  {
    return url;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.basic.UrlStringRequestAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */