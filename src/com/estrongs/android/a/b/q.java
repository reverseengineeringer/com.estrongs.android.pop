package com.estrongs.android.a.b;

public abstract class q
  implements n
{
  private final long a;
  
  public q(long paramLong)
  {
    a = paramLong;
  }
  
  public long d()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof q)) {
      return ((q)paramObject).e_().equals(e_());
    }
    return false;
  }
  
  public int hashCode()
  {
    return e_().hashCode();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */