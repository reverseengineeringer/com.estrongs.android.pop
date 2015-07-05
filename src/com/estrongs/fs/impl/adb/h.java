package com.estrongs.fs.impl.adb;

public class h
{
  public static String a(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    if (j == 0) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer((int)Math.ceil(j / 3.0D) * 4);
    int k = j % 3;
    int i = 0;
    while (i < j - k)
    {
      int i1 = i + 1;
      int m = paramArrayOfByte[i];
      int n = i1 + 1;
      i1 = paramArrayOfByte[i1];
      i = n + 1;
      m = (i1 & 0xFF) << 8 | (m & 0xFF) << 16 | paramArrayOfByte[n] & 0xFF;
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m >>> 18));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m >>> 12 & 0x3F));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m >>> 6 & 0x3F));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m & 0x3F));
    }
    if (k == 0) {
      return localStringBuffer.toString();
    }
    if (k == 1)
    {
      i = (paramArrayOfByte[i] & 0xFF) << 4;
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i >>> 6));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i & 0x3F));
      localStringBuffer.append("==");
      return localStringBuffer.toString();
    }
    i = ((paramArrayOfByte[i] & 0xFF) << 8 | paramArrayOfByte[(i + 1)] & 0xFF) << 2;
    localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i >>> 12));
    localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i >>> 6 & 0x3F));
    localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i & 0x3F));
    localStringBuffer.append("=");
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.adb.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */