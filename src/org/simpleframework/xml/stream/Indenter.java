package org.simpleframework.xml.stream;

class Indenter
{
  private Indenter.Cache cache;
  private int count;
  private int indent;
  private int index;
  
  public Indenter()
  {
    this(new Format());
  }
  
  public Indenter(Format paramFormat)
  {
    this(paramFormat, 16);
  }
  
  private Indenter(Format paramFormat, int paramInt)
  {
    indent = paramFormat.getIndent();
    cache = new Indenter.Cache(this, paramInt);
  }
  
  private String create()
  {
    char[] arrayOfChar = new char[count + 1];
    if (count > 0)
    {
      arrayOfChar[0] = '\n';
      int i = 1;
      for (;;)
      {
        if (i > count) {
          return new String(arrayOfChar);
        }
        arrayOfChar[i] = ' ';
        i += 1;
      }
    }
    return "\n";
  }
  
  private String indent(int paramInt)
  {
    if (indent > 0)
    {
      String str2 = cache.get(paramInt);
      String str1 = str2;
      if (str2 == null)
      {
        str1 = create();
        cache.set(paramInt, str1);
      }
      if (cache.size() > 0) {
        return str1;
      }
    }
    return "";
  }
  
  public String pop()
  {
    int i = index - 1;
    index = i;
    String str = indent(i);
    if (indent > 0) {
      count -= indent;
    }
    return str;
  }
  
  public String push()
  {
    int i = index;
    index = (i + 1);
    String str = indent(i);
    if (indent > 0) {
      count += indent;
    }
    return str;
  }
  
  public String top()
  {
    return indent(index);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Indenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */