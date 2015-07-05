package org.simpleframework.xml.transform;

import java.net.URL;

class URLTransform
  implements Transform<URL>
{
  public URL read(String paramString)
  {
    return new URL(paramString);
  }
  
  public String write(URL paramURL)
  {
    return paramURL.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.URLTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */