package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.bk;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Set;

public final class NearbyAlertRequest
  implements SafeParcelable
{
  public static final j a = new j();
  private final int b;
  private final int c;
  private final int d;
  @Deprecated
  private final PlaceFilter e;
  private final NearbyAlertFilter f;
  private final boolean g;
  
  NearbyAlertRequest(int paramInt1, int paramInt2, int paramInt3, PlaceFilter paramPlaceFilter, NearbyAlertFilter paramNearbyAlertFilter, boolean paramBoolean)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
    g = paramBoolean;
    if (paramNearbyAlertFilter != null) {
      f = paramNearbyAlertFilter;
    }
    for (;;)
    {
      e = null;
      return;
      if (paramPlaceFilter != null)
      {
        if (a(paramPlaceFilter)) {
          f = NearbyAlertFilter.a(paramPlaceFilter.a(), paramPlaceFilter.b(), paramPlaceFilter.c());
        } else {
          f = null;
        }
      }
      else {
        f = null;
      }
    }
  }
  
  @Deprecated
  public static boolean a(PlaceFilter paramPlaceFilter)
  {
    return ((paramPlaceFilter.b() != null) && (!paramPlaceFilter.b().isEmpty())) || ((paramPlaceFilter.a() != null) && (!paramPlaceFilter.a().isEmpty())) || ((paramPlaceFilter.c() != null) && (!paramPlaceFilter.c().isEmpty()));
  }
  
  public int a()
  {
    return b;
  }
  
  public int b()
  {
    return c;
  }
  
  public int c()
  {
    return d;
  }
  
  @Deprecated
  public PlaceFilter d()
  {
    return e;
  }
  
  public int describeContents()
  {
    j localj = a;
    return 0;
  }
  
  public NearbyAlertFilter e()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof NearbyAlertRequest)) {
        return false;
      }
      paramObject = (NearbyAlertRequest)paramObject;
    } while ((c == c) && (d == d) && (bk.a(e, e)) && (bk.a(f, f)));
    return false;
  }
  
  public boolean f()
  {
    return g;
  }
  
  public int hashCode()
  {
    return bk.a(new Object[] { Integer.valueOf(c), Integer.valueOf(d) });
  }
  
  public String toString()
  {
    return bk.a(this).a("transitionTypes", Integer.valueOf(c)).a("loiteringTimeMillis", Integer.valueOf(d)).a("nearbyAlertFilter", f).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j localj = a;
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.NearbyAlertRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */