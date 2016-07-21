package com.dianxinos.lockscreen;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.lockscreen.ad.AdvertDataMgr;
import com.dianxinos.lockscreen.ad.extra.ADCardController;
import com.dianxinos.lockscreen.ad.extra.BaseCardView;
import com.dianxinos.lockscreen.ad.extra.d;
import com.dianxinos.lockscreen.ad.extra.e;
import com.dianxinos.lockscreen.c.g;
import com.dianxinos.lockscreen.c.h;
import com.dianxinos.lockscreen.c.i;
import com.dianxinos.lockscreen.ui.AdLinearLayout;
import com.dianxinos.lockscreen.ui.DXViewPager;
import com.dianxinos.lockscreen.ui.HealthChargeSlideView;
import com.dianxinos.lockscreen.ui.LockScreenDrawerView;
import org.json.JSONException;
import org.json.JSONObject;

public class j
  extends com.dianxinos.lockscreen.fragment.a
  implements View.OnClickListener, d
{
  private static final boolean c = g.a;
  private ImageView d;
  private HealthChargeSlideView e;
  private Handler f = new Handler();
  private a g;
  private FrameLayout h;
  private BaseCardView i;
  private AdLinearLayout j;
  private ViewGroup k;
  private boolean l;
  private boolean m = false;
  private PowerManager n;
  private boolean o = false;
  private boolean p = false;
  private long q = 0L;
  private Boolean r = null;
  private long s;
  private Context t;
  private BroadcastReceiver u = new k(this);
  private LockScreenDrawerView v;
  private TextView w;
  private TextView x;
  private com.dianxinos.lockscreen.ui.j y = new l(this);
  private e z = new m(this);
  
  private void a(View paramView1, View paramView2)
  {
    if ((paramView1 == null) || (paramView2 == null)) {
      return;
    }
    Animation localAnimation1 = AnimationUtils.loadAnimation(t, z.fade_in);
    Animation localAnimation2 = AnimationUtils.loadAnimation(t, z.fade_out);
    paramView2.startAnimation(localAnimation1);
    paramView1.startAnimation(localAnimation2);
  }
  
  private void a(BaseCardView paramBaseCardView)
  {
    if (j.getChildCount() > 0) {}
    do
    {
      return;
      i = paramBaseCardView;
      if (paramBaseCardView != null) {
        break;
      }
      a(false);
    } while (!v.a());
    v.b();
    return;
    j.addView(paramBaseCardView);
    o();
  }
  
  private void a(String paramString)
  {
    Context localContext;
    boolean bool;
    if (!p)
    {
      localContext = t;
      bool = v.a();
      if (i != null) {
        break label63;
      }
    }
    label63:
    for (String str = null;; str = i.getSourceType())
    {
      x.a(localContext, bool, paramString, str);
      p = true;
      if (i != null) {
        i.performClick();
      }
      n();
      return;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    FrameLayout localFrameLayout = h;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 4)
    {
      localFrameLayout.setVisibility(i1);
      return;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      v.setVisibility(0);
      return;
    }
    v.setVisibility(4);
  }
  
  private void l()
  {
    d = ((ImageView)a(ac.lockscreen_settings));
    d.setOnClickListener(this);
    k = ((ViewGroup)a(ac.charge_setting_view));
    e = ((HealthChargeSlideView)a(ac.health_charge_slide_view));
    e.setUseTouchInside(false);
    e.setLockScreenLabel(c.a(t).d());
    n = ((PowerManager)getActivity().getSystemService("power"));
    h = ((FrameLayout)a(ac.lock_screen_ads_area));
    j = ((AdLinearLayout)h.findViewById(ac.screen_lock_ad_item));
    j.setKeyguardLockState(q());
    j.setOnClickListener(this);
    v = ((LockScreenDrawerView)a(ac.lock_screen_ads_area_drawer));
    v.setListener(y);
    w = ((TextView)a(ac.lock_screen_ads_open));
    x = ((TextView)a(ac.lock_screen_ads_delete));
  }
  
  private void m()
  {
    i.a(t, "lsc", "lsdr", Integer.valueOf(1));
    if (h.c(t))
    {
      i.a(t, "lsnc", "lsnondr", Integer.valueOf(1));
      return;
    }
    i.a(t, "lsnc", "lsnonndr", Integer.valueOf(1));
  }
  
  private void n()
  {
    b.finish();
  }
  
  private void o()
  {
    i.setDXClickListener(this);
    a(true);
    i.c();
    p();
    AdvertDataMgr.a(t).f();
    i.a(t, "lsadss", i.getSourceType(), Integer.valueOf(1));
    x.b(t, v.a());
  }
  
  private void p()
  {
    float f1 = getResources().getDimensionPixelOffset(aa.lock_screen_ads_area_translation_y);
    if (c) {
      Log.i("LockScreen_", "doShowAdAnimator, start = " + f1);
    }
    com.nineoldandroids.a.j localj = com.nineoldandroids.a.j.a(v, "translationY", new float[] { f1, 0.0F });
    localj.a(500L);
    localj.a();
  }
  
  private boolean q()
  {
    return ((KeyguardManager)b.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
  }
  
  private void r()
  {
    ((DXViewPager)((LockScreenContainer)getActivity()).b()).setNoScroll(false);
    k.removeAllViews();
    k.setVisibility(8);
    e.setVisibility(0);
    a(k, e);
    boolean bool = g.a();
    if (l != bool) {}
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("status", bool);
      i.a(t, "lsnoss", localJSONObject);
      l = bool;
      m = false;
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        if (g.a) {
          g.b("LockScreen_", "json exception :", localJSONException);
        }
      }
    }
  }
  
  public void a()
  {
    if (g.a) {
      g.a("LockScreen_", "mAD click");
    }
    if (!p) {
      x.a(t, v.a(), "opcl", i.getSourceType());
    }
    b.finish();
  }
  
  public boolean b()
  {
    if (m)
    {
      r();
      return true;
    }
    return false;
  }
  
  public void onClick(View paramView)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)b.getApplication().getSystemService("connectivity")).getActiveNetworkInfo();
    if (paramView == d) {
      if ((getActivity() instanceof LockScreenContainer)) {}
    }
    while (paramView != j)
    {
      do
      {
        return;
        paramView = (LockScreenContainer)getActivity();
      } while ((paramView.b() == null) || (!(paramView.b() instanceof DXViewPager)));
      m = true;
      ((DXViewPager)paramView.b()).setNoScroll(true);
      e.setVisibility(8);
      l = g.a();
      paramView = c.a(b.getApplication()).b();
      k.addView(paramView.a(), -1, -1);
      k.setVisibility(0);
      paramView.a(new n(this));
      a(e, k);
      i.a(t, "lsnc", "lsnocsdr", Integer.valueOf(1));
      i.a(t, 3);
      if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
      {
        i.a(t, "lsnc", "lsnoncsr", Integer.valueOf(1));
        return;
      }
      i.a(t, "lsnc", "lsnonncsr", Integer.valueOf(1));
      return;
    }
    if (g.a) {
      g.a("LockScreen_", "mContainer click");
    }
    a("opcl");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    for (;;)
    {
      try
      {
        a = paramLayoutInflater.inflate(ad.lock_screen_slide_layout, paramViewGroup, false);
        t = b.getApplicationContext();
        g = a.a(t);
        l();
        b.getWindow().addFlags(524288);
        paramLayoutInflater = new IntentFilter();
        paramLayoutInflater.addAction("ACTION_CLOSE_LOCKSCREEN");
        b.registerReceiver(u, paramLayoutInflater);
        o = true;
        return a;
      }
      catch (Throwable paramLayoutInflater)
      {
        continue;
      }
      if (paramLayoutInflater.getCause() == null) {
        continue;
      }
      paramLayoutInflater = paramLayoutInflater.getCause();
    }
    throw new RuntimeException(Log.getStackTraceString(paramLayoutInflater));
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    e.c();
    b.unregisterReceiver(u);
    f.removeCallbacksAndMessages(null);
    com.dianxinos.lockscreen.ad.c.a(t).a().a(null);
    com.dianxinos.lockscreen.ad.c.a(b.getApplicationContext()).a().b();
  }
  
  public void onPause()
  {
    super.onPause();
    if (g.a) {
      g.b("LockScreen_", "DXLockScreenFragment.onPause");
    }
    o = true;
    e.b();
    if (j.getChildCount() > 0) {
      j.removeAllViews();
    }
    if ((r != null) && (!r.booleanValue()))
    {
      x.a(t);
      r = null;
    }
    com.dianxinos.lockscreen.ad.c.a(t).a().a(null);
    if (s > 0L)
    {
      long l1 = SystemClock.elapsedRealtime();
      long l2 = s;
      x.b(t, l1 - l2);
    }
  }
  
  public void onResume()
  {
    e.a();
    super.onResume();
    if (g.a) {
      g.b("LockScreen_", "DXLockScreenFragment.onResume");
    }
    a(false);
    if (!g.a())
    {
      b.finish();
      return;
    }
    if (g.a) {
      g.b("LockScreen_", "screen on " + n.isScreenOn());
    }
    if (!n.isScreenOn())
    {
      b(true);
      return;
    }
    if (g.a) {
      g.b("LockScreen_", "legacy ad card: " + i + ", fill ad " + o);
    }
    if (o)
    {
      o = false;
      if (!h.c(t)) {
        break label254;
      }
      q = System.currentTimeMillis();
      if (AdvertDataMgr.a(t).i())
      {
        r = Boolean.valueOf(false);
        com.dianxinos.lockscreen.ad.c.a(t).a().a(z);
      }
      AdvertDataMgr.a(t).h();
    }
    for (;;)
    {
      m();
      c.a(t).a(Boolean.valueOf(true));
      s = SystemClock.elapsedRealtime();
      return;
      label254:
      x.a(t, "real", 3);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */