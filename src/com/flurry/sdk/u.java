package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import java.util.HashMap;
import java.util.Map;

public class u
  extends p
{
  private static final String a = u.class.getSimpleName();
  private u.a b = u.a.a;
  
  public u(Context paramContext, String paramString)
  {
    super(paramContext, null, paramString);
  }
  
  private void B()
  {
    
    try
    {
      if ((!u.a.b.equals(b)) && (!u.a.d.equals(b))) {
        return;
      }
      b = u.a.c;
      kg.a(3, a, "render interstitial (" + this + ")");
      Context localContext1 = f();
      if ((localContext1 == null) || (!(localContext1 instanceof Activity)))
      {
        fc.b(this, ba.d);
        return;
      }
    }
    finally {}
    au localau = o();
    if (localau == null)
    {
      fc.b(this, ba.c);
      return;
    }
    if (localau.w())
    {
      fc.b(this, ba.x);
      return;
    }
    if (!jl.a().c())
    {
      kg.a(5, a, "There is no network connectivity (ad will not display)");
      HashMap localHashMap = new HashMap();
      localHashMap.put("errorCode", Integer.toString(ba.b.a()));
      fa.a(bb.g, localHashMap, localContext2, this, localau, 1);
      return;
    }
    co localco = localau.a();
    if (localco == null)
    {
      fc.b(this, ba.e);
      return;
    }
    if (f == 1)
    {
      fc.b(this, ba.e);
      return;
    }
    if (!cq.c.equals(a))
    {
      fc.a(this, ba.v);
      return;
    }
    if (!fd.b().equals(v))
    {
      fc.b(this, ba.s);
      return;
    }
    p();
    js.a().a(new u.3(this));
  }
  
  private void C()
  {
    lt.a();
    q();
    hf localhf = i.a().q().a(f(), this);
    if (localhf != null) {
      localhf.a();
    }
    kg.a(a, "InterstitialAdObject rendered: " + this);
    fc.b(this);
  }
  
  public void A()
  {
    for (;;)
    {
      try
      {
        if (u.a.a.equals(b))
        {
          fc.b(this, ba.r);
          return;
        }
        if (u.a.b.equals(b))
        {
          js.a().b(new u.2(this));
          continue;
        }
        if (u.a.c.equals(b)) {
          break label86;
        }
      }
      finally {}
      if (u.a.d.equals(b)) {
        label86:
        fc.b(this);
      }
    }
  }
  
  public void a()
  {
    super.a();
  }
  
  /* Error */
  protected void a(d paramd)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 242	com/flurry/sdk/p:a	(Lcom/flurry/sdk/d;)V
    //   5: getstatic 247	com/flurry/sdk/d$a:a	Lcom/flurry/sdk/d$a;
    //   8: aload_1
    //   9: getfield 251	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   12: invokevirtual 252	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   15: ifeq +58 -> 73
    //   18: aload_0
    //   19: monitorenter
    //   20: aload_0
    //   21: monitorenter
    //   22: getstatic 28	com/flurry/sdk/u$a:a	Lcom/flurry/sdk/u$a;
    //   25: aload_0
    //   26: getfield 30	com/flurry/sdk/u:b	Lcom/flurry/sdk/u$a;
    //   29: invokevirtual 40	com/flurry/sdk/u$a:equals	(Ljava/lang/Object;)Z
    //   32: ifeq +42 -> 74
    //   35: aload_0
    //   36: getstatic 36	com/flurry/sdk/u$a:b	Lcom/flurry/sdk/u$a;
    //   39: putfield 30	com/flurry/sdk/u:b	Lcom/flurry/sdk/u$a;
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_0
    //   45: monitorexit
    //   46: getstatic 43	com/flurry/sdk/u$a:d	Lcom/flurry/sdk/u$a;
    //   49: aload_0
    //   50: getfield 30	com/flurry/sdk/u:b	Lcom/flurry/sdk/u$a;
    //   53: invokevirtual 40	com/flurry/sdk/u$a:equals	(Ljava/lang/Object;)Z
    //   56: ifeq +17 -> 73
    //   59: invokestatic 187	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   62: new 254	com/flurry/sdk/u$1
    //   65: dup
    //   66: aload_0
    //   67: invokespecial 255	com/flurry/sdk/u$1:<init>	(Lcom/flurry/sdk/u;)V
    //   70: invokevirtual 238	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   73: return
    //   74: getstatic 46	com/flurry/sdk/u$a:c	Lcom/flurry/sdk/u$a;
    //   77: aload_0
    //   78: getfield 30	com/flurry/sdk/u:b	Lcom/flurry/sdk/u$a;
    //   81: invokevirtual 40	com/flurry/sdk/u$a:equals	(Ljava/lang/Object;)Z
    //   84: ifeq -42 -> 42
    //   87: aload_0
    //   88: getstatic 43	com/flurry/sdk/u$a:d	Lcom/flurry/sdk/u$a;
    //   91: putfield 30	com/flurry/sdk/u:b	Lcom/flurry/sdk/u$a;
    //   94: goto -52 -> 42
    //   97: astore_1
    //   98: aload_0
    //   99: monitorexit
    //   100: aload_1
    //   101: athrow
    //   102: astore_1
    //   103: aload_0
    //   104: monitorexit
    //   105: aload_1
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	u
    //   0	107	1	paramd	d
    // Exception table:
    //   from	to	target	type
    //   22	42	97	finally
    //   42	44	97	finally
    //   74	94	97	finally
    //   98	100	97	finally
    //   20	22	102	finally
    //   44	46	102	finally
    //   100	102	102	finally
    //   103	105	102	finally
  }
  
  public dr j()
  {
    return i.a().c().a(h(), fd.b(), m()).a();
  }
  
  public y k()
  {
    return i.a().c().a(h(), fd.b(), m()).b();
  }
  
  public boolean x()
  {
    if (u.a.a.equals(b)) {
      return false;
    }
    return l().w();
  }
  
  public boolean y()
  {
    try
    {
      boolean bool = u.a.b.equals(b);
      return bool;
    }
    finally {}
  }
  
  public void z()
  {
    for (;;)
    {
      try
      {
        if (u.a.a.equals(b))
        {
          t();
          return;
        }
        if (u.a.b.equals(b))
        {
          kg.a(a, "InterstitialAdObject fetched: " + this);
          fc.a(this);
          continue;
        }
        if (u.a.c.equals(b)) {
          break label99;
        }
      }
      finally {}
      if (u.a.d.equals(b)) {
        label99:
        fc.b(this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */