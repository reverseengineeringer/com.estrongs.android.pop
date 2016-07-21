package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.h;

public final class bz
  extends bi
{
  private static final String b = bz.class.getSimpleName();
  private final String c;
  private final String d;
  private final boolean e;
  private final h f;
  private final a g;
  
  public bz(Context paramContext, s params, Bundle paramBundle)
  {
    super(paramContext, params);
    c = paramBundle.getString("com.flurry.gms.ads.MY_AD_UNIT_ID");
    d = paramBundle.getString("com.flurry.gms.ads.MYTEST_AD_DEVICE_ID");
    e = paramBundle.getBoolean("com.flurry.gms.ads.test");
    g = new bz.a(this, null);
    f = new h(c());
    f.a(c);
    f.a(g);
  }
  
  public void a()
  {
    f localf = new f();
    if (e)
    {
      kg.a(3, b, "GMS AdView set to Test Mode.");
      localf.b(d.a);
      if (!TextUtils.isEmpty(d)) {
        localf.b(d);
      }
    }
    f.a(localf.a());
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */