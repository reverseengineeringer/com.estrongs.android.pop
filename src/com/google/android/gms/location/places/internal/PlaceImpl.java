package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.bk;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class PlaceImpl
  implements SafeParcelable, com.google.android.gms.location.places.b
{
  public static final b a = new b();
  final int b;
  final boolean c;
  private final String d;
  private final Bundle e;
  @Deprecated
  private final PlaceLocalization f;
  private final LatLng g;
  private final float h;
  private final LatLngBounds i;
  private final String j;
  private final Uri k;
  private final boolean l;
  private final float m;
  private final int n;
  private final long o;
  private final List<Integer> p;
  private final List<Integer> q;
  private final String r;
  private final String s;
  private final String t;
  private final String u;
  private final List<String> v;
  private final Map<Integer, String> w;
  private final TimeZone x;
  private Locale y;
  private e z;
  
  PlaceImpl(int paramInt1, String paramString1, List<Integer> paramList1, List<Integer> paramList2, Bundle paramBundle, String paramString2, String paramString3, String paramString4, String paramString5, List<String> paramList, LatLng paramLatLng, float paramFloat1, LatLngBounds paramLatLngBounds, String paramString6, Uri paramUri, boolean paramBoolean1, float paramFloat2, int paramInt2, long paramLong, boolean paramBoolean2, PlaceLocalization paramPlaceLocalization)
  {
    b = paramInt1;
    d = paramString1;
    q = Collections.unmodifiableList(paramList1);
    p = paramList2;
    if (paramBundle != null)
    {
      e = paramBundle;
      r = paramString2;
      s = paramString3;
      t = paramString4;
      u = paramString5;
      if (paramList == null) {
        break label182;
      }
      label68:
      v = paramList;
      g = paramLatLng;
      h = paramFloat1;
      i = paramLatLngBounds;
      if (paramString6 == null) {
        break label190;
      }
    }
    for (;;)
    {
      j = paramString6;
      k = paramUri;
      l = paramBoolean1;
      m = paramFloat2;
      n = paramInt2;
      o = paramLong;
      w = Collections.unmodifiableMap(new HashMap());
      x = null;
      y = null;
      c = paramBoolean2;
      f = paramPlaceLocalization;
      return;
      paramBundle = new Bundle();
      break;
      label182:
      paramList = Collections.emptyList();
      break label68;
      label190:
      paramString6 = "UTC";
    }
  }
  
  private void a(String paramString)
  {
    if ((c) && (z != null)) {
      z.a(d, paramString);
    }
  }
  
  public String b()
  {
    a("getId");
    return d;
  }
  
  public List<Integer> c()
  {
    a("getPlaceTypes");
    return q;
  }
  
  public List<Integer> d()
  {
    a("getTypesDeprecated");
    return p;
  }
  
  public int describeContents()
  {
    b localb = a;
    return 0;
  }
  
  public String e()
  {
    a("getName");
    return r;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof PlaceImpl)) {
        return false;
      }
      paramObject = (PlaceImpl)paramObject;
    } while ((d.equals(d)) && (bk.a(y, y)) && (o == o));
    return false;
  }
  
  public String f()
  {
    a("getAddress");
    return s;
  }
  
  public LatLng g()
  {
    a("getLatLng");
    return g;
  }
  
  public float h()
  {
    a("getLevelNumber");
    return h;
  }
  
  public int hashCode()
  {
    return bk.a(new Object[] { d, y, Long.valueOf(o) });
  }
  
  public LatLngBounds i()
  {
    a("getViewport");
    return i;
  }
  
  public Uri j()
  {
    a("getWebsiteUri");
    return k;
  }
  
  public String k()
  {
    a("getPhoneNumber");
    return t;
  }
  
  public String l()
  {
    a("getRegularOpenHours");
    return u;
  }
  
  public List<String> m()
  {
    a("getAttributions");
    return v;
  }
  
  public boolean n()
  {
    a("isPermanentlyClosed");
    return l;
  }
  
  public float o()
  {
    a("getRating");
    return m;
  }
  
  public int p()
  {
    a("getPriceLevel");
    return n;
  }
  
  public long q()
  {
    return o;
  }
  
  public Bundle r()
  {
    return e;
  }
  
  public String s()
  {
    return j;
  }
  
  @Deprecated
  public PlaceLocalization t()
  {
    a("getLocalization");
    return f;
  }
  
  public String toString()
  {
    return bk.a(this).a("id", d).a("placeTypes", q).a("locale", y).a("name", r).a("address", s).a("phoneNumber", t).a("latlng", g).a("viewport", i).a("websiteUri", k).a("isPermanentlyClosed", Boolean.valueOf(l)).a("priceLevel", Integer.valueOf(n)).a("timestampSecs", Long.valueOf(o)).toString();
  }
  
  public com.google.android.gms.location.places.b u()
  {
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b localb = a;
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */