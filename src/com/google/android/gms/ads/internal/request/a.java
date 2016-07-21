package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.me;
import java.util.List;

@me
public final class a
{
  public final NativeAdOptionsParcel A;
  public final CapabilityParcel B;
  public final Bundle a;
  public final AdRequestParcel b;
  public final AdSizeParcel c;
  public final String d;
  public final ApplicationInfo e;
  public final PackageInfo f;
  public final String g;
  public final String h;
  public final Bundle i;
  public final VersionInfoParcel j;
  public final int k;
  public final List<String> l;
  public final List<String> m;
  public final Bundle n;
  public final boolean o;
  public final Messenger p;
  public final int q;
  public final int r;
  public final float s;
  public final String t;
  public final boolean u;
  public final int v;
  public final long w;
  public final String x;
  public final List<String> y;
  public final String z;
  
  public a(Bundle paramBundle1, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, VersionInfoParcel paramVersionInfoParcel, Bundle paramBundle2, List<String> paramList1, List<String> paramList2, Bundle paramBundle3, boolean paramBoolean1, Messenger paramMessenger, int paramInt1, int paramInt2, float paramFloat, String paramString4, boolean paramBoolean2, int paramInt3, long paramLong, String paramString5, List<String> paramList3, String paramString6, NativeAdOptionsParcel paramNativeAdOptionsParcel, CapabilityParcel paramCapabilityParcel)
  {
    a = paramBundle1;
    b = paramAdRequestParcel;
    c = paramAdSizeParcel;
    d = paramString1;
    e = paramApplicationInfo;
    f = paramPackageInfo;
    g = paramString2;
    h = paramString3;
    j = paramVersionInfoParcel;
    i = paramBundle2;
    o = paramBoolean1;
    p = paramMessenger;
    q = paramInt1;
    r = paramInt2;
    s = paramFloat;
    if ((paramList1 != null) && (paramList1.size() > 0))
    {
      k = 3;
      l = paramList1;
    }
    for (m = paramList2;; m = null)
    {
      n = paramBundle3;
      t = paramString4;
      u = paramBoolean2;
      v = paramInt3;
      w = paramLong;
      x = paramString5;
      y = paramList3;
      z = paramString6;
      A = paramNativeAdOptionsParcel;
      B = paramCapabilityParcel;
      return;
      k = 0;
      l = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */