package com.google.android.gms.ads.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.qa;

@me
public class l
  implements k
{
  private final nh a;
  private final qa b;
  
  public l(nh paramnh, qa paramqa)
  {
    a = paramnh;
    b = paramqa;
  }
  
  public void a(String paramString)
  {
    b.a("An auto-clicking creative is blocked");
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https");
    localBuilder.path("//pagead2.googlesyndication.com/pagead/gen_204");
    localBuilder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
    if (!TextUtils.isEmpty(paramString)) {
      localBuilder.appendQueryParameter("navigationURL", paramString);
    }
    if ((a != null) && (a.b != null) && (!TextUtils.isEmpty(a.b.p))) {
      localBuilder.appendQueryParameter("debugDialog", a.b.p);
    }
    ae.e().a(b.getContext(), b.l().c, localBuilder.toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */