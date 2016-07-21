package com.estrongs.android.a.b;

import com.estrongs.fs.h;
import java.util.Collections;
import java.util.List;

public class a
{
  private final boolean a;
  private final int b;
  private final int c;
  private final long d;
  private final List<h> e;
  
  public a()
  {
    a = false;
    c = 0;
    b = 0;
    d = 0L;
    e = Collections.emptyList();
  }
  
  public a(int paramInt1, int paramInt2, long paramLong)
  {
    a = true;
    c = paramInt1;
    b = paramInt2;
    d = paramLong;
    e = Collections.emptyList();
  }
  
  public a(long paramLong)
  {
    this(0, 0, paramLong);
  }
  
  public a(List<h> paramList, int paramInt1, int paramInt2, long paramLong)
  {
    a = true;
    c = paramInt1;
    b = paramInt2;
    d = paramLong;
    e = paramList;
  }
  
  public final int a()
  {
    return e.size();
  }
  
  public final long b()
  {
    return d;
  }
  
  public final List<h> c()
  {
    return e;
  }
  
  public final int d()
  {
    return b;
  }
  
  public String toString()
  {
    return "AnalysisResult [isReady=" + a + ", fileAmount=" + b + ", folderAmount=" + c + ", totalSize=" + d + ", collection=" + e + "]";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */