package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class im
{
  public static int a;
  public static int b;
  public static AtomicInteger c;
  static jz<List<in>> d;
  private static im f;
  private static Map<Integer, in> g;
  private String e = im.class.getSimpleName();
  private final AtomicInteger h;
  private long i;
  private kb<jk> j = new im.1(this);
  
  private im()
  {
    g = new HashMap();
    h = new AtomicInteger(0);
    c = new AtomicInteger(0);
    if (b == 0) {
      b = 600000;
    }
    if (a == 0) {
      a = 15;
    }
    n();
    if (d == null) {
      q();
    }
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", j);
  }
  
  public static im a()
  {
    try
    {
      if (f == null) {
        f = new im();
      }
      im localim = f;
      return localim;
    }
    finally {}
  }
  
  public static void a(int paramInt)
  {
    a = paramInt;
  }
  
  public static void b()
  {
    if (f != null)
    {
      kc.a().b("com.flurry.android.sdk.NetworkStateEvent", fj);
      g.clear();
      g = null;
      f = null;
    }
  }
  
  public static void b(int paramInt)
  {
    b = paramInt;
  }
  
  private void c(ik paramik)
  {
    d = true;
    paramik.a();
    c.incrementAndGet();
    paramik.g();
    kg.a(3, e, paramik.d() + " report to " + paramik.e() + " finalized.");
    d();
    g();
  }
  
  private void g()
  {
    if ((j()) || (k()))
    {
      kg.a(3, e, "Threshold reached. Sending callback logging reports");
      l();
    }
  }
  
  private void h()
  {
    if (j())
    {
      kg.a(3, e, "Max Callback Attempts threshold reached. Sending callback logging reports");
      l();
    }
  }
  
  private void i()
  {
    if (k())
    {
      kg.a(3, e, "Time threshold reached. Sending callback logging reports");
      l();
    }
  }
  
  private boolean j()
  {
    return c.intValue() >= a;
  }
  
  private boolean k()
  {
    return System.currentTimeMillis() > i;
  }
  
  private void l()
  {
    Iterator localIterator1 = c().iterator();
    while (localIterator1.hasNext())
    {
      in localin = (in)localIterator1.next();
      Iterator localIterator2 = localin.d().iterator();
      int k = 0;
      if (localIterator2.hasNext())
      {
        Iterator localIterator3 = nexta.iterator();
        int m = k;
        for (;;)
        {
          k = m;
          if (!localIterator3.hasNext()) {
            break;
          }
          ik localik = (ik)localIterator3.next();
          if (j)
          {
            localIterator3.remove();
          }
          else if (!f.equals(il.d))
          {
            j = true;
            m = 1;
          }
        }
      }
      if (k != 0) {
        io.a().a(localin);
      }
    }
    io.a().c();
    i = (System.currentTimeMillis() + b);
    o();
    m();
    c = new AtomicInteger(0);
    d();
  }
  
  private void m()
  {
    List localList1 = c();
    int k = 0;
    while (k < localList1.size())
    {
      in localin = (in)localList1.get(k);
      if (localin.f())
      {
        c(localin.a());
        k += 1;
      }
      else
      {
        List localList2 = localin.d();
        int m = 0;
        label62:
        Object localObject;
        if (m < localList2.size())
        {
          localObject = (ij)localList2.get(m);
          if (!((ij)localObject).n()) {
            break label120;
          }
          localin.e().remove(Long.valueOf(((ij)localObject).e()));
        }
        for (;;)
        {
          m += 1;
          break label62;
          break;
          label120:
          localObject = a.iterator();
          while (((Iterator)localObject).hasNext()) {
            if (nextj) {
              ((Iterator)localObject).remove();
            }
          }
        }
      }
    }
  }
  
  private void n()
  {
    i = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getLong("timeToSendNextPulseReport", 0L);
  }
  
  private void o()
  {
    SharedPreferences.Editor localEditor = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
    localEditor.putLong("timeToSendNextPulseReport", i);
    localEditor.commit();
  }
  
  private int p()
  {
    try
    {
      int k = h.incrementAndGet();
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static void q()
  {
    d = new jz(js.a().c().getFileStreamPath(".yflurryanongoingpulsecallbackreporter"), ".yflurryanongoingpulsecallbackreporter", 2, new im.6());
  }
  
  public void a(ik paramik)
  {
    try
    {
      kg.a(3, e, paramik.d() + " report sent successfully to " + paramik.e());
      f = il.a;
      g = "";
      c(paramik);
      if ((kg.c() <= 3) && (kg.d())) {
        js.a().a(new im.4(this, paramik));
      }
      return;
    }
    finally
    {
      paramik = finally;
      throw paramik;
    }
  }
  
  public void a(in paramin)
  {
    if (paramin == null) {}
    for (;;)
    {
      try
      {
        kg.a(3, e, "Must add valid PulseCallbackAsyncReportInfo");
        return;
      }
      finally {}
      kg.a(3, e, "Adding and sending " + paramin.c() + " report to PulseCallbackManager.");
      if (paramin.d().size() != 0)
      {
        if (i == 0L)
        {
          i = (System.currentTimeMillis() + b);
          js.a().b(new im.2(this));
        }
        int k = p();
        paramin.a(k);
        g.put(Integer.valueOf(k), paramin);
        paramin = paramin.d().iterator();
        if (paramin.hasNext()) {
          hl.a().e().b((kr)paramin.next());
        }
      }
    }
  }
  
  /* Error */
  public boolean a(ik paramik, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: aload_1
    //   4: getfield 369	com/flurry/sdk/ik:h	I
    //   7: iconst_1
    //   8: iadd
    //   9: putfield 369	com/flurry/sdk/ik:h	I
    //   12: aload_1
    //   13: invokestatic 161	java/lang/System:currentTimeMillis	()J
    //   16: putfield 370	com/flurry/sdk/ik:i	J
    //   19: aload_1
    //   20: invokevirtual 372	com/flurry/sdk/ik:c	()Z
    //   23: ifne +10 -> 33
    //   26: aload_2
    //   27: invokestatic 378	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   30: ifeq +71 -> 101
    //   33: iconst_3
    //   34: aload_0
    //   35: getfield 37	com/flurry/sdk/im:e	Ljava/lang/String;
    //   38: new 113	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   45: ldc_w 380
    //   48: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_1
    //   52: invokevirtual 116	com/flurry/sdk/ik:d	()Ljava/lang/String;
    //   55: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc 122
    //   60: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload_1
    //   64: invokevirtual 124	com/flurry/sdk/ik:e	()Ljava/lang/String;
    //   67: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 134	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   76: iconst_0
    //   77: istore_3
    //   78: aload_1
    //   79: getstatic 382	com/flurry/sdk/il:c	Lcom/flurry/sdk/il;
    //   82: putfield 201	com/flurry/sdk/ik:f	Lcom/flurry/sdk/il;
    //   85: aload_1
    //   86: ldc_w 309
    //   89: putfield 311	com/flurry/sdk/ik:g	Ljava/lang/String;
    //   92: aload_0
    //   93: aload_1
    //   94: invokespecial 313	com/flurry/sdk/im:c	(Lcom/flurry/sdk/ik;)V
    //   97: aload_0
    //   98: monitorexit
    //   99: iload_3
    //   100: ireturn
    //   101: iconst_3
    //   102: aload_0
    //   103: getfield 37	com/flurry/sdk/im:e	Ljava/lang/String;
    //   106: new 113	java/lang/StringBuilder
    //   109: dup
    //   110: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   113: ldc_w 384
    //   116: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload_1
    //   120: invokevirtual 124	com/flurry/sdk/ik:e	()Ljava/lang/String;
    //   123: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: ldc_w 386
    //   129: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload_2
    //   133: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokestatic 134	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   142: iconst_1
    //   143: istore_3
    //   144: aload_1
    //   145: aload_2
    //   146: invokevirtual 389	com/flurry/sdk/ik:a	(Ljava/lang/String;)V
    //   149: aload_0
    //   150: invokevirtual 136	com/flurry/sdk/im:d	()V
    //   153: goto -56 -> 97
    //   156: astore_1
    //   157: aload_0
    //   158: monitorexit
    //   159: aload_1
    //   160: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	this	im
    //   0	161	1	paramik	ik
    //   0	161	2	paramString	String
    //   77	67	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	33	156	finally
    //   33	76	156	finally
    //   78	97	156	finally
    //   101	142	156	finally
    //   144	153	156	finally
  }
  
  public void b(ik paramik)
  {
    try
    {
      kg.a(3, e, "Maximum number of attempts reached. Aborting: " + paramik.d());
      f = il.b;
      i = System.currentTimeMillis();
      g = "";
      c(paramik);
      return;
    }
    finally
    {
      paramik = finally;
      throw paramik;
    }
  }
  
  public void b(in paramin)
  {
    if (paramin == null) {}
    for (;;)
    {
      try
      {
        kg.a(3, e, "Must add valid PulseCallbackAsyncReportInfo");
        return;
      }
      finally {}
      if (i == 0L)
      {
        i = (System.currentTimeMillis() + b);
        js.a().b(new im.3(this));
      }
      int k = p();
      paramin.a(k);
      g.put(Integer.valueOf(k), paramin);
      Iterator localIterator1 = paramin.d().iterator();
      if (localIterator1.hasNext())
      {
        Iterator localIterator2 = nexta.iterator();
        if (localIterator2.hasNext())
        {
          ik localik = (ik)localIterator2.next();
          c.incrementAndGet();
          h();
        }
      }
      else
      {
        i();
        kg.a(3, e, "Restoring " + paramin.c() + " report to PulseCallbackManager. " + "Number of stored completed callbacks: " + c.get());
      }
    }
  }
  
  public boolean b(ik paramik, String paramString)
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        f = il.c;
        i = System.currentTimeMillis();
        String str = paramString;
        if (paramString == null) {
          str = "";
        }
        g = str;
        if (paramik.b())
        {
          kg.a(3, e, "Maximum number of attempts reached. Aborting: " + paramik.d() + " report to " + paramik.e());
          c(paramik);
          return bool;
        }
        if (!ma.h(paramik.f()))
        {
          kg.a(3, e, "Url: " + paramik.f() + " is invalid.");
          c(paramik);
          continue;
        }
        kg.a(3, e, "Retrying callback to " + paramik.d() + " in: " + l.g() / 1000L + " seconds.");
      }
      finally {}
      bool = true;
      paramik.a();
      c.incrementAndGet();
      d();
      g();
    }
  }
  
  public List<in> c()
  {
    return new ArrayList(g.values());
  }
  
  public void c(int paramInt)
  {
    try
    {
      kg.a(3, e, "Removing report " + paramInt + " from PulseCallbackManager");
      g.remove(Integer.valueOf(paramInt));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void d()
  {
    js.a().b(new im.5(this));
  }
  
  public List<in> e()
  {
    if (d == null) {
      q();
    }
    return (List)d.a();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */