package com.dianxinos.library.b.c;

public class a
{
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static byte[] a(String paramString, int paramInt)
  {
    return a(paramString.getBytes(), paramInt);
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    c localc = new c(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (!localc.a(paramArrayOfByte, paramInt1, paramInt2, true)) {
      throw new IllegalArgumentException("bad base-64");
    }
    if (b == a.length) {
      return a;
    }
    paramArrayOfByte = new byte[b];
    System.arraycopy(a, 0, paramArrayOfByte, 0, b);
    return paramArrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */