package org.simpleframework.xml.stream;

class HyphenBuilder
  implements Style
{
  public String getAttribute(String paramString)
  {
    String str = null;
    if (paramString != null) {
      str = new HyphenBuilder.Parser(this, paramString, null).process();
    }
    return str;
  }
  
  public String getElement(String paramString)
  {
    String str = null;
    if (paramString != null) {
      str = new HyphenBuilder.Parser(this, paramString, null).process();
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.HyphenBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */