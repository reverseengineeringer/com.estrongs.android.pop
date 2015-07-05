package com.baidu.mobstat;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

public class k
{
  private static final char[] a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
  private static final int[] b = new int['Ā'];
  
  static
  {
    Arrays.fill(b, -1);
    int j = a.length;
    int i = 0;
    while (i < j)
    {
      b[a[i]] = i;
      i += 1;
    }
    b[61] = 0;
  }
  
  public static final String a(String paramString)
  {
    try
    {
      paramString = new String(a(paramString.getBytes("UTF-8"), false));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      System.err.println("Base64 encoding error: " + paramString.getMessage());
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static final char[] a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int i1 = 0;
    if (paramArrayOfByte != null) {}
    for (int m = paramArrayOfByte.length; m == 0; m = 0) {
      return new char[0];
    }
    int i5 = m / 3 * 3;
    int k = (m - 1) / 3 + 1 << 2;
    if (paramBoolean) {}
    int i6;
    char[] arrayOfChar;
    int n;
    for (int j = (k - 1) / 76 << 1;; j = 0)
    {
      i6 = k + j;
      arrayOfChar = new char[i6];
      j = 0;
      k = 0;
      n = 0;
      while (n < i5)
      {
        int i2 = n + 1;
        n = paramArrayOfByte[n];
        int i3 = i2 + 1;
        int i4 = paramArrayOfByte[i2];
        i2 = i3 + 1;
        n = (i4 & 0xFF) << 8 | (n & 0xFF) << 16 | paramArrayOfByte[i3] & 0xFF;
        i3 = k + 1;
        arrayOfChar[k] = a[(n >>> 18 & 0x3F)];
        k = i3 + 1;
        arrayOfChar[i3] = a[(n >>> 12 & 0x3F)];
        i4 = k + 1;
        arrayOfChar[k] = a[(n >>> 6 & 0x3F)];
        i3 = i4 + 1;
        arrayOfChar[i4] = a[(n & 0x3F)];
        k = i3;
        n = i2;
        if (paramBoolean)
        {
          i4 = j + 1;
          j = i4;
          k = i3;
          n = i2;
          if (i4 == 19)
          {
            j = i4;
            k = i3;
            n = i2;
            if (i3 < i6 - 2)
            {
              j = i3 + 1;
              arrayOfChar[i3] = '\r';
              arrayOfChar[j] = '\n';
              k = j + 1;
              j = 0;
              n = i2;
            }
          }
        }
      }
    }
    k = m - i5;
    if (k > 0)
    {
      n = paramArrayOfByte[i5];
      j = i1;
      if (k == 2) {
        j = (paramArrayOfByte[(m - 1)] & 0xFF) << 2;
      }
      j |= (n & 0xFF) << 10;
      arrayOfChar[(i6 - 4)] = a[(j >> 12)];
      arrayOfChar[(i6 - 3)] = a[(j >>> 6 & 0x3F)];
      if (k != 2) {
        break label448;
      }
    }
    label448:
    for (int i = a[(j & 0x3F)];; i = 61)
    {
      arrayOfChar[(i6 - 2)] = i;
      arrayOfChar[(i6 - 1)] = '=';
      return arrayOfChar;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */