package org.simpleframework.xml.core;

class Template
{
  protected char[] buf;
  protected String cache;
  protected int count;
  
  public Template()
  {
    this(16);
  }
  
  public Template(int paramInt)
  {
    buf = new char[paramInt];
  }
  
  public void append(char paramChar)
  {
    ensureCapacity(count + 1);
    char[] arrayOfChar = buf;
    int i = count;
    count = (i + 1);
    arrayOfChar[i] = paramChar;
  }
  
  public void append(String paramString)
  {
    ensureCapacity(count + paramString.length());
    paramString.getChars(0, paramString.length(), buf, count);
    count += paramString.length();
  }
  
  public void append(String paramString, int paramInt1, int paramInt2)
  {
    ensureCapacity(count + paramInt2);
    paramString.getChars(paramInt1, paramInt2, buf, count);
    count += paramInt2;
  }
  
  public void append(Template paramTemplate)
  {
    append(buf, 0, count);
  }
  
  public void append(Template paramTemplate, int paramInt1, int paramInt2)
  {
    append(buf, paramInt1, paramInt2);
  }
  
  public void append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    ensureCapacity(count + paramInt2);
    System.arraycopy(paramArrayOfChar, paramInt1, buf, count, paramInt2);
    count += paramInt2;
  }
  
  public void clear()
  {
    cache = null;
    count = 0;
  }
  
  protected void ensureCapacity(int paramInt)
  {
    if (buf.length < paramInt)
    {
      char[] arrayOfChar = new char[Math.max(paramInt, buf.length * 2)];
      System.arraycopy(buf, 0, arrayOfChar, 0, count);
      buf = arrayOfChar;
    }
  }
  
  public int length()
  {
    return count;
  }
  
  public String toString()
  {
    return new String(buf, 0, count);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Template
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */