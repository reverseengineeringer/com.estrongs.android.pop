package jcifs.dcerpc;

public class UnicodeString
  extends rpc.unicode_string
{
  boolean zterm;
  
  public UnicodeString(String paramString, boolean paramBoolean)
  {
    zterm = paramBoolean;
    int j = paramString.length();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      short s = (short)((j + i) * 2);
      maximum_length = s;
      length = s;
      buffer = new short[i + j];
      i = 0;
      while (i < j)
      {
        buffer[i] = ((short)paramString.charAt(i));
        i += 1;
      }
    }
    if (paramBoolean) {
      buffer[i] = 0;
    }
  }
  
  public UnicodeString(rpc.unicode_string paramunicode_string, boolean paramBoolean)
  {
    length = length;
    maximum_length = maximum_length;
    buffer = buffer;
    zterm = paramBoolean;
  }
  
  public UnicodeString(boolean paramBoolean)
  {
    zterm = paramBoolean;
  }
  
  public String toString()
  {
    int j = length / 2;
    if (zterm) {}
    char[] arrayOfChar;
    for (int i = 1;; i = 0)
    {
      j -= i;
      arrayOfChar = new char[j];
      i = 0;
      while (i < j)
      {
        arrayOfChar[i] = ((char)buffer[i]);
        i += 1;
      }
    }
    return new String(arrayOfChar, 0, j);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.UnicodeString
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */