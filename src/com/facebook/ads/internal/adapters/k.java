package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.facebook.ads.internal.util.f;
import java.util.Map;
import org.json.JSONObject;

public class k
  extends p
{
  private Context a;
  private q b;
  private n c;
  
  public void a(int paramInt)
  {
    if (c == null) {
      return;
    }
    c.a(paramInt);
  }
  
  public void a(Context paramContext, q paramq, Map<String, Object> paramMap)
  {
    c = n.a((JSONObject)paramMap.get("data"));
    a = paramContext;
    b = paramq;
    if ((c == null) || (f.a(paramContext, c)))
    {
      b.a(this, AdError.NO_FILL);
      return;
    }
    if (b != null) {
      b.a(this);
    }
    com.facebook.ads.internal.util.b.a = c.v();
  }
  
  public void a(Map<String, Object> paramMap)
  {
    if (c == null) {
      return;
    }
    c.a(paramMap);
  }
  
  public boolean a()
  {
    if (!u()) {
      return false;
    }
    return c.o();
  }
  
  public void b(Map<String, Object> paramMap)
  {
    if (c == null) {
      return;
    }
    c.a(a, paramMap);
  }
  
  public boolean b()
  {
    return c.p();
  }
  
  public boolean c()
  {
    return c.q();
  }
  
  public int d()
  {
    return c.r();
  }
  
  public int e()
  {
    return c.w();
  }
  
  public int f()
  {
    return c.x();
  }
  
  public NativeAd.Image g()
  {
    if (!u()) {
      return null;
    }
    return c.d();
  }
  
  public NativeAd.Image h()
  {
    if (!u()) {
      return null;
    }
    return c.e();
  }
  
  public String i()
  {
    if (!u()) {
      return null;
    }
    return c.f();
  }
  
  public String j()
  {
    if (!u()) {
      return null;
    }
    return c.g();
  }
  
  public String k()
  {
    if (!u()) {
      return null;
    }
    return c.h();
  }
  
  public String l()
  {
    if (!u()) {
      return null;
    }
    return c.i();
  }
  
  public String m()
  {
    if (!u()) {
      return null;
    }
    return c.j();
  }
  
  public NativeAd.Rating n()
  {
    if (!u()) {
      return null;
    }
    return c.k();
  }
  
  public String o()
  {
    if (!u()) {
      return null;
    }
    return c.s();
  }
  
  public void onDestroy() {}
  
  public NativeAd.Image p()
  {
    if (!u()) {
      return null;
    }
    return c.t();
  }
  
  public String q()
  {
    if (!u()) {
      return null;
    }
    return c.u();
  }
  
  public String r()
  {
    if (!u()) {
      return null;
    }
    return c.l();
  }
  
  public String s()
  {
    if (!u()) {
      return null;
    }
    return c.m();
  }
  
  public String t()
  {
    if (!u()) {
      return null;
    }
    return c.n();
  }
  
  public boolean u()
  {
    return c != null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */