package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.bk;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@Deprecated
public final class PlaceLocalization
  implements SafeParcelable
{
  public static final d a = new d();
  public final int b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final List<String> g;
  
  public PlaceLocalization(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList)
  {
    b = paramInt;
    c = paramString1;
    d = paramString2;
    e = paramString3;
    f = paramString4;
    g = paramList;
  }
  
  public int describeContents()
  {
    d locald = a;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof PlaceLocalization)) {
        return false;
      }
      paramObject = (PlaceLocalization)paramObject;
    } while ((bk.a(c, c)) && (bk.a(d, d)) && (bk.a(e, e)) && (bk.a(f, f)) && (bk.a(g, g)));
    return false;
  }
  
  public int hashCode()
  {
    return bk.a(new Object[] { c, d, e, f });
  }
  
  public String toString()
  {
    return bk.a(this).a("name", c).a("address", d).a("internationalPhoneNumber", e).a("regularOpenHours", f).a("attributions", g).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d locald = a;
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceLocalization
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */