package org.simpleframework.xml.stream;

public class CamelCaseStyle
  implements Style
{
  private final Builder builder;
  private final Style style;
  
  public CamelCaseStyle()
  {
    this(true, false);
  }
  
  public CamelCaseStyle(boolean paramBoolean)
  {
    this(paramBoolean, false);
  }
  
  public CamelCaseStyle(boolean paramBoolean1, boolean paramBoolean2)
  {
    style = new CamelCaseBuilder(paramBoolean1, paramBoolean2);
    builder = new Builder(style);
  }
  
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
 * Qualified Name:     org.simpleframework.xml.stream.CamelCaseStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */