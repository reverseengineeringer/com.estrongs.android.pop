package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public class HttpPropPatch
  extends HttpEntityEnclosingRequestBase
{
  public static final String METHOD_NAME = "PROPPATCH";
  
  public HttpPropPatch(String paramString)
  {
    this(URI.create(paramString));
  }
  
  public HttpPropPatch(URI paramURI)
  {
    setURI(paramURI);
    setHeader("Content-Type", "text/xml; charset=" + "UTF-8".toLowerCase());
  }
  
  public String getMethod()
  {
    return "PROPPATCH";
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.methods.HttpPropPatch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */