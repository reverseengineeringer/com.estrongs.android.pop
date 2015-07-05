package org.simpleframework.xml.stream;

class CamelCaseBuilder$Attribute
  extends Splitter
{
  private boolean capital;
  
  private CamelCaseBuilder$Attribute(CamelCaseBuilder paramCamelCaseBuilder, String paramString)
  {
    super(paramString);
  }
  
  protected void commit(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    builder.append(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  protected void parse(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if ((CamelCaseBuilder.access$0(this$0)) || (capital)) {
      paramArrayOfChar[paramInt1] = toUpper(paramArrayOfChar[paramInt1]);
    }
    capital = true;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.CamelCaseBuilder.Attribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */