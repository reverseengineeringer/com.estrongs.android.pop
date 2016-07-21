package com.flurry.android;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.flurry.sdk.au;
import com.flurry.sdk.bb;
import com.flurry.sdk.fa;
import com.flurry.sdk.fl;
import com.flurry.sdk.gr;
import com.flurry.sdk.gt;
import com.flurry.sdk.gt.a;
import com.flurry.sdk.hb;
import com.flurry.sdk.i;
import com.flurry.sdk.js;
import com.flurry.sdk.kb;
import com.flurry.sdk.kc;
import com.flurry.sdk.kg;
import com.flurry.sdk.lh;
import com.flurry.sdk.q;
import com.flurry.sdk.s;
import com.flurry.sdk.w;
import java.util.Collections;
import java.util.Map;

public final class FlurryFullscreenTakeoverActivity
  extends Activity
{
  public static final String EXTRA_KEY_AD_OBJECT_ID = "ad_object_id";
  public static final String EXTRA_KEY_AD_OBJECT_LEGACY = "ad_object_legacy";
  public static final String EXTRA_KEY_CLOSE_AD = "close_ad";
  public static final String EXTRA_KEY_SEND_Y_COOKIES = "send_y_cookies";
  public static final String EXTRA_KEY_URL = "url";
  private static final String a = FlurryFullscreenTakeoverActivity.class.getSimpleName();
  private ViewGroup b;
  private gt c;
  private boolean d;
  private s e;
  private hb f;
  private boolean g = false;
  private kb<gr> h = new FlurryFullscreenTakeoverActivity.1(this);
  private gt.a i = new FlurryFullscreenTakeoverActivity.2(this);
  
  private void a(gt paramgt)
  {
    try
    {
      e();
      c = paramgt;
      if (c != null)
      {
        RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        localLayoutParams.addRule(13);
        b.addView(paramgt, localLayoutParams);
        setContentView(b);
        c.initLayout();
      }
      return;
    }
    finally
    {
      paramgt = finally;
      throw paramgt;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  private boolean b()
  {
    return g;
  }
  
  private void c()
  {
    boolean bool1 = getIntent().getBooleanExtra("ad_object_legacy", false);
    int j = getIntent().getIntExtra("ad_object_id", 0);
    String str = getIntent().getStringExtra("url");
    boolean bool2 = getIntent().getBooleanExtra("close_ad", true);
    boolean bool3 = getIntent().getBooleanExtra("send_y_cookies", false);
    Object localObject = i.a();
    if (bool1) {}
    for (localObject = ((i)localObject).e().a(j);; localObject = ((i)localObject).d().a(j))
    {
      e = ((s)localObject);
      if (e != null) {
        break;
      }
      kg.b(a, "Cannot launch Activity. No ad object.");
      finish();
      return;
    }
    f = new hb(e, str, bool2, bool3);
    e.l().b(true);
  }
  
  /* Error */
  private void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 71	com/flurry/android/FlurryFullscreenTakeoverActivity:f	Lcom/flurry/sdk/hb;
    //   6: ifnonnull +10 -> 16
    //   9: aload_0
    //   10: invokevirtual 151	com/flurry/android/FlurryFullscreenTakeoverActivity:finish	()V
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: iconst_3
    //   17: getstatic 47	com/flurry/android/FlurryFullscreenTakeoverActivity:a	Ljava/lang/String;
    //   20: new 178	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 179	java/lang/StringBuilder:<init>	()V
    //   27: ldc -75
    //   29: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: getfield 71	com/flurry/android/FlurryFullscreenTakeoverActivity:f	Lcom/flurry/sdk/hb;
    //   36: invokevirtual 188	com/flurry/sdk/hb:toString	()Ljava/lang/String;
    //   39: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 192	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   48: aload_0
    //   49: aload_0
    //   50: getfield 71	com/flurry/android/FlurryFullscreenTakeoverActivity:f	Lcom/flurry/sdk/hb;
    //   53: invokevirtual 195	com/flurry/sdk/hb:c	()Lcom/flurry/sdk/s;
    //   56: aload_0
    //   57: getfield 71	com/flurry/android/FlurryFullscreenTakeoverActivity:f	Lcom/flurry/sdk/hb;
    //   60: invokevirtual 197	com/flurry/sdk/hb:a	()Ljava/lang/String;
    //   63: aload_0
    //   64: getfield 65	com/flurry/android/FlurryFullscreenTakeoverActivity:i	Lcom/flurry/sdk/gt$a;
    //   67: aload_0
    //   68: getfield 71	com/flurry/android/FlurryFullscreenTakeoverActivity:f	Lcom/flurry/sdk/hb;
    //   71: invokevirtual 199	com/flurry/sdk/hb:d	()Z
    //   74: aload_0
    //   75: invokespecial 201	com/flurry/android/FlurryFullscreenTakeoverActivity:b	()Z
    //   78: invokestatic 206	com/flurry/sdk/gv:a	(Landroid/content/Context;Lcom/flurry/sdk/s;Ljava/lang/String;Lcom/flurry/sdk/gt$a;ZZ)Lcom/flurry/sdk/gt;
    //   81: astore_1
    //   82: aload_1
    //   83: ifnull +12 -> 95
    //   86: aload_0
    //   87: invokespecial 82	com/flurry/android/FlurryFullscreenTakeoverActivity:e	()V
    //   90: aload_0
    //   91: aload_1
    //   92: invokespecial 208	com/flurry/android/FlurryFullscreenTakeoverActivity:a	(Lcom/flurry/sdk/gt;)V
    //   95: aload_0
    //   96: iconst_0
    //   97: invokespecial 79	com/flurry/android/FlurryFullscreenTakeoverActivity:a	(Z)V
    //   100: goto -87 -> 13
    //   103: astore_1
    //   104: aload_0
    //   105: monitorexit
    //   106: aload_1
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	FlurryFullscreenTakeoverActivity
    //   81	11	1	localgt	gt
    //   103	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	103	finally
    //   16	82	103	finally
    //   86	95	103	finally
    //   95	100	103	finally
  }
  
  private void e()
  {
    if (c != null)
    {
      c.cleanupLayout();
      b.removeAllViews();
      c = null;
    }
  }
  
  private void f()
  {
    if (f != null)
    {
      kg.a(a, "Save view state: " + f.toString());
      e.l().a(f);
    }
  }
  
  public void finish()
  {
    try
    {
      if (d) {
        return;
      }
      d = true;
      super.finish();
      return;
    }
    finally {}
  }
  
  public void fireEvent(bb parambb, Map<String, String> paramMap, int paramInt)
  {
    kg.a(a, "fireEvent(event=" + parambb + ",params=" + paramMap + ")");
    fa.a(parambb, paramMap, this, e, e.l(), paramInt);
  }
  
  public void loadViewState()
  {
    f = e.l().t();
    if (f == null)
    {
      finish();
      return;
    }
    kg.a(a, "Load view state: " + f.toString());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    kg.a(3, a, "onConfigurationChanged");
    if (c != null) {
      c.onConfigurationChanged();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    setTheme(16973831);
    super.onCreate(paramBundle);
    kg.a(3, a, "onCreate");
    if (js.a() == null)
    {
      kg.a(3, a, "Flurry core not initialized.");
      finish();
      return;
    }
    fl.a(getWindow());
    setVolumeControlStream(3);
    b = new RelativeLayout(this);
    c();
    f();
    a(true);
    if (e != null)
    {
      fireEvent(bb.R, Collections.emptyMap(), 0);
      return;
    }
    kg.b(a, "FlurryFullscreenTakeoverActivity cannot be launched as the internal ad object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    kg.a(3, a, "onDestroy");
    if (c != null) {
      c.onActivityDestroy();
    }
    if ((e != null) && (e.l() != null))
    {
      e.l().u();
      e.l().b(false);
    }
    if ((e != null) && (e.l().x()))
    {
      kg.a(a, "AdClose: Firing ad close.");
      fireEvent(bb.v, Collections.emptyMap(), 0);
    }
    for (;;)
    {
      c = null;
      return;
      kg.b(a, "FlurryFullscreenTakeoverActivity cannot destroy internal ad object as the object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
    }
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    kg.a(3, a, "onKeyUp");
    if ((paramInt == 4) && (c != null))
    {
      c.onBackKey();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    kg.a(3, a, "onPause");
    super.onPause();
    if (c != null) {
      c.onActivityPause();
    }
  }
  
  protected void onRestart()
  {
    kg.a(3, a, "onRestart");
    super.onRestart();
    loadViewState();
  }
  
  protected void onResume()
  {
    kg.a(3, a, "onActivityResume");
    super.onResume();
    if (c != null) {
      c.onActivityResume();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    kg.a(3, a, "onStart");
    lh.a().b(this);
    registerActivityEvent();
    d();
    if (c != null) {
      c.onActivityStart();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    kg.a(3, a, "onStop");
    if (c != null) {
      c.onActivityStop();
    }
    a(false);
    unregisterActivityEvent();
    lh.a().c(this);
  }
  
  public void registerActivityEvent()
  {
    kc.a().a("com.flurry.android.impl.ads.views.ActivityEvent", h);
  }
  
  public void removeViewState()
  {
    if (e.l() != null)
    {
      hb localhb = e.l().s();
      kg.a(a, "Remove view state: " + localhb.toString());
    }
  }
  
  public void unregisterActivityEvent()
  {
    kc.a().a(h);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryFullscreenTakeoverActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */