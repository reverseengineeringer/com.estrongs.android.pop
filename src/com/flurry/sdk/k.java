package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;

public class k
{
  private static final String a = k.class.getSimpleName();
  private final kb<jk> b = new k.1(this);
  private final File c;
  private final File d;
  private String e;
  private int f;
  private am g;
  
  public k()
  {
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", b);
    c = js.a().c().getFileStreamPath(".flurryads.mediaassets");
    d = js.a().c().getFileStreamPath(".flurryads.mediaassets.tmp");
  }
  
  private void e()
  {
    SharedPreferences localSharedPreferences;
    try
    {
      boolean bool = TextUtils.isEmpty(e);
      if (bool) {}
      for (;;)
      {
        return;
        localSharedPreferences = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
        String str1 = localSharedPreferences.getString("flurry_last_media_asset_url", null);
        if ((!e.equals(str1)) || (!a())) {
          break;
        }
        kg.a(3, a, "Media player assets: download not necessary");
      }
      if (f >= 3) {}
    }
    finally {}
    for (String str2 = e + "android.zip";; str2 = "https://cdn.flurry.com/vast/videocontrols/v2/android.zip")
    {
      if (g != null) {
        g.e();
      }
      d.delete();
      kg.a(3, a, "Media player assets: attempting download from url: " + str2);
      g = new an(d);
      g.a(str2);
      g.a(30000);
      g.a(new k.3(this, localSharedPreferences, str2));
      g.d();
      break;
    }
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    e = paramString;
  }
  
  public boolean a()
  {
    return c.exists();
  }
  
  public File b()
  {
    if (a()) {
      return c;
    }
    return null;
  }
  
  public void c()
  {
    f = 0;
    js.a().b(new k.2(this));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */