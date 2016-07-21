package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class r
  extends p
  implements t
{
  private static final String a = r.class.getSimpleName();
  private r.a b = r.a.a;
  private WeakReference<RelativeLayout> c = new WeakReference(null);
  private boolean d;
  private long e;
  private long f;
  
  public r(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    super(paramContext, paramViewGroup, paramString);
  }
  
  private void E()
  {
    
    try
    {
      if ((!r.a.b.equals(b)) && (!r.a.d.equals(b))) {
        return;
      }
      b = r.a.c;
      kg.a(3, a, "render banner (" + this + ")");
      Context localContext1 = f();
      localObject = g();
      if ((localContext1 == null) || (!(localContext1 instanceof Activity)))
      {
        fc.b(this, ba.d);
        return;
      }
    }
    finally {}
    if (localObject == null)
    {
      fc.b(this, ba.t);
      return;
    }
    Object localObject = o();
    if (localObject == null)
    {
      fc.b(this, ba.c);
      return;
    }
    if (((au)localObject).w())
    {
      fc.b(this, ba.x);
      return;
    }
    if (!jl.a().c())
    {
      kg.a(5, a, "There is no network connectivity (ad will not display)");
      HashMap localHashMap = new HashMap();
      localHashMap.put("errorCode", Integer.toString(ba.b.a()));
      fa.a(bb.g, localHashMap, localContext2, this, (au)localObject, 1);
      return;
    }
    co localco = ((au)localObject).a();
    if (localco == null)
    {
      fc.b(this, ba.e);
      return;
    }
    if (!cq.b.equals(a))
    {
      fc.a(this, ba.v);
      return;
    }
    if (!bc.a.equals(((au)localObject).d()))
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
    js.a().a(new r.5(this));
  }
  
  private void F()
  {
    lt.a();
    a(0L);
    q();
    gx.a(f(), this);
    kg.a(a, "BannerAdObject rendered: " + this);
    fc.b(this);
  }
  
  private boolean G()
  {
    if (lr.a())
    {
      kg.a(3, a, "Device is locked: banner will NOT rotate for adSpace: " + h());
      return false;
    }
    if (c.get() == null)
    {
      kg.a(3, a, "No banner holder: banner will NOT rotate for adSpace: " + h());
      return false;
    }
    return true;
  }
  
  private void a(long paramLong)
  {
    kg.a(3, a, "Scheduled banner rotation for adSpace: " + h());
    e = paramLong;
    f = paramLong;
  }
  
  public boolean A()
  {
    try
    {
      boolean bool = r.a.b.equals(b);
      return bool;
    }
    finally {}
  }
  
  public void B()
  {
    d = false;
    for (;;)
    {
      try
      {
        if (r.a.a.equals(b))
        {
          t();
          return;
        }
        if (r.a.b.equals(b))
        {
          kg.a(a, "BannerAdObject fetched: " + this);
          fc.a(this);
          continue;
        }
        if (r.a.c.equals(b)) {
          break label104;
        }
      }
      finally {}
      if (r.a.d.equals(b)) {
        label104:
        fc.b(this);
      }
    }
  }
  
  public void C()
  {
    for (;;)
    {
      try
      {
        if (r.a.a.equals(b))
        {
          fc.b(this, ba.r);
          return;
        }
        if (r.a.b.equals(b))
        {
          js.a().b(new r.3(this));
          continue;
        }
        if (r.a.c.equals(b)) {
          break label86;
        }
      }
      finally {}
      if (r.a.d.equals(b)) {
        label86:
        fc.b(this);
      }
    }
  }
  
  public void D()
  {
    d = true;
    for (;;)
    {
      try
      {
        if (r.a.a.equals(b))
        {
          t();
          return;
        }
        if (r.a.b.equals(b))
        {
          js.a().b(new r.4(this));
          continue;
        }
        if (r.a.c.equals(b)) {
          break label88;
        }
      }
      finally {}
      if (r.a.d.equals(b)) {
        label88:
        fc.b(this);
      }
    }
  }
  
  public void a()
  {
    js.a().a(new r.1(this));
    super.a();
  }
  
  public void a(RelativeLayout paramRelativeLayout)
  {
    c = new WeakReference(paramRelativeLayout);
  }
  
  public void a(au paramau, long paramLong, boolean paramBoolean)
  {
    if ((y() != null) && (y().getChildCount() > 0)) {}
    for (int i = 1; i != 0; i = 0)
    {
      a(paramLong);
      return;
    }
    i().a(this, j(), k());
  }
  
  /* Error */
  protected void a(d paramd)
  {
    // Byte code:
    //   0: getstatic 328	com/flurry/sdk/d$a:c	Lcom/flurry/sdk/d$a;
    //   3: aload_1
    //   4: getfield 332	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   7: invokevirtual 333	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   10: ifne +16 -> 26
    //   13: getstatic 334	com/flurry/sdk/d$a:b	Lcom/flurry/sdk/d$a;
    //   16: aload_1
    //   17: getfield 332	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   20: invokevirtual 333	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   23: ifeq +55 -> 78
    //   26: aload_0
    //   27: invokevirtual 317	com/flurry/sdk/r:k	()Lcom/flurry/sdk/y;
    //   30: invokevirtual 338	com/flurry/sdk/y:b	()I
    //   33: istore_2
    //   34: iload_2
    //   35: ifne +43 -> 78
    //   38: iconst_3
    //   39: getstatic 28	com/flurry/sdk/r:a	Ljava/lang/String;
    //   42: new 62	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 64	java/lang/StringBuilder:<init>	()V
    //   49: ldc_w 340
    //   52: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: iload_2
    //   56: invokevirtual 343	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   59: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokestatic 83	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   65: aload_0
    //   66: invokevirtual 313	com/flurry/sdk/r:j	()Lcom/flurry/sdk/dr;
    //   69: aload_0
    //   70: aload_0
    //   71: invokevirtual 317	com/flurry/sdk/r:k	()Lcom/flurry/sdk/y;
    //   74: aconst_null
    //   75: invokevirtual 348	com/flurry/sdk/dr:a	(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V
    //   78: getstatic 350	com/flurry/sdk/d$a:a	Lcom/flurry/sdk/d$a;
    //   81: aload_1
    //   82: getfield 332	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   85: invokevirtual 333	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   88: ifeq +61 -> 149
    //   91: aload_0
    //   92: monitorenter
    //   93: getstatic 37	com/flurry/sdk/r$a:a	Lcom/flurry/sdk/r$a;
    //   96: aload_0
    //   97: getfield 39	com/flurry/sdk/r:b	Lcom/flurry/sdk/r$a;
    //   100: invokevirtual 56	com/flurry/sdk/r$a:equals	(Ljava/lang/Object;)Z
    //   103: ifeq +75 -> 178
    //   106: aload_0
    //   107: getstatic 52	com/flurry/sdk/r$a:b	Lcom/flurry/sdk/r$a;
    //   110: putfield 39	com/flurry/sdk/r:b	Lcom/flurry/sdk/r$a;
    //   113: aload_0
    //   114: monitorexit
    //   115: aload_0
    //   116: getfield 271	com/flurry/sdk/r:d	Z
    //   119: ifne +16 -> 135
    //   122: getstatic 58	com/flurry/sdk/r$a:d	Lcom/flurry/sdk/r$a;
    //   125: aload_0
    //   126: getfield 39	com/flurry/sdk/r:b	Lcom/flurry/sdk/r$a;
    //   129: invokevirtual 56	com/flurry/sdk/r$a:equals	(Ljava/lang/Object;)Z
    //   132: ifeq +17 -> 149
    //   135: invokestatic 211	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   138: new 352	com/flurry/sdk/r$2
    //   141: dup
    //   142: aload_0
    //   143: invokespecial 353	com/flurry/sdk/r$2:<init>	(Lcom/flurry/sdk/r;)V
    //   146: invokevirtual 286	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   149: getstatic 355	com/flurry/sdk/d$a:g	Lcom/flurry/sdk/d$a;
    //   152: aload_1
    //   153: getfield 332	com/flurry/sdk/d:b	Lcom/flurry/sdk/d$a;
    //   156: invokevirtual 333	com/flurry/sdk/d$a:equals	(Ljava/lang/Object;)Z
    //   159: ifeq +18 -> 177
    //   162: aload_1
    //   163: getfield 358	com/flurry/sdk/d:a	Lcom/flurry/sdk/s;
    //   166: aload_0
    //   167: invokevirtual 361	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   170: ifeq +7 -> 177
    //   173: aload_0
    //   174: invokevirtual 364	com/flurry/sdk/r:u	()V
    //   177: return
    //   178: getstatic 60	com/flurry/sdk/r$a:c	Lcom/flurry/sdk/r$a;
    //   181: aload_0
    //   182: getfield 39	com/flurry/sdk/r:b	Lcom/flurry/sdk/r$a;
    //   185: invokevirtual 56	com/flurry/sdk/r$a:equals	(Ljava/lang/Object;)Z
    //   188: ifeq -75 -> 113
    //   191: aload_0
    //   192: getstatic 58	com/flurry/sdk/r$a:d	Lcom/flurry/sdk/r$a;
    //   195: putfield 39	com/flurry/sdk/r:b	Lcom/flurry/sdk/r$a;
    //   198: goto -85 -> 113
    //   201: astore_1
    //   202: aload_0
    //   203: monitorexit
    //   204: aload_1
    //   205: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	r
    //   0	206	1	paramd	d
    //   33	23	2	i	int
    // Exception table:
    //   from	to	target	type
    //   93	113	201	finally
    //   113	115	201	finally
    //   178	198	201	finally
    //   202	204	201	finally
  }
  
  public void c()
  {
    super.c();
  }
  
  public void d()
  {
    super.d();
    f = e;
  }
  
  public dr j()
  {
    return i.a().c().a(h(), fd.b(), m()).a();
  }
  
  public y k()
  {
    return i.a().c().a(h(), fd.b(), m()).b();
  }
  
  protected void s()
  {
    super.s();
    if (e > 0L)
    {
      f -= System.currentTimeMillis() - r();
      if (f <= 0L)
      {
        if (G())
        {
          kg.a(3, a, "Rotating banner for adSpace: " + h());
          i().a(this, j(), k());
        }
        f = e;
      }
    }
  }
  
  public boolean x()
  {
    if (r.a.a.equals(b)) {
      return false;
    }
    return l().w();
  }
  
  public RelativeLayout y()
  {
    return (RelativeLayout)c.get();
  }
  
  public void z()
  {
    lt.a();
    RelativeLayout localRelativeLayout = (RelativeLayout)c.get();
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
    c.clear();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */