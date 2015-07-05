package com.c.a;

public class e
{
  public static String a(long paramLong)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = Integer.toHexString((int)paramLong);
    if (paramLong > 4294967295L)
    {
      localStringBuffer.append(Integer.toHexString((int)(paramLong >> 32)));
      int i = str.length();
      while (i < 8)
      {
        localStringBuffer.append('0');
        i += 1;
      }
    }
    localStringBuffer.append(str);
    return localStringBuffer.toString();
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    int i = ((byte[])paramArrayOfByte).length;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, i);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.c.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */