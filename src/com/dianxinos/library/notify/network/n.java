package com.dianxinos.library.notify.network;

public abstract class n
{
  private static n a = null;
  
  public static n a()
  {
    try
    {
      if (a == null) {
        a = new o();
      }
      n localn = a;
      return localn;
    }
    finally {}
  }
  
  public void a(String paramString, k paramk)
  {
    a(paramString, paramk, 0L, -1L, 0);
  }
  
  public void a(String paramString, k paramk, long paramLong1, long paramLong2, int paramInt)
  {
    a(paramString, paramk, paramLong1, paramLong2, paramInt, 5, 3);
  }
  
  public abstract void a(String paramString, k paramk, long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3);
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */