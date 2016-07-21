package com.flurry.sdk;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.File;

class k$3
  implements am.a
{
  k$3(k paramk, SharedPreferences paramSharedPreferences, String paramString) {}
  
  public void a(am paramam)
  {
    if ((paramam.a()) && (k.b(c).exists()))
    {
      k.c(c).delete();
      if (k.b(c).renameTo(k.c(c)))
      {
        kg.a(3, k.d(), "Media player assets: download successful");
        paramam = a.edit();
        paramam.putString("flurry_last_media_asset_url", b);
        paramam.apply();
      }
    }
    for (;;)
    {
      k.a(c, null);
      return;
      kg.a(3, k.d(), "Media player assets: couldn't rename tmp file (giving up)");
      continue;
      kg.a(3, k.d(), "Media player assets: download failed");
      if (jl.a().c()) {
        k.d(c);
      }
      js.a().a(new k.3.1(this), 10000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.k.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */