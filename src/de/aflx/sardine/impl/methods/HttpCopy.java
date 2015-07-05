package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpRequestBase;

public class HttpCopy
  extends HttpRequestBase
{
  public static final String METHOD_NAME = "COPY";
  
  public HttpCopy(String paramString1, String paramString2)
  {
    this(URI.create(paramString1), URI.create(paramString2));
  }
  
  public HttpCopy(URI paramURI1, URI paramURI2)
  {
    setHeader("Destination", paramURI2.toString());
    setHeader("Overwrite", "T");
    setURI(paramURI1);
  }
  
  public String getMethod()
  {
    return "COPY";
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.methods.HttpCopy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */