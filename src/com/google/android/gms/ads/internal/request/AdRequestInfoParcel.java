package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;
import java.util.Collections;
import java.util.List;

@me
public final class AdRequestInfoParcel
  implements SafeParcelable
{
  public static final n a = new n();
  public final String A;
  public final List<String> B;
  public final String C;
  public final NativeAdOptionsParcel D;
  public final List<String> E;
  public final long F;
  public final CapabilityParcel G;
  public final int b;
  public final Bundle c;
  public final AdRequestParcel d;
  public final AdSizeParcel e;
  public final String f;
  public final ApplicationInfo g;
  public final PackageInfo h;
  public final String i;
  public final String j;
  public final String k;
  public final VersionInfoParcel l;
  public final Bundle m;
  public final int n;
  public final List<String> o;
  public final Bundle p;
  public final boolean q;
  public final Messenger r;
  public final int s;
  public final int t;
  public final float u;
  public final String v;
  public final boolean w;
  public final int x;
  public final String y;
  public final long z;
  
  AdRequestInfoParcel(int paramInt1, Bundle paramBundle1, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, VersionInfoParcel paramVersionInfoParcel, Bundle paramBundle2, int paramInt2, List<String> paramList1, Bundle paramBundle3, boolean paramBoolean1, Messenger paramMessenger, int paramInt3, int paramInt4, float paramFloat, String paramString5, boolean paramBoolean2, int paramInt5, String paramString6, long paramLong1, String paramString7, List<String> paramList2, String paramString8, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList3, long paramLong2, CapabilityParcel paramCapabilityParcel)
  {
    b = paramInt1;
    c = paramBundle1;
    d = paramAdRequestParcel;
    e = paramAdSizeParcel;
    f = paramString1;
    g = paramApplicationInfo;
    h = paramPackageInfo;
    i = paramString2;
    j = paramString3;
    k = paramString4;
    l = paramVersionInfoParcel;
    m = paramBundle2;
    n = paramInt2;
    o = paramList1;
    if (paramList3 == null)
    {
      paramBundle1 = Collections.emptyList();
      E = paramBundle1;
      p = paramBundle3;
      q = paramBoolean1;
      r = paramMessenger;
      s = paramInt3;
      t = paramInt4;
      u = paramFloat;
      v = paramString5;
      w = paramBoolean2;
      x = paramInt5;
      y = paramString6;
      z = paramLong1;
      A = paramString7;
      if (paramList2 != null) {
        break label219;
      }
    }
    label219:
    for (paramBundle1 = Collections.emptyList();; paramBundle1 = Collections.unmodifiableList(paramList2))
    {
      B = paramBundle1;
      C = paramString8;
      D = paramNativeAdOptionsParcel;
      F = paramLong2;
      G = paramCapabilityParcel;
      return;
      paramBundle1 = Collections.unmodifiableList(paramList3);
      break;
    }
  }
  
  public AdRequestInfoParcel(Bundle paramBundle1, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, VersionInfoParcel paramVersionInfoParcel, Bundle paramBundle2, int paramInt1, List<String> paramList1, List<String> paramList2, Bundle paramBundle3, boolean paramBoolean1, Messenger paramMessenger, int paramInt2, int paramInt3, float paramFloat, String paramString5, boolean paramBoolean2, int paramInt4, String paramString6, long paramLong1, String paramString7, List<String> paramList3, String paramString8, NativeAdOptionsParcel paramNativeAdOptionsParcel, long paramLong2, CapabilityParcel paramCapabilityParcel)
  {
    this(11, paramBundle1, paramAdRequestParcel, paramAdSizeParcel, paramString1, paramApplicationInfo, paramPackageInfo, paramString2, paramString3, paramString4, paramVersionInfoParcel, paramBundle2, paramInt1, paramList1, paramBundle3, paramBoolean1, paramMessenger, paramInt2, paramInt3, paramFloat, paramString5, paramBoolean2, paramInt4, paramString6, paramLong1, paramString7, paramList3, paramString8, paramNativeAdOptionsParcel, paramList2, paramLong2, paramCapabilityParcel);
  }
  
  public AdRequestInfoParcel(a parama, String paramString1, String paramString2, long paramLong)
  {
    this(a, b, c, d, e, f, paramString1, g, h, j, i, k, l, m, n, o, p, q, r, s, t, u, v, paramString2, w, x, y, z, A, paramLong, B);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    n.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.AdRequestInfoParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */