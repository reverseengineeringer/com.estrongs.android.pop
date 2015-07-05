package jcifs.util;

import java.io.PrintStream;

public class Hexdump
{
  public static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private static final String NL = System.getProperty("line.separator");
  private static final int NL_LENGTH = NL.length();
  private static final char[] SPACE_CHARS = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 };
  
  public static void hexdump(PrintStream paramPrintStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return;
    }
    int n = paramInt2 % 16;
    if (n == 0) {}
    char[] arrayOfChar1;
    char[] arrayOfChar2;
    int m;
    for (int i = paramInt2 / 16;; i = paramInt2 / 16 + 1)
    {
      arrayOfChar1 = new char[i * (NL_LENGTH + 74)];
      arrayOfChar2 = new char[16];
      k = 0;
      j = 0;
      label134:
      do
      {
        toHexChars(j, arrayOfChar1, k, 5);
        i = k + 5;
        k = i + 1;
        arrayOfChar1[i] = ':';
        i = j;
        j = k;
        if (i != paramInt2) {
          break;
        }
        m = 16 - n;
        System.arraycopy(SPACE_CHARS, 0, arrayOfChar1, j, m * 3);
        k = j + m * 3;
        System.arraycopy(SPACE_CHARS, 0, arrayOfChar2, n, m);
        j = k + 1;
        arrayOfChar1[k] = ' ';
        k = j + 1;
        arrayOfChar1[j] = ' ';
        j = k + 1;
        arrayOfChar1[k] = '|';
        System.arraycopy(arrayOfChar2, 0, arrayOfChar1, j, 16);
        j += 16;
        k = j + 1;
        arrayOfChar1[j] = '|';
        NL.getChars(0, NL_LENGTH, arrayOfChar1, k);
        k = NL_LENGTH + k;
        j = i;
      } while (i < paramInt2);
      paramPrintStream.println(arrayOfChar1);
      return;
    }
    int k = j + 1;
    arrayOfChar1[j] = ' ';
    int j = paramArrayOfByte[(paramInt1 + i)] & 0xFF;
    toHexChars(j, arrayOfChar1, k, 2);
    k += 2;
    if ((j < 0) || (Character.isISOControl((char)j))) {
      arrayOfChar2[(i % 16)] = '.';
    }
    for (;;)
    {
      m = i + 1;
      j = k;
      i = m;
      if (m % 16 != 0) {
        break;
      }
      i = m;
      break label134;
      arrayOfChar2[(i % 16)] = ((char)j);
    }
  }
  
  public static void toHexChars(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    while (paramInt3 > 0)
    {
      int i = paramInt2 + paramInt3 - 1;
      if (i < paramArrayOfChar.length) {
        paramArrayOfChar[i] = HEX_DIGITS[(paramInt1 & 0xF)];
      }
      i = paramInt1;
      if (paramInt1 != 0) {
        i = paramInt1 >>> 4;
      }
      paramInt3 -= 1;
      paramInt1 = i;
    }
  }
  
  public static void toHexChars(long paramLong, char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    while (paramInt2 > 0)
    {
      paramArrayOfChar[(paramInt1 + paramInt2 - 1)] = HEX_DIGITS[((int)(0xF & paramLong))];
      long l = paramLong;
      if (paramLong != 0L) {
        l = paramLong >>> 4;
      }
      paramInt2 -= 1;
      paramLong = l;
    }
  }
  
  public static String toHexString(int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    toHexChars(paramInt1, arrayOfChar, 0, paramInt2);
    return new String(arrayOfChar);
  }
  
  public static String toHexString(long paramLong, int paramInt)
  {
    char[] arrayOfChar = new char[paramInt];
    toHexChars(paramLong, arrayOfChar, 0, paramInt);
    return new String(arrayOfChar);
  }
  
  public static String toHexString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    char[] arrayOfChar = new char[paramInt2];
    if (paramInt2 % 2 == 0)
    {
      paramInt1 = paramInt2 / 2;
      paramInt2 = 0;
    }
    for (;;)
    {
      int j;
      if (paramInt2 < paramInt1)
      {
        j = i + 1;
        arrayOfChar[i] = HEX_DIGITS[(paramArrayOfByte[paramInt2] >> 4 & 0xF)];
        if (j != arrayOfChar.length) {}
      }
      else
      {
        return new String(arrayOfChar);
        paramInt1 = paramInt2 / 2 + 1;
        break;
      }
      i = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(paramArrayOfByte[paramInt2] & 0xF)];
      paramInt2 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.util.Hexdump
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */