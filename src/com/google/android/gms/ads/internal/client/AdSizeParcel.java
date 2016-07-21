package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;

@me
public final class AdSizeParcel
  implements SafeParcelable
{
  public static final k a = new k();
  public final int b;
  public final String c;
  public final int d;
  public final int e;
  public final boolean f;
  public final int g;
  public final int h;
  public final AdSizeParcel[] i;
  public final boolean j;
  
  public AdSizeParcel()
  {
    this(3, "interstitial_mb", 0, 0, true, 0, 0, null, false);
  }
  
  AdSizeParcel(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean1, int paramInt4, int paramInt5, AdSizeParcel[] paramArrayOfAdSizeParcel, boolean paramBoolean2)
  {
    b = paramInt1;
    c = paramString;
    d = paramInt2;
    e = paramInt3;
    f = paramBoolean1;
    g = paramInt4;
    h = paramInt5;
    i = paramArrayOfAdSizeParcel;
    j = paramBoolean2;
  }
  
  public AdSizeParcel(Context paramContext, g paramg)
  {
    this(paramContext, new g[] { paramg });
  }
  
  public AdSizeParcel(Context paramContext, g[] paramArrayOfg)
  {
    g localg = paramArrayOfg[0];
    b = 3;
    f = false;
    g = localg.b();
    d = localg.a();
    int m;
    int n;
    label60:
    DisplayMetrics localDisplayMetrics;
    label111:
    int i1;
    int k;
    if (g == -1)
    {
      m = 1;
      if (d != -2) {
        break label279;
      }
      n = 1;
      localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      if (m == 0) {
        break label297;
      }
      if ((!m.a().c(paramContext)) || (!m.a().d(paramContext))) {
        break label285;
      }
      h = (a(localDisplayMetrics) - m.a().e(paramContext));
      double d1 = h / density;
      i1 = (int)d1;
      k = i1;
      if (d1 - (int)d1 >= 0.01D) {
        k = i1 + 1;
      }
      label150:
      if (n == 0) {
        break label322;
      }
      i1 = c(localDisplayMetrics);
      label162:
      e = m.a().a(localDisplayMetrics, i1);
      if ((m == 0) && (n == 0)) {
        break label331;
      }
    }
    label279:
    label285:
    label297:
    label322:
    label331:
    for (c = (k + "x" + i1 + "_as");; c = localg.toString())
    {
      if (paramArrayOfg.length <= 1) {
        break label343;
      }
      i = new AdSizeParcel[paramArrayOfg.length];
      k = 0;
      while (k < paramArrayOfg.length)
      {
        i[k] = new AdSizeParcel(paramContext, paramArrayOfg[k]);
        k += 1;
      }
      m = 0;
      break;
      n = 0;
      break label60;
      h = a(localDisplayMetrics);
      break label111;
      k = g;
      h = m.a().a(localDisplayMetrics, g);
      break label150;
      i1 = d;
      break label162;
    }
    label343:
    i = null;
    j = false;
  }
  
  public AdSizeParcel(AdSizeParcel paramAdSizeParcel, AdSizeParcel[] paramArrayOfAdSizeParcel)
  {
    this(3, c, d, e, f, g, h, paramArrayOfAdSizeParcel, j);
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics)
  {
    return widthPixels;
  }
  
  public static AdSizeParcel a(Context paramContext)
  {
    return new AdSizeParcel(3, "320x50_mb", 0, 0, false, 0, 0, null, true);
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics)
  {
    return (int)(c(paramDisplayMetrics) * density);
  }
  
  private static int c(DisplayMetrics paramDisplayMetrics)
  {
    int k = (int)(heightPixels / density);
    if (k <= 400) {
      return 32;
    }
    if (k <= 720) {
      return 50;
    }
    return 90;
  }
  
  public g a()
  {
    return i.a(g, d, c);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.AdSizeParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */