package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public class HttpMkCol
  extends HttpEntityEnclosingRequestBase
{
  public static final String METHOD_NAME = "MKCOL";
  
  public HttpMkCol(String paramString)
  {
    this(URI.create(paramString));
  }
  
  public HttpMkCol(URI paramURI)
  {
    setURI(paramURI);
    setHeader("Content-Type", "text/xml; charset=" + "UTF-8".toLowerCase());
  }
  
  public String getMethod()
  {
    return "MKCOL";
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.methods.HttpMkCol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */