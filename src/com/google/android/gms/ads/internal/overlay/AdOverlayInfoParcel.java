package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fy;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.qa;

@me
public final class AdOverlayInfoParcel
  implements SafeParcelable
{
  public static final o a = new o();
  public final int b;
  public final AdLauncherIntentInfoParcel c;
  public final a d;
  public final p e;
  public final qa f;
  public final fd g;
  public final String h;
  public final boolean i;
  public final String j;
  public final w k;
  public final int l;
  public final int m;
  public final String n;
  public final VersionInfoParcel o;
  public final fy p;
  public final String q;
  public final InterstitialAdParameterParcel r;
  
  AdOverlayInfoParcel(int paramInt1, AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4, String paramString1, boolean paramBoolean, String paramString2, IBinder paramIBinder5, int paramInt2, int paramInt3, String paramString3, VersionInfoParcel paramVersionInfoParcel, IBinder paramIBinder6, String paramString4, InterstitialAdParameterParcel paramInterstitialAdParameterParcel)
  {
    b = paramInt1;
    c = paramAdLauncherIntentInfoParcel;
    d = ((a)h.a(f.a(paramIBinder1)));
    e = ((p)h.a(f.a(paramIBinder2)));
    f = ((qa)h.a(f.a(paramIBinder3)));
    g = ((fd)h.a(f.a(paramIBinder4)));
    h = paramString1;
    i = paramBoolean;
    j = paramString2;
    k = ((w)h.a(f.a(paramIBinder5)));
    l = paramInt2;
    m = paramInt3;
    n = paramString3;
    o = paramVersionInfoParcel;
    p = ((fy)h.a(f.a(paramIBinder6)));
    q = paramString4;
    r = paramInterstitialAdParameterParcel;
  }
  
  public AdOverlayInfoParcel(a parama, p paramp, w paramw, qa paramqa, int paramInt, VersionInfoParcel paramVersionInfoParcel, String paramString, InterstitialAdParameterParcel paramInterstitialAdParameterParcel)
  {
    b = 4;
    c = null;
    d = parama;
    e = paramp;
    f = paramqa;
    g = null;
    h = null;
    i = false;
    j = null;
    k = paramw;
    l = paramInt;
    m = 1;
    n = null;
    o = paramVersionInfoParcel;
    p = null;
    q = paramString;
    r = paramInterstitialAdParameterParcel;
  }
  
  public AdOverlayInfoParcel(a parama, p paramp, w paramw, qa paramqa, boolean paramBoolean, int paramInt, VersionInfoParcel paramVersionInfoParcel)
  {
    b = 4;
    c = null;
    d = parama;
    e = paramp;
    f = paramqa;
    g = null;
    h = null;
    i = paramBoolean;
    j = null;
    k = paramw;
    l = paramInt;
    m = 2;
    n = null;
    o = paramVersionInfoParcel;
    p = null;
    q = null;
    r = null;
  }
  
  public AdOverlayInfoParcel(a parama, p paramp, fd paramfd, w paramw, qa paramqa, boolean paramBoolean, int paramInt, String paramString, VersionInfoParcel paramVersionInfoParcel, fy paramfy)
  {
    b = 4;
    c = null;
    d = parama;
    e = paramp;
    f = paramqa;
    g = paramfd;
    h = null;
    i = paramBoolean;
    j = null;
    k = paramw;
    l = paramInt;
    m = 3;
    n = paramString;
    o = paramVersionInfoParcel;
    p = paramfy;
    q = null;
    r = null;
  }
  
  public AdOverlayInfoParcel(a parama, p paramp, fd paramfd, w paramw, qa paramqa, boolean paramBoolean, int paramInt, String paramString1, String paramString2, VersionInfoParcel paramVersionInfoParcel, fy paramfy)
  {
    b = 4;
    c = null;
    d = parama;
    e = paramp;
    f = paramqa;
    g = paramfd;
    h = paramString2;
    i = paramBoolean;
    j = paramString1;
    k = paramw;
    l = paramInt;
    m = 3;
    n = null;
    o = paramVersionInfoParcel;
    p = paramfy;
    q = null;
    r = null;
  }
  
  public AdOverlayInfoParcel(AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, a parama, p paramp, w paramw, VersionInfoParcel paramVersionInfoParcel)
  {
    b = 4;
    c = paramAdLauncherIntentInfoParcel;
    d = parama;
    e = paramp;
    f = null;
    g = null;
    h = null;
    i = false;
    j = null;
    k = paramw;
    l = -1;
    m = 4;
    n = null;
    o = paramVersionInfoParcel;
    p = null;
    q = null;
    r = null;
  }
  
  public static AdOverlayInfoParcel a(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      paramIntent.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
      paramIntent = (AdOverlayInfoParcel)paramIntent.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  public static void a(Intent paramIntent, AdOverlayInfoParcel paramAdOverlayInfoParcel)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", paramAdOverlayInfoParcel);
    paramIntent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", localBundle);
  }
  
  IBinder a()
  {
    return h.a(d).asBinder();
  }
  
  IBinder b()
  {
    return h.a(e).asBinder();
  }
  
  IBinder c()
  {
    return h.a(f).asBinder();
  }
  
  IBinder d()
  {
    return h.a(g).asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  IBinder e()
  {
    return h.a(p).asBinder();
  }
  
  IBinder f()
  {
    return h.a(k).asBinder();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    o.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */