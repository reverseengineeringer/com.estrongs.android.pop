package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public class HttpLock
  extends HttpEntityEnclosingRequestBase
{
  public static final String METHOD_NAME = "LOCK";
  
  public HttpLock(String paramString)
  {
    this(URI.create(paramString));
  }
  
  public HttpLock(URI paramURI)
  {
    setURI(paramURI);
    setHeader("Content-Type", "text/xml; charset=" + "UTF-8".toLowerCase());
  }
  
  public String getMethod()
  {
    return "LOCK";
  }
  
  public void setDepth(String paramString)
  {
    setHeader("Depth", paramString);
  }
  
  public void setInfinite()
  {
    setHeader("Timeout", "Infinite");
  }
  
  public void setTimeout(int paramInt)
  {
    setHeader("Timeout", "Second-" + paramInt);
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.methods.HttpLock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */