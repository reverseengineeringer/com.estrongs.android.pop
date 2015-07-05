package org.simpleframework.xml.stream;

import java.io.Writer;

class OutputBuffer
{
  private StringBuilder text = new StringBuilder();
  
  public void append(char paramChar)
  {
    text.append(paramChar);
  }
  
  public void append(String paramString)
  {
    text.append(paramString);
  }
  
  public void append(String paramString, int paramInt1, int paramInt2)
  {
    text.append(paramString, paramInt1, paramInt2);
  }
  
  public void append(char[] paramArrayOfChar)
  {
    text.append(paramArrayOfChar, 0, paramArrayOfChar.length);
  }
  
  public void append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    text.append(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void clear()
  {
    text.setLength(0);
  }
  
  public void write(Writer paramWriter)
  {
    paramWriter.append(text);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */