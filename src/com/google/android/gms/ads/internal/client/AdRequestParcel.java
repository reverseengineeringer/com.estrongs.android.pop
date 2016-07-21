package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.bk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;
import java.util.List;

@me
public final class AdRequestParcel
  implements SafeParcelable
{
  public static final i a = new i();
  public final int b;
  public final long c;
  public final Bundle d;
  public final int e;
  public final List<String> f;
  public final boolean g;
  public final int h;
  public final boolean i;
  public final String j;
  public final SearchAdRequestParcel k;
  public final Location l;
  public final String m;
  public final Bundle n;
  public final Bundle o;
  public final List<String> p;
  public final String q;
  public final String r;
  
  public AdRequestParcel(int paramInt1, long paramLong, Bundle paramBundle1, int paramInt2, List<String> paramList1, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, SearchAdRequestParcel paramSearchAdRequestParcel, Location paramLocation, String paramString2, Bundle paramBundle2, Bundle paramBundle3, List<String> paramList2, String paramString3, String paramString4)
  {
    b = paramInt1;
    c = paramLong;
    Bundle localBundle = paramBundle1;
    if (paramBundle1 == null) {
      localBundle = new Bundle();
    }
    d = localBundle;
    e = paramInt2;
    f = paramList1;
    g = paramBoolean1;
    h = paramInt3;
    i = paramBoolean2;
    j = paramString1;
    k = paramSearchAdRequestParcel;
    l = paramLocation;
    m = paramString2;
    n = paramBundle2;
    o = paramBundle3;
    p = paramList2;
    q = paramString3;
    r = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AdRequestParcel)) {}
    do
    {
      return false;
      paramObject = (AdRequestParcel)paramObject;
    } while ((b != b) || (c != c) || (!bk.a(d, d)) || (e != e) || (!bk.a(f, f)) || (g != g) || (h != h) || (i != i) || (!bk.a(j, j)) || (!bk.a(k, k)) || (!bk.a(l, l)) || (!bk.a(m, m)) || (!bk.a(n, n)) || (!bk.a(o, o)) || (!bk.a(p, p)) || (!bk.a(q, q)) || (!bk.a(r, r)));
    return true;
  }
  
  public int hashCode()
  {
    return bk.a(new Object[] { Integer.valueOf(b), Long.valueOf(c), d, Integer.valueOf(e), f, Boolean.valueOf(g), Integer.valueOf(h), Boolean.valueOf(i), j, k, l, m, n, o, p, q, r });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.AdRequestParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */