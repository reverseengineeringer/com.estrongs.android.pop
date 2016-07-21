package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.a.a;
import java.util.Date;
import java.util.Set;

@me
public final class iu
  implements a
{
  private final Date a;
  private final int b;
  private final Set<String> c;
  private final boolean d;
  private final Location e;
  private final int f;
  
  public iu(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean, int paramInt2)
  {
    a = paramDate;
    b = paramInt1;
    c = paramSet;
    e = paramLocation;
    d = paramBoolean;
    f = paramInt2;
  }
  
  public Date a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public Set<String> c()
  {
    return c;
  }
  
  public Location d()
  {
    return e;
  }
  
  public int e()
  {
    return f;
  }
  
  public boolean f()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */