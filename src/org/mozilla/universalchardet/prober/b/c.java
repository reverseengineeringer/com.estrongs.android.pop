package org.mozilla.universalchardet.prober.b;

public class c
{
  private int a;
  private int b;
  private int c;
  private int d;
  private int[] e;
  
  public c(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
    e = paramArrayOfInt;
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    return paramInt2 << 16 | paramInt1;
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt2 << 8 | paramInt1, paramInt4 << 8 | paramInt3);
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    return a(paramInt2 << 4 | paramInt1, paramInt4 << 4 | paramInt3, paramInt6 << 4 | paramInt5, paramInt8 << 4 | paramInt7);
  }
  
  public int a(int paramInt)
  {
    return e[(paramInt >> a)] >> ((b & paramInt) << c) & d;
  }
}

/* Location:
 * Qualified Name:     org.mozilla.universalchardet.prober.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */