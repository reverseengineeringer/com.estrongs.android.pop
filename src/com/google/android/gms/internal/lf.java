package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.b;

@me
public class lf
  extends lc
{
  lf(Context paramContext, nh paramnh, qa paramqa, ll paramll)
  {
    super(paramContext, paramnh, paramqa, paramll);
  }
  
  protected void b(long paramLong)
  {
    Object localObject = d.h();
    int j;
    if (f) {
      j = c.getResources().getDisplayMetrics().widthPixels;
    }
    for (int i = c.getResources().getDisplayMetrics().heightPixels;; i = e)
    {
      localObject = new ld(this, d, j, i);
      oe.a.post(new lg(this, (ld)localObject));
      a(paramLong);
      if (!((ld)localObject).c()) {
        break;
      }
      b.a("Ad-Network indicated no fill with passback URL.");
      throw new zzfz.zza("AdNetwork sent passback url", 3);
      j = h;
    }
    if (!((ld)localObject).d()) {
      throw new zzfz.zza("AdNetwork timed out", 2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */