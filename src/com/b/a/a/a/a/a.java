package com.b.a.a.a.a;

public class a
  extends b
{
  private static final char[] a = { '+' };
  private static final char[] b = "0123456789ABCDEF".toCharArray();
  private final boolean c;
  private final boolean[] d;
  
  public a(String paramString, boolean paramBoolean)
  {
    if (paramString.matches(".*[0-9A-Za-z].*")) {
      throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
    }
    if ((paramBoolean) && (paramString.contains(" "))) {
      throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
    }
    if (paramString.contains("%")) {
      throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
    }
    c = paramBoolean;
    d = b(paramString);
  }
  
  private static boolean[] b(String paramString)
  {
    int k = 0;
    paramString = paramString.toCharArray();
    int m = paramString.length;
    int i = 0;
    int j = 122;
    while (i < m)
    {
      j = Math.max(paramString[i], j);
      i += 1;
    }
    boolean[] arrayOfBoolean = new boolean[j + 1];
    i = 48;
    while (i <= 57)
    {
      arrayOfBoolean[i] = true;
      i += 1;
    }
    i = 65;
    while (i <= 90)
    {
      arrayOfBoolean[i] = true;
      i += 1;
    }
    i = 97;
    while (i <= 122)
    {
      arrayOfBoolean[i] = true;
      i += 1;
    }
    j = paramString.length;
    i = k;
    while (i < j)
    {
      arrayOfBoolean[paramString[i]] = true;
      i += 1;
    }
    return arrayOfBoolean;
  }
  
  protected int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      if (paramInt1 < paramInt2)
      {
        int i = paramCharSequence.charAt(paramInt1);
        if ((i < d.length) && (d[i] != 0)) {}
      }
      else
      {
        return paramInt1;
      }
      paramInt1 += 1;
    }
  }
  
  public String a(String paramString)
  {
    int j = paramString.length();
    int i = 0;
    for (;;)
    {
      String str = paramString;
      if (i < j)
      {
        int k = paramString.charAt(i);
        if ((k >= d.length) || (d[k] == 0)) {
          str = a(paramString, i);
        }
      }
      else
      {
        return str;
      }
      i += 1;
    }
  }
  
  protected char[] a(int paramInt)
  {
    if ((paramInt < d.length) && (d[paramInt] != 0)) {
      return null;
    }
    if ((paramInt == 32) && (c)) {
      return a;
    }
    int i;
    if (paramInt <= 127)
    {
      i = b[(paramInt & 0xF)];
      return new char[] { '%', b[(paramInt >>> 4)], i };
    }
    int j;
    int k;
    if (paramInt <= 2047)
    {
      i = b[(paramInt & 0xF)];
      paramInt >>>= 4;
      j = b[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      k = b[(paramInt & 0xF)];
      return new char[] { '%', b[(paramInt >>> 4 | 0xC)], k, '%', j, i };
    }
    int m;
    if (paramInt <= 65535)
    {
      i = b[(paramInt & 0xF)];
      paramInt >>>= 4;
      j = b[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      k = b[(paramInt & 0xF)];
      paramInt >>>= 4;
      m = b[(paramInt & 0x3 | 0x8)];
      return new char[] { '%', 'E', b[(paramInt >>> 2)], '%', m, k, '%', j, i };
    }
    if (paramInt <= 1114111)
    {
      i = b[(paramInt & 0xF)];
      paramInt >>>= 4;
      j = b[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      k = b[(paramInt & 0xF)];
      paramInt >>>= 4;
      m = b[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      int n = b[(paramInt & 0xF)];
      paramInt >>>= 4;
      int i1 = b[(paramInt & 0x3 | 0x8)];
      return new char[] { '%', 'F', b[(paramInt >>> 2 & 0x7)], '%', i1, n, '%', m, k, '%', j, i };
    }
    throw new IllegalArgumentException("Invalid unicode character value " + paramInt);
  }
}

/* Location:
 * Qualified Name:     com.b.a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */