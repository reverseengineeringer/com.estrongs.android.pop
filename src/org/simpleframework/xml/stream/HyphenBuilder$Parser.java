package org.simpleframework.xml.stream;

class HyphenBuilder$Parser
  extends Splitter
{
  private HyphenBuilder$Parser(HyphenBuilder paramHyphenBuilder, String paramString)
  {
    super(paramString);
  }
  
  protected void commit(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    builder.append(paramArrayOfChar, paramInt1, paramInt2);
    if (paramInt1 + paramInt2 < count) {
      builder.append('-');
    }
  }
  
  protected void parse(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    paramArrayOfChar[paramInt1] = toLower(paramArrayOfChar[paramInt1]);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.HyphenBuilder.Parser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */