package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RelativeLayout.LayoutParams;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.g;

public final class bx
  extends AdNetworkView
{
  private static final String a = bx.class.getSimpleName();
  private final String b;
  private final String c;
  private final boolean d;
  private AdView e;
  private a f;
  
  public bx(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    super(paramContext, params, paramAdCreative);
    b = paramBundle.getString("com.flurry.gms.ads.MY_AD_UNIT_ID");
    c = paramBundle.getString("com.flurry.gms.ads.MYTEST_AD_DEVICE_ID");
    d = paramBundle.getBoolean("com.flurry.gms.ads.test");
    setFocusable(true);
  }
  
  private g a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 >= 728) && (paramInt2 >= 90)) {
      return g.d;
    }
    if ((paramInt1 >= 468) && (paramInt2 >= 60)) {
      return g.b;
    }
    if ((paramInt1 >= 320) && (paramInt2 >= 50)) {
      return g.a;
    }
    if ((paramInt1 >= 300) && (paramInt2 >= 250)) {
      return g.e;
    }
    kg.a(3, a, "Could not find GMS AdSize that matches size");
    return null;
  }
  
  private g a(Context paramContext, int paramInt1, int paramInt2)
  {
    int j = lr.i();
    int k = lr.h();
    int i;
    if (paramInt1 > 0)
    {
      i = paramInt1;
      if (paramInt1 <= k) {}
    }
    else
    {
      i = k;
    }
    if (paramInt2 > 0)
    {
      paramInt1 = paramInt2;
      if (paramInt2 <= j) {}
    }
    else
    {
      paramInt1 = j;
    }
    return a(i, paramInt1);
  }
  
  a getAdListener()
  {
    return f;
  }
  
  AdView getAdView()
  {
    return e;
  }
  
  public void initLayout()
  {
    kg.a(4, a, "GMS AdView initLayout.");
    Object localObject = getContext();
    int i = getAdCreative().getWidth();
    int j = getAdCreative().getHeight();
    g localg = a((Context)localObject, i, j);
    if (localg == null)
    {
      kg.a(6, a, "Could not find GMS AdSize that matches {width = " + i + ", height " + j + "}");
      return;
    }
    kg.a(3, a, "Determined GMS AdSize as " + localg + " that best matches {width = " + i + ", height = " + j + "}");
    f = new bx.a(this, null);
    e = new AdView((Context)localObject);
    e.setAdSize(localg);
    e.setAdUnitId(b);
    e.setAdListener(f);
    setGravity(17);
    addView(e, new RelativeLayout.LayoutParams(localg.b((Context)localObject), localg.a((Context)localObject)));
    localObject = new f();
    if (d)
    {
      kg.a(3, a, "GMS AdView set to Test Mode.");
      ((f)localObject).b(d.a);
      if (!TextUtils.isEmpty(c)) {
        ((f)localObject).b(c);
      }
    }
    e.a(((f)localObject).a());
  }
  
  public void onActivityDestroy()
  {
    kg.a(4, a, "GMS AdView onDestroy.");
    if (e != null)
    {
      e.a();
      e = null;
    }
    super.onActivityDestroy();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */