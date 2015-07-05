package oauth.signpost.commonshttp;

import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import oauth.signpost.http.HttpRequest;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpUriRequest;

public class HttpRequestAdapter
  implements HttpRequest
{
  private HttpEntity entity;
  private HttpUriRequest request;
  
  public HttpRequestAdapter(HttpUriRequest paramHttpUriRequest)
  {
    request = paramHttpUriRequest;
    if ((paramHttpUriRequest instanceof HttpEntityEnclosingRequest)) {
      entity = ((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity();
    }
  }
  
  public Map<String, String> getAllHeaders()
  {
    Header[] arrayOfHeader = request.getAllHeaders();
    HashMap localHashMap = new HashMap();
    int j = arrayOfHeader.length;
    int i = 0;
    while (i < j)
    {
      Header localHeader = arrayOfHeader[i];
      localHashMap.put(localHeader.getName(), localHeader.getValue());
      i += 1;
    }
    return localHashMap;
  }
  
  public String getContentType()
  {
    if (entity == null) {}
    Header localHeader;
    do
    {
      return null;
      localHeader = entity.getContentType();
    } while (localHeader == null);
    return localHeader.getValue();
  }
  
  public String getHeader(String paramString)
  {
    paramString = request.getFirstHeader(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.getValue();
  }
  
  public InputStream getMessagePayload()
  {
    if (entity == null) {
      return null;
    }
    return entity.getContent();
  }
  
  public String getMethod()
  {
    return request.getRequestLine().getMethod();
  }
  
  public String getRequestUrl()
  {
    return request.getURI().toString();
  }
  
  public void setHeader(String paramString1, String paramString2)
  {
    request.setHeader(paramString1, paramString2);
  }
  
  public void setRequestUrl(String paramString)
  {
    throw new RuntimeException(new UnsupportedOperationException());
  }
  
  public Object unwrap()
  {
    return request;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.commonshttp.HttpRequestAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */