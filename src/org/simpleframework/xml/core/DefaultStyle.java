package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.Style;

class DefaultStyle
  implements Style
{
  public String getAttribute(String paramString)
  {
    return paramString;
  }
  
  public String getElement(String paramString)
  {
    return paramString;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.DefaultStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */