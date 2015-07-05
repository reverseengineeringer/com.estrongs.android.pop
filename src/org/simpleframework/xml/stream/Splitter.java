package org.simpleframework.xml.stream;

abstract class Splitter
{
  protected StringBuilder builder = new StringBuilder();
  protected int count;
  protected int off;
  protected char[] text;
  
  public Splitter(String paramString)
  {
    text = paramString.toCharArray();
    count = text.length;
  }
  
  private boolean acronym()
  {
    boolean bool = false;
    int i = off;
    int j = 0;
    for (;;)
    {
      if (i >= count) {}
      while (!isUpper(text[i]))
      {
        if (j > 1)
        {
          int k = i;
          if (i < count)
          {
            k = i;
            if (isUpper(text[(i - 1)])) {
              k = i - 1;
            }
          }
          commit(text, off, k - off);
          off = k;
        }
        if (j > 1) {
          bool = true;
        }
        return bool;
      }
      j += 1;
      i += 1;
    }
  }
  
  private boolean isDigit(char paramChar)
  {
    return Character.isDigit(paramChar);
  }
  
  private boolean isLetter(char paramChar)
  {
    return Character.isLetter(paramChar);
  }
  
  private boolean isSpecial(char paramChar)
  {
    return !Character.isLetterOrDigit(paramChar);
  }
  
  private boolean isUpper(char paramChar)
  {
    return Character.isUpperCase(paramChar);
  }
  
  private boolean number()
  {
    boolean bool = false;
    int i = off;
    int j = 0;
    for (;;)
    {
      if (i >= count) {}
      while (!isDigit(text[i]))
      {
        if (j > 0) {
          commit(text, off, i - off);
        }
        off = i;
        if (j > 0) {
          bool = true;
        }
        return bool;
      }
      j += 1;
      i += 1;
    }
  }
  
  private void token()
  {
    int i = off;
    for (;;)
    {
      if (i >= count) {}
      char c;
      do
      {
        if (i > off)
        {
          parse(text, off, i - off);
          commit(text, off, i - off);
        }
        off = i;
        return;
        c = text[i];
      } while ((!isLetter(c)) || ((i > off) && (isUpper(c))));
      i += 1;
    }
  }
  
  protected abstract void commit(char[] paramArrayOfChar, int paramInt1, int paramInt2);
  
  protected abstract void parse(char[] paramArrayOfChar, int paramInt1, int paramInt2);
  
  public String process()
  {
    if (off >= count)
    {
      return builder.toString();
      label19:
      if (isSpecial(text[off])) {}
    }
    while (!acronym())
    {
      token();
      number();
      break;
      off += 1;
      if (off < count) {
        break label19;
      }
    }
  }
  
  protected char toLower(char paramChar)
  {
    return Character.toLowerCase(paramChar);
  }
  
  protected char toUpper(char paramChar)
  {
    return Character.toUpperCase(paramChar);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Splitter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */