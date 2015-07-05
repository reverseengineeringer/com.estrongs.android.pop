package org.simpleframework.xml.stream;

class Builder
  implements Style
{
  private final Builder.Cache attributes = new Builder.Cache(this);
  private final Builder.Cache elements = new Builder.Cache(this);
  private final Style style;
  
  public Builder(Style paramStyle)
  {
    style = paramStyle;
  }
  
  public String getAttribute(String paramString)
  {
    Object localObject = (String)attributes.get(paramString);
    if (localObject != null) {}
    String str;
    do
    {
      return (String)localObject;
      str = style.getAttribute(paramString);
      localObject = str;
    } while (str == null);
    attributes.put(paramString, str);
    return str;
  }
  
  public String getElement(String paramString)
  {
    Object localObject = (String)elements.get(paramString);
    if (localObject != null) {}
    String str;
    do
    {
      return (String)localObject;
      str = style.getElement(paramString);
      localObject = str;
    } while (str == null);
    elements.put(paramString, str);
    return str;
  }
  
  public void setAttribute(String paramString1, String paramString2)
  {
    attributes.put(paramString1, paramString2);
  }
  
  public void setElement(String paramString1, String paramString2)
  {
    elements.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */