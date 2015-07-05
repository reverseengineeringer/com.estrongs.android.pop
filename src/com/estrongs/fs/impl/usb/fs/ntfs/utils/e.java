package com.estrongs.fs.impl.usb.fs.ntfs.utils;

public class e
{
  public static String a(int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt2);
    b(localStringBuilder, paramInt1);
    return a(localStringBuilder, paramInt2);
  }
  
  private static String a(StringBuilder paramStringBuilder, int paramInt)
  {
    if (paramStringBuilder.length() > paramInt) {
      return paramStringBuilder.substring(paramStringBuilder.length() - paramInt);
    }
    while (paramStringBuilder.length() < paramInt) {
      paramStringBuilder.insert(0, '0');
    }
    return paramStringBuilder.toString();
  }
  
  private static void b(StringBuilder paramStringBuilder, int paramInt)
  {
    int i = paramInt & 0xF;
    paramInt >>>= 4;
    if (paramInt != 0) {
      b(paramStringBuilder, paramInt);
    }
    if (i < 10)
    {
      paramStringBuilder.append((char)(i + 48));
      return;
    }
    paramStringBuilder.append((char)(i + 65 - 10));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.utils.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */