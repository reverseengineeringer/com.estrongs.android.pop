package org.apache.commons.io;

import java.io.Serializable;

public class ByteOrderMark
  implements Serializable
{
  public static final ByteOrderMark UTF_16BE = new ByteOrderMark("UTF-16BE", new int[] { 254, 255 });
  public static final ByteOrderMark UTF_16LE = new ByteOrderMark("UTF-16LE", new int[] { 255, 254 });
  public static final ByteOrderMark UTF_8 = new ByteOrderMark("UTF-8", new int[] { 239, 187, 191 });
  private static final long serialVersionUID = 1L;
  private final int[] bytes;
  private final String charsetName;
  
  public ByteOrderMark(String paramString, int... paramVarArgs)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      throw new IllegalArgumentException("No charsetName specified");
    }
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      throw new IllegalArgumentException("No bytes specified");
    }
    charsetName = paramString;
    bytes = new int[paramVarArgs.length];
    System.arraycopy(paramVarArgs, 0, bytes, 0, paramVarArgs.length);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ByteOrderMark)) {}
    do
    {
      return false;
      paramObject = (ByteOrderMark)paramObject;
    } while (bytes.length != ((ByteOrderMark)paramObject).length());
    int i = 0;
    for (;;)
    {
      if (i >= bytes.length) {
        break label58;
      }
      if (bytes[i] != ((ByteOrderMark)paramObject).get(i)) {
        break;
      }
      i += 1;
    }
    label58:
    return true;
  }
  
  public int get(int paramInt)
  {
    return bytes[paramInt];
  }
  
  public byte[] getBytes()
  {
    byte[] arrayOfByte = new byte[bytes.length];
    int i = 0;
    while (i < bytes.length)
    {
      arrayOfByte[i] = ((byte)bytes[i]);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public String getCharsetName()
  {
    return charsetName;
  }
  
  public int hashCode()
  {
    int j = getClass().hashCode();
    int[] arrayOfInt = bytes;
    int k = arrayOfInt.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfInt[i];
      i += 1;
    }
    return j;
  }
  
  public int length()
  {
    return bytes.length;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName());
    localStringBuilder.append('[');
    localStringBuilder.append(charsetName);
    localStringBuilder.append(": ");
    int i = 0;
    while (i < bytes.length)
    {
      if (i > 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append("0x");
      localStringBuilder.append(Integer.toHexString(bytes[i] & 0xFF).toUpperCase());
      i += 1;
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.ByteOrderMark
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */