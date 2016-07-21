package com.dianxinos.library.b.c;

public class f
{
  static char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  private static int a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if ((paramChar >= 'a') && (paramChar <= 'f')) {
      return paramChar - 'a' + 10;
    }
    if ((paramChar >= 'A') && (paramChar <= 'F')) {
      return paramChar - 'A' + 10;
    }
    throw new RuntimeException("Not a hex symbol");
  }
  
  public static byte[] a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramString.length() % 2 != 0)) {
      throw new RuntimeException("Bad input: null pointer");
    }
    char[] arrayOfChar = paramString.toCharArray();
    if ((arrayOfChar == null) || (arrayOfChar.length % 2 == 1)) {
      throw new RuntimeException("Bad input: length == " + paramString.length());
    }
    int j = paramString.length() / 2;
    paramString = new byte[j];
    int i = 0;
    while (i < j)
    {
      int k = i << 1;
      int m = a(arrayOfChar[k]);
      paramString[i] = ((byte)(a(arrayOfChar[(k + 1)]) & 0xFF | (m & 0xFF) << 4));
      i += 1;
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */