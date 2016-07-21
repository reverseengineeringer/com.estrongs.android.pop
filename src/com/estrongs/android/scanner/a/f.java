package com.estrongs.android.scanner.a;

import java.util.List;

public class f
  extends e
{
  private long a;
  private final List<d> b;
  
  public f()
  {
    a = -1L;
    b = null;
  }
  
  public f(int paramInt, long paramLong, String paramString, List<d> paramList)
  {
    super(paramInt, paramString);
    a = paramLong;
    b = paramList;
  }
  
  public final long a()
  {
    return a;
  }
  
  public final void a(long paramLong)
  {
    a = paramLong;
  }
  
  public final List<d> b()
  {
    return b;
  }
  
  public String toString()
  {
    return "ScanItemInfo: " + d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */