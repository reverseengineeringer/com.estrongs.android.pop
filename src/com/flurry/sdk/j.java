package com.flurry.sdk;

import com.flurry.android.FlurryAdListener;
import com.flurry.android.ICustomAdNetworkHandler;
import java.lang.ref.WeakReference;
import java.util.Map;

public class j
{
  private static j a;
  private static final String b = j.class.getSimpleName();
  private WeakReference<FlurryAdListener> c = new WeakReference(null);
  private ICustomAdNetworkHandler d = null;
  private final e e = new e();
  private volatile String f = null;
  private volatile String g = null;
  private volatile boolean h = false;
  
  public static j a()
  {
    try
    {
      if (a == null) {
        a = new j();
      }
      j localj = a;
      return localj;
    }
    finally {}
  }
  
  private boolean j()
  {
    return ((Boolean)lk.a().a("UseHttps")).booleanValue();
  }
  
  public void a(FlurryAdListener paramFlurryAdListener)
  {
    c = new WeakReference(paramFlurryAdListener);
  }
  
  public void a(ICustomAdNetworkHandler paramICustomAdNetworkHandler)
  {
    d = paramICustomAdNetworkHandler;
  }
  
  public void a(String paramString)
  {
    e.setFixedAdId(paramString);
  }
  
  public void a(Map<String, String> paramMap)
  {
    e.setUserCookies(paramMap);
  }
  
  public void a(boolean paramBoolean)
  {
    e.setEnableTestAds(paramBoolean);
  }
  
  public FlurryAdListener b()
  {
    return (FlurryAdListener)c.get();
  }
  
  public void b(String paramString)
  {
    f = paramString;
  }
  
  public void b(Map<String, String> paramMap)
  {
    e.setKeywords(paramMap);
  }
  
  public ICustomAdNetworkHandler c()
  {
    return d;
  }
  
  public void c(String paramString)
  {
    g = paramString;
  }
  
  public e d()
  {
    return e;
  }
  
  public void e()
  {
    e.clearUserCookies();
  }
  
  public void f()
  {
    e.clearKeywords();
  }
  
  public String g()
  {
    if (f != null) {
      return f + "/v14/getAds.do";
    }
    if (j()) {
      return "https://ads.flurry.com/v14/getAds.do";
    }
    return "http://ads.flurry.com/v14/getAds.do";
  }
  
  public String h()
  {
    if (g != null) {
      return g;
    }
    if (j()) {
      return "https://adlog.flurry.com";
    }
    return "http://adlog.flurry.com";
  }
  
  public String i()
  {
    return h() + "/v2/postAdLog.do";
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */