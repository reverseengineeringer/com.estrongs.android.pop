package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpRequestBase;

public class HttpUnlock
  extends HttpRequestBase
{
  public static final String METHOD_NAME = "UNLOCK";
  
  public HttpUnlock(String paramString1, String paramString2)
  {
    this(URI.create(paramString1), paramString2);
  }
  
  public HttpUnlock(URI paramURI, String paramString)
  {
    setURI(paramURI);
    setHeader("Content-Type", "text/xml; charset=" + "UTF-8".toLowerCase());
    setHeader("Lock-Token", "<" + paramString + ">");
  }
  
  public String getMethod()
  {
    return "UNLOCK";
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.methods.HttpUnlock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */