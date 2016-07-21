package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.a.j;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.ads.formats.e;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import java.util.Date;
import java.util.List;
import java.util.Set;

@me
public final class iz
  implements j
{
  private final Date a;
  private final int b;
  private final Set<String> c;
  private final boolean d;
  private final Location e;
  private final int f;
  private final NativeAdOptionsParcel g;
  private final List<String> h;
  
  public iz(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean, int paramInt2, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
  {
    a = paramDate;
    b = paramInt1;
    c = paramSet;
    e = paramLocation;
    d = paramBoolean;
    f = paramInt2;
    g = paramNativeAdOptionsParcel;
    h = paramList;
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
  
  public c g()
  {
    if (g == null) {
      return null;
    }
    return new e().a(g.c).a(g.d).b(g.e).a();
  }
  
  public boolean h()
  {
    return (h != null) && (h.contains("2"));
  }
  
  public boolean i()
  {
    return (h != null) && (h.contains("1"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */