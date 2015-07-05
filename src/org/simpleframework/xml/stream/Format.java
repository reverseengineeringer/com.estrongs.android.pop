package org.simpleframework.xml.stream;

public class Format
{
  private int indent;
  private String prolog;
  private Style style;
  
  public Format()
  {
    this(3);
  }
  
  public Format(int paramInt)
  {
    this(paramInt, null, null);
  }
  
  public Format(int paramInt, String paramString)
  {
    this(paramInt, paramString, null);
  }
  
  public Format(int paramInt, String paramString, Style paramStyle)
  {
    prolog = paramString;
    indent = paramInt;
    style = paramStyle;
  }
  
  public Format(int paramInt, Style paramStyle)
  {
    this(paramInt, null, paramStyle);
  }
  
  public Format(String paramString)
  {
    this(3, paramString);
  }
  
  public Format(Style paramStyle)
  {
    this(3, null, paramStyle);
  }
  
  public int getIndent()
  {
    return indent;
  }
  
  public String getProlog()
  {
    return prolog;
  }
  
  public Style getStyle()
  {
    return style;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Format
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */