package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class au
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  private final Object a = new Object();
  private final WeakReference<ng> b;
  private WeakReference<ViewTreeObserver> c;
  private final WeakReference<View> d;
  private final as e;
  private final Context f;
  private final gr g;
  private final hf h;
  private boolean i;
  private final WindowManager j;
  private final PowerManager k;
  private final KeyguardManager l;
  private bg m;
  private boolean n;
  private boolean o = false;
  private boolean p = false;
  private boolean q;
  private boolean r;
  private BroadcastReceiver s;
  private final HashSet<ar> t = new HashSet();
  private pg u;
  private final fq v = new ba(this);
  private final fq w = new bb(this);
  private final fq x = new bc(this);
  
  public au(AdSizeParcel paramAdSizeParcel, ng paramng, VersionInfoParcel paramVersionInfoParcel, View paramView, gr paramgr)
  {
    g = paramgr;
    b = new WeakReference(paramng);
    d = new WeakReference(paramView);
    c = new WeakReference(null);
    q = true;
    u = new pg(200L);
    e = new as(UUID.randomUUID().toString(), paramVersionInfoParcel, c, j, paramng.a());
    h = g.b();
    j = ((WindowManager)paramView.getContext().getSystemService("window"));
    k = ((PowerManager)paramView.getContext().getApplicationContext().getSystemService("power"));
    l = ((KeyguardManager)paramView.getContext().getSystemService("keyguard"));
    f = paramView.getContext().getApplicationContext();
    try
    {
      paramAdSizeParcel = a(paramView);
      h.a(new av(this, paramAdSizeParcel), new aw(this));
      h.a(new ax(this), new ay(this));
      b.a("Tracking ad unit: " + e.d());
      return;
    }
    catch (RuntimeException paramAdSizeParcel)
    {
      for (;;)
      {
        b.b("Failure while processing active view data.", paramAdSizeParcel);
      }
    }
    catch (JSONException paramAdSizeParcel)
    {
      for (;;) {}
    }
  }
  
  protected int a(int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    float f1 = density;
    return (int)(paramInt / f1);
  }
  
  protected JSONObject a(View paramView)
  {
    boolean bool1 = ae.g().a(paramView);
    Object localObject2 = new int[2];
    Object localObject1 = new int[2];
    try
    {
      paramView.getLocationOnScreen((int[])localObject2);
      paramView.getLocationInWindow((int[])localObject1);
      localObject1 = paramView.getContext().getResources().getDisplayMetrics();
      Rect localRect1 = new Rect();
      left = localObject2[0];
      top = localObject2[1];
      right = (left + paramView.getWidth());
      bottom = (top + paramView.getHeight());
      localObject2 = new Rect();
      right = j.getDefaultDisplay().getWidth();
      bottom = j.getDefaultDisplay().getHeight();
      Rect localRect2 = new Rect();
      boolean bool2 = paramView.getGlobalVisibleRect(localRect2, null);
      Rect localRect3 = new Rect();
      boolean bool3 = paramView.getLocalVisibleRect(localRect3);
      Rect localRect4 = new Rect();
      paramView.getHitRect(localRect4);
      JSONObject localJSONObject = i();
      localJSONObject.put("windowVisibility", paramView.getWindowVisibility()).put("isStopped", p).put("isPaused", o).put("isAttachedToWindow", bool1).put("viewBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("adBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("globalVisibleBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("globalVisibleBoxVisible", bool2).put("localVisibleBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("localVisibleBoxVisible", bool3).put("hitBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("screenDensity", density).put("isVisible", b(paramView));
      return localJSONObject;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        b.b("Failure getting view location.", localException);
      }
    }
  }
  
  protected void a()
  {
    synchronized (a)
    {
      if (s != null) {
        return;
      }
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      s = new az(this);
      f.registerReceiver(s, localIntentFilter);
      return;
    }
  }
  
  protected void a(View paramView, Map<String, String> paramMap)
  {
    b(false);
  }
  
  public void a(ar paramar)
  {
    t.add(paramar);
  }
  
  public void a(bg parambg)
  {
    synchronized (a)
    {
      m = parambg;
      return;
    }
  }
  
  protected void a(bt parambt)
  {
    parambt.a("/updateActiveView", v);
    parambt.a("/untrackActiveViewUnit", w);
    parambt.a("/visibilityChanged", x);
  }
  
  protected void a(JSONObject paramJSONObject)
  {
    try
    {
      JSONArray localJSONArray = new JSONArray();
      JSONObject localJSONObject = new JSONObject();
      localJSONArray.put(paramJSONObject);
      localJSONObject.put("units", localJSONArray);
      h.a(new bd(this, localJSONObject), new ps());
      return;
    }
    catch (Throwable paramJSONObject)
    {
      b.b("Skipping active view message.", paramJSONObject);
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    Iterator localIterator = t.iterator();
    while (localIterator.hasNext()) {
      ((ar)localIterator.next()).a(this, paramBoolean);
    }
  }
  
  protected boolean a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return false;
    }
    paramMap = (String)paramMap.get("hashCode");
    if ((!TextUtils.isEmpty(paramMap)) && (paramMap.equals(e.d()))) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  protected void b()
  {
    synchronized (a)
    {
      if (s != null)
      {
        f.unregisterReceiver(s);
        s = null;
      }
      return;
    }
  }
  
  protected void b(boolean paramBoolean)
  {
    synchronized (a)
    {
      if ((!i) || (!q)) {
        return;
      }
      if ((paramBoolean) && (!u.a())) {
        return;
      }
    }
    ng localng = (ng)b.get();
    View localView = (View)d.get();
    if (localView != null) {
      if (localng == null) {
        break label139;
      }
    }
    for (;;)
    {
      int i1;
      if (i1 != 0)
      {
        d();
        return;
        i1 = 0;
        continue;
      }
      try
      {
        a(a(localView));
        for (;;)
        {
          g();
          e();
          return;
          b.a("Active view update failed.", localng);
        }
      }
      catch (JSONException localJSONException)
      {
        for (;;) {}
        i1 = 1;
      }
      catch (RuntimeException localRuntimeException)
      {
        label139:
        for (;;) {}
      }
    }
  }
  
  protected boolean b(View paramView)
  {
    return (paramView.getVisibility() == 0) && (paramView.isShown()) && (j()) && ((!l.inKeyguardRestrictedInputMode()) || (ae.e().a()));
  }
  
  protected void c()
  {
    synchronized (a)
    {
      h();
      b();
      q = false;
      e();
      h.a();
      return;
    }
  }
  
  public void d()
  {
    synchronized (a)
    {
      if (q) {
        r = true;
      }
    }
    try
    {
      a(k());
      b.a("Untracking ad unit: " + e.d());
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        b.b("JSON failure while processing active view data.", localJSONException);
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        b.b("Failure while processing active view data.", localRuntimeException);
      }
    }
  }
  
  protected void e()
  {
    if (m != null) {
      m.a(this);
    }
  }
  
  public boolean f()
  {
    synchronized (a)
    {
      boolean bool = q;
      return bool;
    }
  }
  
  protected void g()
  {
    Object localObject = (View)d.get();
    if (localObject == null) {}
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return;
      localViewTreeObserver = (ViewTreeObserver)c.get();
      localObject = ((View)localObject).getViewTreeObserver();
    } while (localObject == localViewTreeObserver);
    h();
    if ((!n) || ((localViewTreeObserver != null) && (localViewTreeObserver.isAlive())))
    {
      n = true;
      ((ViewTreeObserver)localObject).addOnScrollChangedListener(this);
      ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(this);
    }
    c = new WeakReference(localObject);
  }
  
  protected void h()
  {
    ViewTreeObserver localViewTreeObserver = (ViewTreeObserver)c.get();
    if ((localViewTreeObserver == null) || (!localViewTreeObserver.isAlive())) {
      return;
    }
    localViewTreeObserver.removeOnScrollChangedListener(this);
    localViewTreeObserver.removeGlobalOnLayoutListener(this);
  }
  
  protected JSONObject i()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("afmaVersion", e.b()).put("activeViewJSON", e.c()).put("timestamp", ae.i().b()).put("adFormat", e.a()).put("hashCode", e.d()).put("isMraid", e.e());
    return localJSONObject;
  }
  
  boolean j()
  {
    return k.isScreenOn();
  }
  
  protected JSONObject k()
  {
    JSONObject localJSONObject = i();
    localJSONObject.put("doneReasonCode", "u");
    return localJSONObject;
  }
  
  public void l()
  {
    synchronized (a)
    {
      p = true;
      b(false);
      return;
    }
  }
  
  public void m()
  {
    synchronized (a)
    {
      o = true;
      b(false);
      return;
    }
  }
  
  public void n()
  {
    synchronized (a)
    {
      o = false;
      b(false);
      return;
    }
  }
  
  public void onGlobalLayout()
  {
    b(false);
  }
  
  public void onScrollChanged()
  {
    b(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */