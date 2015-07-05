package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.app.Fragment;
import com.baidu.mobstat.util.c;
import com.baidu.mobstat.util.e;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

class ao
{
  static HashMap<String, at> a = new HashMap();
  private static ao b = new ao();
  private Handler c;
  private long d = 0L;
  private long e = 0L;
  private long f = 0L;
  private long g = 0L;
  private WeakReference<Context> h;
  private WeakReference<Fragment> i;
  private WeakReference<Object> j;
  private am k = new am();
  private int l = -1;
  private boolean m = true;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  
  private ao()
  {
    HandlerThread localHandlerThread = new HandlerThread("SessionAnalysisThread");
    localHandlerThread.start();
    localHandlerThread.setPriority(10);
    c = new Handler(localHandlerThread.getLooper());
  }
  
  static Context a(Object paramObject)
  {
    try
    {
      paramObject = (Context)paramObject.getClass().getMethod("getActivity", new Class[0]).invoke(paramObject, new Object[0]);
      return (Context)paramObject;
    }
    catch (Throwable paramObject)
    {
      e.a(((Throwable)paramObject).getMessage());
    }
    return null;
  }
  
  public static ao a()
  {
    return b;
  }
  
  private void a(Context paramContext)
  {
    if (paramContext == null)
    {
      e.a("sdkstat", "clearLastSession(Context context):context=null");
      return;
    }
    String str1 = new JSONObject().toString();
    String str2 = aw.n(paramContext);
    c.a(false, paramContext, str2 + "__local_last_session.json", str1, false);
  }
  
  private void a(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  private void c(Context paramContext, long paramLong)
  {
    e.a("sdkstat", "flush current session to last_session.json");
    new JSONObject();
    Object localObject = k.c();
    try
    {
      ((JSONObject)localObject).put("e", paramLong);
      localObject = ((JSONObject)localObject).toString();
      e.a("sdkstat", "cacheString = " + (String)localObject);
      String str = aw.n(paramContext);
      c.a(false, paramContext, str + "__local_last_session.json", (String)localObject, false);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        e.a("sdkstat", "StatSession.flushSession() failed");
      }
    }
  }
  
  private boolean e()
  {
    return m;
  }
  
  public void a(int paramInt)
  {
    l = (paramInt * 1000);
  }
  
  public void a(Context paramContext, long paramLong)
  {
    e.a("sdkstat", "AnalysisResume job");
    if (n) {
      e.c(new Object[] { "sdkstat", "遗漏StatService.onPause() || missing StatService.onPause()" });
    }
    n = true;
    if (e())
    {
      e.a("is_first_resume=true");
      a(false);
      c.post(new aq(this));
    }
    for (;;)
    {
      av localav = new av(this, d, paramLong, paramContext, null, null, 1);
      c.post(localav);
      h = new WeakReference(paramContext);
      e = paramLong;
      return;
      e.a("sdkstat", " is_first_resume=false");
    }
  }
  
  public void a(Context paramContext, long paramLong, String paramString)
  {
    a(paramString);
    e.a("sdkstat", "AnalysisPageStart");
    if (bb) {
      e.c(new Object[] { "sdkstat", "遗漏StatService.onPageEnd() || missing StatService.onPageEnd()" });
    }
    bb = true;
    bc = paramLong;
    if (e())
    {
      e.b("is_first_resume=true");
      a(false);
      c.post(new ap(this));
    }
    for (;;)
    {
      paramString = new av(this, d, paramLong, paramContext, null, null, 1);
      c.post(paramString);
      h = new WeakReference(paramContext);
      e = paramLong;
      return;
      e.b(new Object[] { "sdkstat", " is_first_resume=false" });
    }
  }
  
  public void a(Fragment paramFragment, long paramLong)
  {
    e.a("sdkstat", "post resume job");
    if (o) {
      e.c(new Object[] { "sdkstat", "遗漏StatService.onPause() || missing StatService.onPause()" });
    }
    o = true;
    if (e())
    {
      e.a("sdkstat", "is_first_resume=true");
      a(false);
      c.post(new ar(this));
    }
    for (;;)
    {
      av localav = new av(this, d, paramLong, null, paramFragment, null, 2);
      c.post(localav);
      i = new WeakReference(paramFragment);
      f = paramLong;
      return;
      e.a("sdkstat", "is_first_resume=false");
    }
  }
  
  public void a(Object paramObject, long paramLong)
  {
    e.a("sdkstat", "post resume job");
    if (p) {
      e.c(new Object[] { "sdkstat", "遗漏StatService.onPause() || missing StatService.onPause()" });
    }
    p = true;
    if (e())
    {
      e.a("sdkstat", "is_first_resume=true");
      a(false);
      c.post(new as(this));
    }
    for (;;)
    {
      av localav = new av(this, d, paramLong, null, null, paramObject, 3);
      c.post(localav);
      j = new WeakReference(paramObject);
      g = paramLong;
      return;
      e.a("sdkstat", "is_first_resume=false");
    }
  }
  
  void a(String paramString)
  {
    if (paramString == null) {
      e.c(new Object[] { "sdkstat", "page Object is null" });
    }
    at localat;
    do
    {
      return;
      localat = new at(this, paramString);
    } while (a.containsKey(paramString));
    a.put(paramString, localat);
  }
  
  public int b()
  {
    if (l == -1) {
      l = 30000;
    }
    return l;
  }
  
  at b(String paramString)
  {
    if (paramString == null)
    {
      e.c(new Object[] { "sdkstat", "pageName is null" });
      return null;
    }
    if (!a.containsKey(paramString)) {
      a(paramString);
    }
    return (at)a.get(paramString);
  }
  
  public void b(Context paramContext, long paramLong)
  {
    e.a("sdkstat", "post pause job");
    if (!n)
    {
      e.c(new Object[] { "sdkstat", "遗漏StatService.onResume() || missing StatService.onResume()" });
      return;
    }
    n = false;
    paramContext = new au(this, paramLong, paramContext, null, e, (Context)h.get(), null, 1, null, null, null);
    c.post(paramContext);
    d = paramLong;
  }
  
  public void b(Context paramContext, long paramLong, String paramString)
  {
    e.a("sdkstat", "post pause job");
    if (b(paramString) == null)
    {
      e.c(new Object[] { "sdkstat", "自定义页面" + paramString + "没有优先调用或者遗漏，请检查确保在onPageEnd函数之前调用onPageStart函数" });
      return;
    }
    if (!bb)
    {
      e.c(new Object[] { "sdkstat", "Please check (1)遗漏StatService.onPageStart() || missing StatService.onPageStart()" });
      return;
    }
    bb = false;
    bd = paramLong;
    paramContext = new au(this, paramLong, paramContext, null, bc, (Context)h.get(), null, 1, paramString, null, null);
    c.post(paramContext);
    d = paramLong;
  }
  
  public void b(Fragment paramFragment, long paramLong)
  {
    e.a("sdkstat", "post pause job");
    if (!o)
    {
      e.c(new Object[] { "sdkstat", "遗漏android.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()" });
      return;
    }
    o = false;
    paramFragment = new au(this, paramLong, null, paramFragment, f, null, (Fragment)i.get(), 2, null, null, null);
    c.post(paramFragment);
    d = paramLong;
  }
  
  public void b(Object paramObject, long paramLong)
  {
    e.a("sdkstat", "post pause job");
    if (!p)
    {
      e.c(new Object[] { "sdkstat", "遗漏android.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()" });
      return;
    }
    p = false;
    paramObject = new au(this, paramLong, null, null, g, null, null, 3, null, j.get(), paramObject);
    c.post((Runnable)paramObject);
    d = paramLong;
  }
  
  public void c()
  {
    k.a(k.d() + 1);
  }
  
  void c(String paramString)
  {
    if (paramString == null) {
      e.c(new Object[] { "sdkstat", "pageName is null" });
    }
    while (!a.containsKey(paramString)) {
      return;
    }
    a.remove(paramString);
  }
  
  public long d()
  {
    return k.a();
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */