package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.flurry.android.FlurryAdListener;
import com.flurry.android.FlurryAdType;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class v
  implements s, t
{
  private static final String a = v.class.getSimpleName();
  private final int b;
  private final WeakReference<Context> c;
  private final WeakReference<ViewGroup> d;
  private final String e;
  private v.a f;
  private final dq g;
  private au h;
  private au i;
  private boolean j = false;
  private boolean k = false;
  private long l;
  private final kb<ln> m = new v.1(this);
  private final kb<lg> n = new v.2(this);
  private final kb<d> o = new v.3(this);
  private WeakReference<RelativeLayout> p;
  private boolean q;
  private long r;
  private long s;
  
  public v(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    i locali = i.a();
    if (locali == null) {
      throw new IllegalStateException("A session must be started before ad objects may be instantiated.");
    }
    b = fd.a();
    c = new WeakReference(paramContext);
    d = new WeakReference(paramViewGroup);
    e = paramString;
    f = v.a.a;
    g = new dq(paramString);
    p = new WeakReference(null);
    locali.e().a(paramContext, paramString, this);
    B();
    D();
    F();
  }
  
  private void A()
  {
    if (TextUtils.isEmpty(je.a().c()))
    {
      kg.a(3, a, "Session Id not created yet. Delaying the fetch until session is created." + this);
      k = true;
      return;
    }
    kg.a(3, a, "Fetching ad now for " + this);
    i().a(this, b(), j());
  }
  
  private void B()
  {
    l = System.currentTimeMillis();
    lo.a().a(m);
  }
  
  private void C()
  {
    lo.a().b(m);
  }
  
  private void D()
  {
    kc.a().a("com.flurry.android.impl.ads.AdStateEvent", o);
  }
  
  private void E()
  {
    kc.a().a(o);
  }
  
  private void F()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", n);
  }
  
  private void G()
  {
    kc.a().a(n);
  }
  
  private void H()
  {
    
    Object localObject4;
    boolean bool;
    for (;;)
    {
      FlurryAdType localFlurryAdType1;
      try
      {
        if ((!v.a.b.equals(f)) && (!v.a.d.equals(f))) {
          return;
        }
        if ((!v.a.b.equals(f)) || (h == null)) {
          break;
        }
        localObject3 = j.a().b();
        kg.a(3, a, "Firing shouldDisplayAd, listener=" + localObject3);
        if (localObject3 == null) {
          break;
        }
      }
      finally {}
      try
      {
        localObject4 = e;
        if (!bc.a.equals(h.d())) {
          break label139;
        }
        localFlurryAdType1 = FlurryAdType.WEB_BANNER;
        bool = ((FlurryAdListener)localObject3).shouldDisplayAd((String)localObject4, localFlurryAdType1);
      }
      catch (Throwable localThrowable)
      {
        label139:
        FlurryAdType localFlurryAdType2;
        kg.a(6, a, "AdListener.shouldDisplayAd", localThrowable);
        bool = false;
        continue;
      }
      if (bool) {
        break;
      }
      return;
      localFlurryAdType2 = FlurryAdType.WEB_TAKEOVER;
    }
    f = v.a.c;
    kg.a(3, a, "render banner (" + this + ")");
    Object localObject2 = f();
    Object localObject3 = g();
    if ((localObject2 == null) || (!(localObject2 instanceof Activity)))
    {
      fc.b(this, ba.d);
      return;
    }
    if (localObject3 == null)
    {
      fc.b(this, ba.t);
      return;
    }
    localObject3 = h;
    if (localObject3 == null)
    {
      fc.b(this, ba.c);
      return;
    }
    if (((au)localObject3).w())
    {
      fc.b(this, ba.x);
      return;
    }
    if (!jl.a().c())
    {
      kg.a(5, a, "There is no network connectivity (ad will not display)");
      localObject4 = new HashMap();
      ((Map)localObject4).put("errorCode", Integer.toString(ba.b.a()));
      fa.a(bb.g, (Map)localObject4, (Context)localObject2, this, (au)localObject3, 1);
      return;
    }
    localObject2 = ((au)localObject3).a();
    if (localObject2 == null)
    {
      fc.b(this, ba.e);
      return;
    }
    if (f == 1)
    {
      fc.b(this, ba.e);
      return;
    }
    if (!cq.a.equals(a))
    {
      fc.b(this, ba.v);
      return;
    }
    if ((!bc.a.equals(((au)localObject3).d())) && (!bc.b.equals(((au)localObject3).d())))
    {
      fc.a(this, ba.v);
      return;
    }
    if (!fd.b().equals(v))
    {
      fc.b(this, ba.s);
      return;
    }
    u();
    js.a().a(new v.8(this));
  }
  
  private void I()
  {
    lt.a();
    a(0L);
    v();
    if (bc.a.equals(i.d())) {
      gx.a(f(), this);
    }
    for (;;)
    {
      fc.b(this);
      return;
      hf localhf = i.a().q().a(f(), this);
      if (localhf != null) {
        localhf.a();
      }
    }
  }
  
  private boolean J()
  {
    if (lr.a())
    {
      kg.a(3, a, "Device is locked: banner will NOT rotate for adSpace: " + h());
      return false;
    }
    if (p.get() == null)
    {
      kg.a(3, a, "No banner holder: banner will NOT rotate for adSpace: " + h());
      return false;
    }
    return true;
  }
  
  private void K()
  {
    if ((j) && (l().e(bb.v.a())))
    {
      fa.a(bb.v, Collections.emptyMap(), f(), this, l(), 0);
      l().f(bb.v.a());
    }
  }
  
  private void L()
  {
    j = true;
    l().g(bb.v.a());
  }
  
  private void a(long paramLong)
  {
    kg.a(3, a, "Scheduled banner rotation for adSpace: " + h());
    r = paramLong;
    s = paramLong;
  }
  
  private void a(boolean paramBoolean)
  {
    if (TextUtils.isEmpty(je.a().c()))
    {
      kg.a(3, a, "Session Id not created yet. Delaying the fetch until session is created." + this);
      k = true;
      return;
    }
    i().d();
    if ((j().b() == 0) && (!paramBoolean))
    {
      kg.a(3, "VerifyPackageLog", "nextAdUnit() cacheSize is empty");
      d locald = new d();
      a = this;
      b = d.a.b;
      locald.b();
      return;
    }
    kg.a(3, a, "Fetching ad now for " + this);
    i().a(this, b(), j());
  }
  
  public void a()
  {
    C();
    E();
    G();
    j = false;
    k = false;
    i.a().e().a(h(), this);
    ab localab = i.a().l();
    if (localab != null) {
      localab.a(this);
    }
    js.a().a(new v.4(this));
    if (g != null) {
      g.a();
    }
  }
  
  public void a(RelativeLayout paramRelativeLayout)
  {
    p = new WeakReference(paramRelativeLayout);
  }
  
  public void a(au paramau)
  {
    h = paramau;
  }
  
  public void a(au paramau, long paramLong, boolean paramBoolean)
  {
    if (paramau.d().equals(bc.a))
    {
      if ((y() != null) && (y().getChildCount() > 0)) {}
      for (int i1 = 1; i1 != 0; i1 = 0)
      {
        a(paramLong);
        return;
      }
      A();
      return;
    }
    a(paramBoolean);
  }
  
  /* Error */
  protected void a(d paramd)
  {
    // Byte code:
    //   0: getstatic 540	com/flurry/sdk/d$a:c	Lcom/flurry/sdk/d$a;
    //   3: aload_1
    //   4: getfield 496	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   7: invokevirtual 541	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   10: ifne +16 -> 26
    //   13: getstatic 495	com/flurry/sdk/d$a:b	Lcom/flurry/sdk/d$a;
    //   16: aload_1
    //   17: getfield 496	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   20: invokevirtual 541	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   23: ifeq +55 -> 78
    //   26: aload_0
    //   27: invokevirtual 183	com/flurry/sdk/v:j	()Lcom/flurry/sdk/y;
    //   30: invokevirtual 480	com/flurry/sdk/y:b	()I
    //   33: istore_2
    //   34: iload_2
    //   35: ifne +43 -> 78
    //   38: iconst_3
    //   39: getstatic 52	com/flurry/sdk/v:a	Ljava/lang/String;
    //   42: new 154	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 155	java/lang/StringBuilder:<init>	()V
    //   49: ldc_w 543
    //   52: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: iload_2
    //   56: invokevirtual 546	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   59: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokestatic 172	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   65: aload_0
    //   66: invokevirtual 180	com/flurry/sdk/v:b	()Lcom/flurry/sdk/dr;
    //   69: aload_0
    //   70: aload_0
    //   71: invokevirtual 183	com/flurry/sdk/v:j	()Lcom/flurry/sdk/y;
    //   74: aconst_null
    //   75: invokevirtual 551	com/flurry/sdk/dr:a	(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V
    //   78: getstatic 553	com/flurry/sdk/d$a:a	Lcom/flurry/sdk/d$a;
    //   81: aload_1
    //   82: getfield 496	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   85: invokevirtual 541	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   88: ifeq +61 -> 149
    //   91: aload_0
    //   92: monitorenter
    //   93: getstatic 112	com/flurry/sdk/v$a:a	Lcom/flurry/sdk/v$a;
    //   96: aload_0
    //   97: getfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   100: invokevirtual 233	com/flurry/sdk/v$a:equals	(Ljava/lang/Object;)Z
    //   103: ifeq +64 -> 167
    //   106: aload_0
    //   107: getstatic 229	com/flurry/sdk/v$a:b	Lcom/flurry/sdk/v$a;
    //   110: putfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   113: aload_0
    //   114: monitorexit
    //   115: aload_0
    //   116: getfield 555	com/flurry/sdk/v:q	Z
    //   119: ifne +16 -> 135
    //   122: getstatic 235	com/flurry/sdk/v$a:d	Lcom/flurry/sdk/v$a;
    //   125: aload_0
    //   126: getfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   129: invokevirtual 233	com/flurry/sdk/v$a:equals	(Ljava/lang/Object;)Z
    //   132: ifeq +17 -> 149
    //   135: invokestatic 394	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   138: new 557	com/flurry/sdk/v$7
    //   141: dup
    //   142: aload_0
    //   143: invokespecial 558	com/flurry/sdk/v$7:<init>	(Lcom/flurry/sdk/v;)V
    //   146: invokevirtual 560	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   149: getstatic 562	com/flurry/sdk/d$a:g	Lcom/flurry/sdk/d$a;
    //   152: aload_1
    //   153: getfield 496	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   156: invokevirtual 541	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   159: ifeq +7 -> 166
    //   162: aload_0
    //   163: invokespecial 473	com/flurry/sdk/v:L	()V
    //   166: return
    //   167: getstatic 280	com/flurry/sdk/v$a:c	Lcom/flurry/sdk/v$a;
    //   170: aload_0
    //   171: getfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   174: invokevirtual 233	com/flurry/sdk/v$a:equals	(Ljava/lang/Object;)Z
    //   177: ifeq -64 -> 113
    //   180: aload_0
    //   181: getstatic 235	com/flurry/sdk/v$a:d	Lcom/flurry/sdk/v$a;
    //   184: putfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   187: goto -74 -> 113
    //   190: astore_1
    //   191: aload_0
    //   192: monitorexit
    //   193: aload_1
    //   194: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	195	0	this	v
    //   0	195	1	paramd	d
    //   33	23	2	i1	int
    // Exception table:
    //   from	to	target	type
    //   93	113	190	finally
    //   113	115	190	finally
    //   167	187	190	finally
    //   191	193	190	finally
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    i().b();
    j().a(paramString);
  }
  
  public dr b()
  {
    return i.a().c().a(h(), fd.b(), m()).a();
  }
  
  public void c()
  {
    C();
  }
  
  public void d()
  {
    B();
    s = r;
    K();
  }
  
  public int e()
  {
    return b;
  }
  
  public Context f()
  {
    return (Context)c.get();
  }
  
  protected void finalize()
  {
    super.finalize();
    a();
  }
  
  public ViewGroup g()
  {
    return (ViewGroup)d.get();
  }
  
  public String h()
  {
    return e;
  }
  
  public dq i()
  {
    return g;
  }
  
  public y j()
  {
    return i.a().c().a(h(), fd.b(), m()).b();
  }
  
  public boolean k()
  {
    return l().d().equals(bc.a);
  }
  
  public au l()
  {
    return i;
  }
  
  public e m()
  {
    return j.a().d();
  }
  
  public void n()
  {
    g.c();
  }
  
  public void o()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)p.get();
    if (localRelativeLayout != null)
    {
      while (localRelativeLayout.getChildCount() > 0)
      {
        localObject = localRelativeLayout.getChildAt(0);
        localRelativeLayout.removeView((View)localObject);
        if ((localObject instanceof gt)) {
          ((gt)localObject).onActivityDestroy();
        }
      }
      Object localObject = g();
      if (localObject != null)
      {
        ((ViewGroup)localObject).removeView(localRelativeLayout);
        ((ViewGroup)localObject).setBackgroundColor(0);
      }
    }
    p.clear();
  }
  
  public boolean p()
  {
    try
    {
      boolean bool = v.a.b.equals(f);
      return bool;
    }
    finally {}
  }
  
  public void q()
  {
    q = false;
    for (;;)
    {
      try
      {
        if (v.a.a.equals(f))
        {
          i().a(this, b(), j());
          return;
        }
        if (v.a.b.equals(f))
        {
          fc.a(this);
          continue;
        }
        if (v.a.c.equals(f)) {
          break label90;
        }
      }
      finally {}
      if (v.a.d.equals(f))
      {
        label90:
        f = v.a.a;
        i().a(this, b(), j());
      }
    }
  }
  
  public void r()
  {
    for (;;)
    {
      try
      {
        if ((v.a.a.equals(f)) || (v.a.d.equals(f)))
        {
          fc.b(this, ba.r);
          return;
        }
        if (v.a.b.equals(f))
        {
          js.a().b(new v.5(this));
          continue;
        }
        if (!v.a.c.equals(f)) {
          continue;
        }
      }
      finally {}
      fc.b(this);
    }
  }
  
  /* Error */
  public boolean s()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 555	com/flurry/sdk/v:q	Z
    //   5: iconst_0
    //   6: istore_2
    //   7: aload_0
    //   8: monitorenter
    //   9: getstatic 112	com/flurry/sdk/v$a:a	Lcom/flurry/sdk/v$a;
    //   12: aload_0
    //   13: getfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   16: invokevirtual 233	com/flurry/sdk/v$a:equals	(Ljava/lang/Object;)Z
    //   19: ifeq +25 -> 44
    //   22: aload_0
    //   23: invokevirtual 177	com/flurry/sdk/v:i	()Lcom/flurry/sdk/dq;
    //   26: aload_0
    //   27: aload_0
    //   28: invokevirtual 180	com/flurry/sdk/v:b	()Lcom/flurry/sdk/dr;
    //   31: aload_0
    //   32: invokevirtual 183	com/flurry/sdk/v:j	()Lcom/flurry/sdk/y;
    //   35: invokevirtual 186	com/flurry/sdk/dq:a	(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V
    //   38: iload_2
    //   39: istore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: iload_1
    //   43: ireturn
    //   44: getstatic 229	com/flurry/sdk/v$a:b	Lcom/flurry/sdk/v$a;
    //   47: aload_0
    //   48: getfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   51: invokevirtual 233	com/flurry/sdk/v$a:equals	(Ljava/lang/Object;)Z
    //   54: ifeq +22 -> 76
    //   57: invokestatic 394	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   60: new 625	com/flurry/sdk/v$6
    //   63: dup
    //   64: aload_0
    //   65: invokespecial 626	com/flurry/sdk/v$6:<init>	(Lcom/flurry/sdk/v;)V
    //   68: invokevirtual 560	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   71: iconst_1
    //   72: istore_1
    //   73: goto -33 -> 40
    //   76: getstatic 280	com/flurry/sdk/v$a:c	Lcom/flurry/sdk/v$a;
    //   79: aload_0
    //   80: getfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   83: invokevirtual 233	com/flurry/sdk/v$a:equals	(Ljava/lang/Object;)Z
    //   86: ifne +18 -> 104
    //   89: iload_2
    //   90: istore_1
    //   91: getstatic 235	com/flurry/sdk/v$a:d	Lcom/flurry/sdk/v$a;
    //   94: aload_0
    //   95: getfield 114	com/flurry/sdk/v:f	Lcom/flurry/sdk/v$a;
    //   98: invokevirtual 233	com/flurry/sdk/v$a:equals	(Ljava/lang/Object;)Z
    //   101: ifeq -61 -> 40
    //   104: aload_0
    //   105: invokevirtual 177	com/flurry/sdk/v:i	()Lcom/flurry/sdk/dq;
    //   108: aload_0
    //   109: aload_0
    //   110: invokevirtual 180	com/flurry/sdk/v:b	()Lcom/flurry/sdk/dr;
    //   113: aload_0
    //   114: invokevirtual 183	com/flurry/sdk/v:j	()Lcom/flurry/sdk/y;
    //   117: invokevirtual 186	com/flurry/sdk/dq:a	(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V
    //   120: iload_2
    //   121: istore_1
    //   122: goto -82 -> 40
    //   125: astore_3
    //   126: aload_0
    //   127: monitorexit
    //   128: aload_3
    //   129: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	this	v
    //   39	83	1	bool1	boolean
    //   6	115	2	bool2	boolean
    //   125	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	38	125	finally
    //   40	42	125	finally
    //   44	71	125	finally
    //   76	89	125	finally
    //   91	104	125	finally
    //   104	120	125	finally
    //   126	128	125	finally
  }
  
  protected void t()
  {
    if (r > 0L)
    {
      s -= System.currentTimeMillis() - l;
      if (s <= 0L)
      {
        if (J())
        {
          kg.a(3, a, "Rotating banner for adSpace: " + h());
          i().a(this, b(), j());
        }
        s = r;
      }
    }
  }
  
  protected void u()
  {
    
    if ((!h.o()) && (h.n()))
    {
      kg.a(3, a, "Precaching optional for ad, copying assets before display");
      i.a().l().a(this, h);
    }
  }
  
  protected void v()
  {
    i = h;
    h = null;
  }
  
  protected void w()
  {
    if (k)
    {
      i().a(this, b(), j());
      k = false;
    }
  }
  
  public boolean x()
  {
    if (v.a.a.equals(f)) {
      return false;
    }
    return l().w();
  }
  
  public RelativeLayout y()
  {
    return (RelativeLayout)p.get();
  }
  
  protected void z()
  {
    j = false;
    k = false;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */