package org.simpleframework.xml.stream;

class CamelCaseBuilder$Element
  extends CamelCaseBuilder.Attribute
{
  private boolean capital;
  
  private CamelCaseBuilder$Element(CamelCaseBuilder paramCamelCaseBuilder, String paramString)
  {
    super(paramCamelCaseBuilder, paramString, null);
  }
  
  protected void parse(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if ((CamelCaseBuilder.access$1(this$0)) || (capital)) {
      paramArrayOfChar[paramInt1] = toUpper(paramArrayOfChar[paramInt1]);
    }
    capital = true;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.CamelCaseBuilder.Element
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */