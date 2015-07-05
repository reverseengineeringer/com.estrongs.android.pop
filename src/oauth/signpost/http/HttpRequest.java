package oauth.signpost.http;

import java.io.InputStream;
import java.util.Map;

public abstract interface HttpRequest
{
  public abstract Map<String, String> getAllHeaders();
  
  public abstract String getContentType();
  
  public abstract String getHeader(String paramString);
  
  public abstract InputStream getMessagePayload();
  
  public abstract String getMethod();
  
  public abstract String getRequestUrl();
  
  public abstract void setHeader(String paramString1, String paramString2);
  
  public abstract void setRequestUrl(String paramString);
  
  public abstract Object unwrap();
}

/* Location:
 * Qualified Name:     oauth.signpost.http.HttpRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */