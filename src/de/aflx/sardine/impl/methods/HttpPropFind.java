package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public class HttpPropFind
  extends HttpEntityEnclosingRequestBase
{
  public static final String METHOD_NAME = "PROPFIND";
  
  public HttpPropFind(String paramString)
  {
    this(URI.create(paramString));
  }
  
  public HttpPropFind(URI paramURI)
  {
    setDepth(String.valueOf("1"));
    setURI(paramURI);
    setHeader("Content-Type", "text/xml; charset=" + "UTF-8".toLowerCase());
  }
  
  public String getMethod()
  {
    return "PROPFIND";
  }
  
  public void setDepth(String paramString)
  {
    setHeader("Depth", paramString);
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.methods.HttpPropFind
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */