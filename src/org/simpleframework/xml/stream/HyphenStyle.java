package org.simpleframework.xml.stream;

public class HyphenStyle
  implements Style
{
  private final Builder builder = new Builder(style);
  private final Style style = new HyphenBuilder();
  
  public String getAttribute(String paramString)
  {
    return builder.getAttribute(paramString);
  }
  
  public String getElement(String paramString)
  {
    return builder.getElement(paramString);
  }
  
  public void setAttribute(String paramString1, String paramString2)
  {
    builder.setAttribute(paramString1, paramString2);
  }
  
  public void setElement(String paramString1, String paramString2)
  {
    builder.setElement(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.HyphenStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */