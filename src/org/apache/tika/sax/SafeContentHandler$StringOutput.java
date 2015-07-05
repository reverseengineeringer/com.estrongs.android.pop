package org.apache.tika.sax;

class SafeContentHandler$StringOutput
  implements SafeContentHandler.Output
{
  private final StringBuilder builder = new StringBuilder();
  
  public String toString()
  {
    return builder.toString();
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    builder.append(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.sax.SafeContentHandler.StringOutput
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */