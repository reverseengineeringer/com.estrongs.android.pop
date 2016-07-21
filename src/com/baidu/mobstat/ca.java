package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.app.Fragment;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

class ca
{
  private static final ca a = new ca();
  private static HashMap<String, cf> p = new HashMap();
  private Handler b;
  private long c = 0L;
  private long d = 0L;
  private long e = 0L;
  private long f = 0L;
  private WeakReference<Context> g;
  private WeakReference<Fragment> h;
  private WeakReference<Object> i;
  private by j = new by();
  private int k = -1;
  private boolean l = true;
  private boolean m = false;
  private boolean n = false;
  private boolean o = false;
  
  private ca()
  {
    HandlerThread localHandlerThread = new HandlerThread("SessionAnalysisThread");
    localHandlerThread.start();
    localHandlerThread.setPriority(10);
    b = new Handler(localHandlerThread.getLooper());
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
      cr.a(((Throwable)paramObject).getMessage());
    }
    return null;
  }
  
  public static ca a()
  {
    return a;
  }
  
  private void a(Context paramContext)
  {
    if (paramContext == null)
    {
      cr.a("clearLastSession(Context context):context=null");
      return;
    }
    String str1 = new JSONObject().toString();
    String str2 = cu.p(paramContext);
    cl.a(paramContext, str2 + "__local_last_session.json", str1, false);
  }
  
  private void a(String paramString)
  {
    localHashMap = p;
    if (paramString == null) {}
    try
    {
      cr.c("page Object is null");
      return;
    }
    finally {}
    cf localcf = new cf(paramString);
    if (!p.containsKey(paramString)) {
      p.put(paramString, localcf);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  private cf b(String paramString)
  {
    localHashMap = p;
    if (paramString == null) {}
    try
    {
      cr.c("pageName is null");
      return null;
    }
    finally {}
    if (!p.containsKey(paramString)) {
      a(paramString);
    }
    paramString = (cf)p.get(paramString);
    return paramString;
  }
  
  private void c(Context paramContext, long paramLong)
  {
    cr.a("flush current session to last_session.json");
    new JSONObject();
    Object localObject = j.c();
    try
    {
      ((JSONObject)localObject).put("e", paramLong);
      localObject = ((JSONObject)localObject).toString();
      cr.a("cacheString = " + (String)localObject);
      String str = cu.p(paramContext);
      cl.a(paramContext, str + "__local_last_session.json", (String)localObject, false);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        cr.a("StatSession.flushSession() failed");
      }
    }
  }
  
  private void c(String paramString)
  {
    localHashMap = p;
    if (paramString == null) {}
    try
    {
      cr.c("pageName is null");
      return;
    }
    finally {}
    if (p.containsKey(paramString)) {
      p.remove(paramString);
    }
  }
  
  private boolean e()
  {
    return l;
  }
  
  public void a(int paramInt)
  {
    k = (paramInt * 1000);
  }
  
  public void a(Context paramContext, long paramLong)
  {
    cr.a("AnalysisResume job");
    if (m) {
      cr.c("遗漏StatService.onPause() || missing StatService.onPause()");
    }
    m = true;
    if (e())
    {
      cr.a("is_first_resume=true");
      a(false);
      b.post(new cc(this));
    }
    for (;;)
    {
      ch localch = new ch(this, c, paramLong, paramContext, null, null, 1);
      b.post(localch);
      g = new WeakReference(paramContext);
      d = paramLong;
      return;
      cr.a(" is_first_resume=false");
    }
  }
  
  public void a(Context paramContext, long paramLong, String paramString)
  {
    cr.a("AnalysisPageStart");
    if (b(paramString) == null)
    {
      cr.c("自定义页面 pageName 为 null");
      return;
    }
    if (bb) {
      cr.c("遗漏StatService.onPageEnd() || missing StatService.onPageEnd()");
    }
    bb = true;
    bc = paramLong;
    if (e())
    {
      cr.b("is_first_resume=true");
      a(false);
      b.post(new cb(this));
    }
    for (;;)
    {
      paramString = new ch(this, c, paramLong, paramContext, null, null, 1);
      b.post(paramString);
      g = new WeakReference(paramContext);
      d = paramLong;
      return;
      cr.b(" is_first_resume=false");
    }
  }
  
  public void a(Fragment paramFragment, long paramLong)
  {
    cr.a("post resume job");
    if (n) {
      cr.c("遗漏StatService.onPause() || missing StatService.onPause()");
    }
    n = true;
    if (e())
    {
      cr.a("is_first_resume=true");
      a(false);
      b.post(new cd(this));
    }
    for (;;)
    {
      ch localch = new ch(this, c, paramLong, null, paramFragment, null, 2);
      b.post(localch);
      h = new WeakReference(paramFragment);
      e = paramLong;
      return;
      cr.a("is_first_resume=false");
    }
  }
  
  public void a(Object paramObject, long paramLong)
  {
    cr.a("post resume job");
    if (o) {
      cr.c("遗漏StatService.onPause() || missing StatService.onPause()");
    }
    o = true;
    if (e())
    {
      cr.a("is_first_resume=true");
      a(false);
      b.post(new ce(this));
    }
    for (;;)
    {
      ch localch = new ch(this, c, paramLong, null, null, paramObject, 3);
      b.post(localch);
      i = new WeakReference(paramObject);
      f = paramLong;
      return;
      cr.a("is_first_resume=false");
    }
  }
  
  public int b()
  {
    if (k == -1) {
      k = 30000;
    }
    return k;
  }
  
  public void b(Context paramContext, long paramLong)
  {
    cr.a("post pause job");
    if (!m)
    {
      cr.c("遗漏StatService.onResume() || missing StatService.onResume()");
      return;
    }
    m = false;
    paramContext = new cg(this, paramLong, paramContext, null, d, (Context)g.get(), null, 1, null, null, null);
    b.post(paramContext);
    c = paramLong;
  }
  
  public void b(Context paramContext, long paramLong, String paramString)
  {
    cr.a("post pause job");
    cf localcf = b(paramString);
    if (localcf == null)
    {
      cr.c("自定义页面 pageName 为 null");
      return;
    }
    if (!b)
    {
      cr.c("Please check (1)遗漏StatService.onPageStart() || missing StatService.onPageStart()");
      return;
    }
    b = false;
    d = paramLong;
    paramContext = new cg(this, paramLong, paramContext, null, c, (Context)g.get(), null, 1, paramString, null, null);
    b.post(paramContext);
    c = paramLong;
  }
  
  public void b(Fragment paramFragment, long paramLong)
  {
    cr.a("post pause job");
    if (!n)
    {
      cr.c("遗漏android.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()");
      return;
    }
    n = false;
    paramFragment = new cg(this, paramLong, null, paramFragment, e, null, (Fragment)h.get(), 2, null, null, null);
    b.post(paramFragment);
    c = paramLong;
  }
  
  public void b(Object paramObject, long paramLong)
  {
    cr.a("post pause job");
    if (!o)
    {
      cr.c("遗漏android.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()");
      return;
    }
    o = false;
    paramObject = new cg(this, paramLong, null, null, f, null, null, 3, null, i.get(), paramObject);
    b.post((Runnable)paramObject);
    c = paramLong;
  }
  
  public void c()
  {
    j.a(j.d() + 1);
  }
  
  public long d()
  {
    return j.a();
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */