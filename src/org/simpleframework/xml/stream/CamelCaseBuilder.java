package org.simpleframework.xml.stream;

class CamelCaseBuilder
  implements Style
{
  private final boolean attribute;
  private final boolean element;
  
  public CamelCaseBuilder(boolean paramBoolean1, boolean paramBoolean2)
  {
    attribute = paramBoolean2;
    element = paramBoolean1;
  }
  
  public String getAttribute(String paramString)
  {
    String str = null;
    if (paramString != null) {
      str = new CamelCaseBuilder.Attribute(this, paramString, null, null).process();
    }
    return str;
  }
  
  public String getElement(String paramString)
  {
    String str = null;
    if (paramString != null) {
      str = new CamelCaseBuilder.Element(this, paramString, null).process();
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.CamelCaseBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */