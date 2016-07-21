package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.r;
import com.google.android.gms.ads.internal.client.u;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.sz;

@me
public class s
  extends y
{
  private r a;
  private em b;
  private ep c;
  private sz<String, es> d;
  private sz<String, ev> e;
  private NativeAdOptionsParcel f;
  private final Context g;
  private final if h;
  private final String i;
  private final VersionInfoParcel j;
  
  public s(Context paramContext, String paramString, if paramif, VersionInfoParcel paramVersionInfoParcel)
  {
    g = paramContext;
    i = paramString;
    h = paramif;
    j = paramVersionInfoParcel;
    e = new sz();
    d = new sz();
  }
  
  public u a()
  {
    return new q(g, i, h, j, a, b, c, e, d, f);
  }
  
  public void a(r paramr)
  {
    a = paramr;
  }
  
  public void a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    f = paramNativeAdOptionsParcel;
  }
  
  public void a(em paramem)
  {
    b = paramem;
  }
  
  public void a(ep paramep)
  {
    c = paramep;
  }
  
  public void a(String paramString, ev paramev, es parames)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
    }
    e.put(paramString, paramev);
    d.put(paramString, parames);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */