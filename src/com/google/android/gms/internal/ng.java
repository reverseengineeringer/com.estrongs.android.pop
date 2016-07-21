package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@me
public class ng
{
  public final AdRequestParcel a;
  public final qa b;
  public final List<String> c;
  public final int d;
  public final List<String> e;
  public final List<String> f;
  public final int g;
  public final long h;
  public final String i;
  public final JSONObject j;
  public final boolean k;
  public final hs l;
  public final ii m;
  public final String n;
  public final hw o;
  public final hy p;
  public final long q;
  public final AdSizeParcel r;
  public final long s;
  public final long t;
  public final long u;
  public final String v;
  public final o w;
  public final String x;
  
  public ng(AdRequestParcel paramAdRequestParcel, qa paramqa, List<String> paramList1, int paramInt1, List<String> paramList2, List<String> paramList3, int paramInt2, long paramLong1, String paramString1, boolean paramBoolean, hs paramhs, ii paramii, String paramString2, hw paramhw, hy paramhy, long paramLong2, AdSizeParcel paramAdSizeParcel, long paramLong3, long paramLong4, long paramLong5, String paramString3, JSONObject paramJSONObject, o paramo, String paramString4)
  {
    a = paramAdRequestParcel;
    b = paramqa;
    if (paramList1 != null)
    {
      paramAdRequestParcel = Collections.unmodifiableList(paramList1);
      c = paramAdRequestParcel;
      d = paramInt1;
      if (paramList2 == null) {
        break label180;
      }
      paramAdRequestParcel = Collections.unmodifiableList(paramList2);
      label45:
      e = paramAdRequestParcel;
      if (paramList3 == null) {
        break label185;
      }
    }
    label180:
    label185:
    for (paramAdRequestParcel = Collections.unmodifiableList(paramList3);; paramAdRequestParcel = null)
    {
      f = paramAdRequestParcel;
      g = paramInt2;
      h = paramLong1;
      i = paramString1;
      k = paramBoolean;
      l = paramhs;
      m = paramii;
      n = paramString2;
      o = paramhw;
      p = paramhy;
      q = paramLong2;
      r = paramAdSizeParcel;
      s = paramLong3;
      t = paramLong4;
      u = paramLong5;
      v = paramString3;
      j = paramJSONObject;
      w = paramo;
      x = paramString4;
      return;
      paramAdRequestParcel = null;
      break;
      paramAdRequestParcel = null;
      break label45;
    }
  }
  
  public ng(nh paramnh, qa paramqa, hs paramhs, ii paramii, String paramString, hy paramhy, o paramo)
  {
    this(a.d, paramqa, b.e, e, b.g, b.k, b.m, b.l, a.j, b.i, paramhs, paramii, paramString, c, paramhy, b.j, d, b.h, f, g, b.p, h, paramo, a.y);
  }
  
  public boolean a()
  {
    if ((b == null) || (b.i() == null)) {
      return false;
    }
    return b.i().b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */