package com.estrongs.android.cleaner;

import android.widget.ImageView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.util.l;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class h
{
  private final int a;
  private final h b;
  private String c;
  private String d;
  private String e;
  private int f;
  private final int g;
  private String h;
  private boolean i;
  private AtomicLong j;
  private int k;
  private int l;
  private long m;
  private long n;
  private boolean o;
  private boolean p;
  private AtomicInteger q;
  private int r;
  private List<h> s;
  private Object t;
  private boolean u;
  private List<String> v;
  
  public h(int paramInt)
  {
    this(paramInt, 1, null);
  }
  
  public h(int paramInt1, int paramInt2, h paramh)
  {
    a = paramInt1;
    g = paramInt2;
    b = paramh;
    r = 0;
    j = new AtomicLong(0L);
    q = new AtomicInteger(0);
    s = Collections.synchronizedList(new ArrayList());
    n = 0L;
    m = 0L;
    i = false;
    if (paramh != null) {
      paramh.a(this);
    }
  }
  
  private int a(List<h> paramList)
  {
    if (paramList.isEmpty()) {
      return 0;
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      int i1 = a(s);
      i = true;
      r = i1;
    }
    return paramList.size();
  }
  
  private void a(h paramh)
  {
    synchronized (s)
    {
      s.add(paramh);
      return;
    }
  }
  
  private void b(List<h> paramList)
  {
    if (paramList.isEmpty()) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        h localh = (h)paramList.next();
        b(s);
        i = false;
        r = 0;
      }
    }
  }
  
  private void e(boolean paramBoolean)
  {
    h localh = b;
    int i2 = 1;
    int i1 = 0;
    int i3;
    if (localh != null)
    {
      if (!paramBoolean) {
        break label89;
      }
      i3 = i1;
      if (i1 == 0)
      {
        localh.t();
        i3 = 1;
      }
      if (!i) {}
    }
    else
    {
      label43:
      return;
    }
    i = true;
    if (i2 == 0) {
      localh.t();
    }
    localh.e(paramBoolean);
    i2 = i3;
    i1 = 0;
    for (;;)
    {
      localh = localh.c();
      i3 = i1;
      i1 = i2;
      i2 = i3;
      break;
      label89:
      localh.u();
      if (localh.i() != 0) {
        break label43;
      }
      i = false;
      i3 = i1;
      i1 = i2;
      i2 = i3;
    }
  }
  
  private int t()
  {
    r += 1;
    return r;
  }
  
  private int u()
  {
    r -= 1;
    return r;
  }
  
  private void v()
  {
    q.incrementAndGet();
  }
  
  /* Error */
  private void w()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 141	com/estrongs/android/cleaner/h:l	I
    //   6: istore_1
    //   7: iload_1
    //   8: tableswitch	default:+28->36, 5:+31->39, 6:+31->39, 7:+31->39
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: aload_0
    //   40: iconst_5
    //   41: putfield 141	com/estrongs/android/cleaner/h:l	I
    //   44: aload_0
    //   45: invokevirtual 144	com/estrongs/android/cleaner/h:l	()Ljava/util/List;
    //   48: astore_2
    //   49: aload_2
    //   50: ifnull -14 -> 36
    //   53: aload_2
    //   54: invokeinterface 113 1 0
    //   59: ifle -23 -> 36
    //   62: aload_2
    //   63: invokeinterface 98 1 0
    //   68: astore_2
    //   69: aload_2
    //   70: invokeinterface 103 1 0
    //   75: ifeq -39 -> 36
    //   78: aload_2
    //   79: invokeinterface 107 1 0
    //   84: checkcast 2	com/estrongs/android/cleaner/h
    //   87: iconst_1
    //   88: invokevirtual 146	com/estrongs/android/cleaner/h:a	(Z)V
    //   91: goto -22 -> 69
    //   94: astore_2
    //   95: aload_0
    //   96: monitorexit
    //   97: aload_2
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	h
    //   6	2	1	i1	int
    //   48	31	2	localObject1	Object
    //   94	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	94	finally
    //   39	49	94	finally
    //   53	69	94	finally
    //   69	91	94	finally
  }
  
  private void x()
  {
    for (;;)
    {
      try
      {
        int i1 = l;
        switch (i1)
        {
        default: 
          return;
        }
        l = 6;
        Object localObject1 = l();
        if ((localObject1 != null) && (((List)localObject1).size() > 0))
        {
          localObject1 = ((List)localObject1).iterator();
          h localh;
          if (((Iterator)localObject1).hasNext())
          {
            localh = (h)((Iterator)localObject1).next();
            if (localh.r()) {
              localh.a(false);
            }
          }
          else
          {
            continue;
          }
          localh.a(true);
        }
      }
      finally {}
    }
  }
  
  /* Error */
  private void y()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 141	com/estrongs/android/cleaner/h:l	I
    //   6: istore_1
    //   7: iload_1
    //   8: tableswitch	default:+28->36, 5:+31->39, 6:+31->39, 7:+31->39
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: aload_0
    //   40: bipush 7
    //   42: putfield 141	com/estrongs/android/cleaner/h:l	I
    //   45: aload_0
    //   46: invokevirtual 144	com/estrongs/android/cleaner/h:l	()Ljava/util/List;
    //   49: astore_2
    //   50: aload_2
    //   51: ifnull -15 -> 36
    //   54: aload_2
    //   55: invokeinterface 113 1 0
    //   60: ifle -24 -> 36
    //   63: aload_2
    //   64: invokeinterface 98 1 0
    //   69: astore_2
    //   70: aload_2
    //   71: invokeinterface 103 1 0
    //   76: ifeq -40 -> 36
    //   79: aload_2
    //   80: invokeinterface 107 1 0
    //   85: checkcast 2	com/estrongs/android/cleaner/h
    //   88: iconst_0
    //   89: invokevirtual 146	com/estrongs/android/cleaner/h:a	(Z)V
    //   92: goto -22 -> 70
    //   95: astore_2
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_2
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	h
    //   6	2	1	i1	int
    //   49	31	2	localObject1	Object
    //   95	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	95	finally
    //   39	50	95	finally
    //   54	70	95	finally
    //   70	92	95	finally
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(long paramLong)
  {
    j.set(paramLong);
    for (h localh = b; localh != null; localh = localh.c())
    {
      localh.b(paramLong);
      localh.v();
    }
  }
  
  public void a(ImageView paramImageView)
  {
    int i1 = 2130838081;
    switch (f)
    {
    default: 
      return;
    case 1: 
    case 3: 
    case 4: 
      l.b("test", "get file icon:" + c);
      f localf = new f(new File(c));
      if ((k == 8) || (k == 7))
      {
        e.a(2130837924, paramImageView, localf);
        return;
      }
      e.a(localf, paramImageView);
      return;
    case 2: 
    case 5: 
      l.b("test", "get app icon:" + d);
      e.a(d, paramImageView);
      return;
    case 6: 
      if ((t != null) && ((t instanceof String)))
      {
        e.a(new f(new File((String)t)), paramImageView);
        return;
      }
      e.a(2130837896, paramImageView, null);
      return;
    case 0: 
      l.b("test", "get category icon:" + k);
      switch (k)
      {
      default: 
        i1 = 2130837596;
      }
      for (;;)
      {
        e.a(i1, paramImageView);
        return;
        i1 = 2130838076;
        continue;
        i1 = 2130838064;
        continue;
        i1 = 2130838060;
        continue;
        i1 = 2130838070;
        continue;
        i1 = 2130838061;
        continue;
        i1 = 2130838078;
        continue;
        i1 = 2130838082;
      }
    }
    e.a(2130838081, paramImageView);
  }
  
  public void a(Object paramObject)
  {
    t = paramObject;
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        boolean bool = i;
        if (bool == paramBoolean) {
          return;
        }
        i = paramBoolean;
        if (paramBoolean)
        {
          r = a(s);
          e(paramBoolean);
          continue;
        }
        b(s);
      }
      finally {}
      r = 0;
    }
  }
  
  public boolean a()
  {
    return i;
  }
  
  public int b()
  {
    return g;
  }
  
  public void b(int paramInt)
  {
    k = paramInt;
  }
  
  public void b(long paramLong)
  {
    j.addAndGet(paramLong);
  }
  
  public void b(String paramString)
  {
    d = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public h c()
  {
    return b;
  }
  
  public void c(int paramInt)
  {
    l = paramInt;
  }
  
  public void c(long paramLong)
  {
    m = paramLong;
  }
  
  public void c(String paramString)
  {
    h = paramString;
  }
  
  public void c(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public String d()
  {
    return c;
  }
  
  public void d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      w();
      a(true);
      return;
    case 1: 
      x();
      a(true);
      return;
    }
    y();
    a(false);
  }
  
  public void d(long paramLong)
  {
    n = paramLong;
  }
  
  public void d(String paramString)
  {
    e = paramString;
  }
  
  public void d(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public String e()
  {
    return d;
  }
  
  public void e(String paramString)
  {
    try
    {
      if (v == null) {
        v = new ArrayList();
      }
      v.add(paramString);
      return;
    }
    finally {}
  }
  
  public int f()
  {
    return f;
  }
  
  public int g()
  {
    return k;
  }
  
  public int h()
  {
    return l;
  }
  
  public int i()
  {
    return r;
  }
  
  public long j()
  {
    return j.get();
  }
  
  public String k()
  {
    return h;
  }
  
  public List<h> l()
  {
    return s;
  }
  
  public String m()
  {
    return e;
  }
  
  public long n()
  {
    return m;
  }
  
  public long o()
  {
    return n;
  }
  
  public void p()
  {
    boolean bool = true;
    switch (l)
    {
    default: 
      if (i) {
        break;
      }
    }
    for (;;)
    {
      a(bool);
      return;
      x();
      a(true);
      return;
      y();
      a(false);
      return;
      w();
      a(true);
      return;
      bool = false;
    }
  }
  
  public int q()
  {
    switch (l)
    {
    default: 
      if (!i) {
        break;
      }
    case 5: 
      return 2;
    case 6: 
      return 1;
    case 7: 
      return 0;
    }
    return 0;
  }
  
  public boolean r()
  {
    return u;
  }
  
  public List<String> s()
  {
    try
    {
      if (v == null) {
        v = new ArrayList();
      }
      List localList = v;
      return localList;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */