package oauth.signpost.basic;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import oauth.signpost.http.HttpRequest;

public class HttpURLConnectionRequestAdapter
  implements HttpRequest
{
  protected HttpURLConnection connection;
  
  public HttpURLConnectionRequestAdapter(HttpURLConnection paramHttpURLConnection)
  {
    connection = paramHttpURLConnection;
  }
  
  public Map<String, String> getAllHeaders()
  {
    Map localMap = connection.getRequestProperties();
    HashMap localHashMap = new HashMap(localMap.size());
    Iterator localIterator = localMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      List localList = (List)localMap.get(str);
      if (!localList.isEmpty()) {
        localHashMap.put(str, localList.get(0));
      }
    }
    return localHashMap;
  }
  
  public String getContentType()
  {
    return connection.getRequestProperty("Content-Type");
  }
  
  public String getHeader(String paramString)
  {
    return connection.getRequestProperty(paramString);
  }
  
  public InputStream getMessagePayload()
  {
    return null;
  }
  
  public String getMethod()
  {
    return connection.getRequestMethod();
  }
  
  public String getRequestUrl()
  {
    return connection.getURL().toExternalForm();
  }
  
  public void setHeader(String paramString1, String paramString2)
  {
    connection.setRequestProperty(paramString1, paramString2);
  }
  
  public void setRequestUrl(String paramString) {}
  
  public HttpURLConnection unwrap()
  {
    return connection;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.basic.HttpURLConnectionRequestAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */