package com.dianxinos.library.b.b.d;

import com.dianxinos.library.b.b.a.d;
import com.dianxinos.library.b.c.g;
import com.dianxinos.library.b.c.i;
import com.dianxinos.library.b.c.k;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.CountDownLatch;

public final class q
  extends a
{
  static final g o = new g(1);
  static int p = 0;
  HashMap<String, d> A = new LinkedHashMap();
  s B = new s(this);
  Object C = new Object();
  String q;
  t r;
  Object s = new Object();
  com.dianxinos.library.b.b.a.c t = new com.dianxinos.library.b.b.a.c();
  com.dianxinos.library.b.b.c.a u;
  com.dianxinos.library.b.b.b.a v;
  boolean w = false;
  boolean x = false;
  boolean y = false;
  HashMap<String, d> z = new LinkedHashMap();
  
  public q(com.dianxinos.library.b.b.c.b paramb, t paramt, String paramString)
  {
    r = paramt;
    q = paramString;
    u = new com.dianxinos.library.b.b.c.a(paramb, paramt.d(), q);
  }
  
  private boolean a(String paramString, byte[] paramArrayOfByte)
  {
    boolean bool = true;
    paramString = v.b(paramArrayOfByte, c(paramString));
    if (paramString == null) {
      return false;
    }
    if (com.dianxinos.library.b.b.c.c.a(paramString) == 1) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  private boolean c()
  {
    boolean bool = true;
    String str = b("t26a26ebfab9b4e5f9f39784402706fd6efdf7081");
    byte[] arrayOfByte = v.a(com.dianxinos.library.b.b.c.c.a(1), c(str));
    if (arrayOfByte == null) {
      return false;
    }
    if (u.a(str, arrayOfByte) > 0L) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  private byte[] c(String paramString)
  {
    return com.dianxinos.library.b.b.b.b.a(paramString, 16);
  }
  
  private boolean d()
  {
    try
    {
      for (;;)
      {
        boolean bool = w;
        if (bool) {
          break;
        }
        try
        {
          if (com.dianxinos.library.b.a.b) {
            k.a("wait storage 1000ms ...");
          }
          wait(1000L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    finally {}
    return y;
  }
  
  private void e()
  {
    if (r.a()) {
      throw new RuntimeException("SecurePreferences " + r.d() + " is closed.");
    }
    if (x) {
      throw new RuntimeException(q + " is closed.");
    }
  }
  
  protected <T> T a(String paramString, T paramT, o<?> paramo)
  {
    if (!d()) {
      return paramT;
    }
    e();
    synchronized (s)
    {
      localObject2 = t.a(paramString);
      if (localObject2 == a) {
        return paramT;
      }
    }
    if (localObject2 != null) {
      return (T)localObject2;
    }
    Object localObject2 = (d)A.get(paramString);
    if (localObject2 != null)
    {
      localObject2 = b;
      if (localObject2 == a) {
        return paramT;
      }
      if (localObject2 != null) {
        return (T)localObject2;
      }
    }
    ??? = b(paramString);
    localObject2 = u.a((String)???);
    ??? = v.b((byte[])localObject2, c((String)???));
    if (??? != null) {}
    for (paramo = paramo.b((byte[])???);; paramo = null)
    {
      synchronized (t)
      {
        localObject2 = t.a(paramString);
        if (localObject2 == a) {
          return paramT;
        }
      }
      if (localObject2 != null) {
        return (T)localObject2;
      }
      localObject2 = (d)A.get(paramString);
      if (localObject2 != null)
      {
        localObject2 = b;
        if (localObject2 == a) {
          return paramT;
        }
        if (localObject2 != null) {
          return (T)localObject2;
        }
      }
      if (paramo != null)
      {
        t.a(paramString, paramo);
        return paramo;
      }
      return paramT;
    }
  }
  
  public void a()
  {
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    a(localCountDownLatch);
    try
    {
      localCountDownLatch.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  /* Error */
  void a(com.dianxinos.library.b.b.b.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 81	com/dianxinos/library/b/b/d/q:r	Lcom/dianxinos/library/b/b/d/t;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 81	com/dianxinos/library/b/b/d/q:r	Lcom/dianxinos/library/b/b/d/t;
    //   11: invokevirtual 221	com/dianxinos/library/b/b/d/t:c	()V
    //   14: aload_3
    //   15: monitorexit
    //   16: aload_0
    //   17: monitorenter
    //   18: aload_0
    //   19: iconst_0
    //   20: putfield 58	com/dianxinos/library/b/b/d/q:y	Z
    //   23: aload_1
    //   24: ifnonnull +20 -> 44
    //   27: aload_0
    //   28: iconst_1
    //   29: putfield 54	com/dianxinos/library/b/b/d/q:w	Z
    //   32: aload_0
    //   33: invokevirtual 224	java/lang/Object:notifyAll	()V
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: astore_1
    //   40: aload_3
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    //   44: aload_0
    //   45: aload_1
    //   46: putfield 100	com/dianxinos/library/b/b/d/q:v	Lcom/dianxinos/library/b/b/b/a;
    //   49: aload_0
    //   50: getfield 96	com/dianxinos/library/b/b/d/q:u	Lcom/dianxinos/library/b/b/c/a;
    //   53: invokevirtual 225	com/dianxinos/library/b/b/c/a:a	()Z
    //   56: ifne +75 -> 131
    //   59: aload_0
    //   60: getfield 96	com/dianxinos/library/b/b/d/q:u	Lcom/dianxinos/library/b/b/c/a;
    //   63: invokevirtual 227	com/dianxinos/library/b/b/c/a:b	()Z
    //   66: istore_2
    //   67: iload_2
    //   68: ifne +20 -> 88
    //   71: aload_0
    //   72: iconst_1
    //   73: putfield 54	com/dianxinos/library/b/b/d/q:w	Z
    //   76: aload_0
    //   77: invokevirtual 224	java/lang/Object:notifyAll	()V
    //   80: aload_0
    //   81: monitorexit
    //   82: return
    //   83: astore_1
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_1
    //   87: athrow
    //   88: aload_0
    //   89: invokespecial 229	com/dianxinos/library/b/b/d/q:c	()Z
    //   92: istore_2
    //   93: iload_2
    //   94: ifne +15 -> 109
    //   97: aload_0
    //   98: iconst_1
    //   99: putfield 54	com/dianxinos/library/b/b/d/q:w	Z
    //   102: aload_0
    //   103: invokevirtual 224	java/lang/Object:notifyAll	()V
    //   106: aload_0
    //   107: monitorexit
    //   108: return
    //   109: aload_0
    //   110: iconst_1
    //   111: putfield 58	com/dianxinos/library/b/b/d/q:y	Z
    //   114: aload_0
    //   115: iconst_0
    //   116: putfield 56	com/dianxinos/library/b/b/d/q:x	Z
    //   119: aload_0
    //   120: iconst_1
    //   121: putfield 54	com/dianxinos/library/b/b/d/q:w	Z
    //   124: aload_0
    //   125: invokevirtual 224	java/lang/Object:notifyAll	()V
    //   128: aload_0
    //   129: monitorexit
    //   130: return
    //   131: aload_0
    //   132: ldc 119
    //   134: invokevirtual 122	com/dianxinos/library/b/b/d/q:b	(Ljava/lang/String;)Ljava/lang/String;
    //   137: astore_1
    //   138: aload_0
    //   139: getfield 96	com/dianxinos/library/b/b/d/q:u	Lcom/dianxinos/library/b/b/c/a;
    //   142: aload_1
    //   143: invokevirtual 199	com/dianxinos/library/b/b/c/a:a	(Ljava/lang/String;)[B
    //   146: astore_3
    //   147: aload_3
    //   148: ifnonnull +24 -> 172
    //   151: aload_0
    //   152: invokespecial 229	com/dianxinos/library/b/b/d/q:c	()Z
    //   155: istore_2
    //   156: iload_2
    //   157: ifne +38 -> 195
    //   160: aload_0
    //   161: iconst_1
    //   162: putfield 54	com/dianxinos/library/b/b/d/q:w	Z
    //   165: aload_0
    //   166: invokevirtual 224	java/lang/Object:notifyAll	()V
    //   169: aload_0
    //   170: monitorexit
    //   171: return
    //   172: aload_0
    //   173: aload_1
    //   174: aload_3
    //   175: invokespecial 231	com/dianxinos/library/b/b/d/q:a	(Ljava/lang/String;[B)Z
    //   178: istore_2
    //   179: iload_2
    //   180: ifne +15 -> 195
    //   183: aload_0
    //   184: iconst_1
    //   185: putfield 54	com/dianxinos/library/b/b/d/q:w	Z
    //   188: aload_0
    //   189: invokevirtual 224	java/lang/Object:notifyAll	()V
    //   192: aload_0
    //   193: monitorexit
    //   194: return
    //   195: aload_0
    //   196: iconst_1
    //   197: putfield 58	com/dianxinos/library/b/b/d/q:y	Z
    //   200: aload_0
    //   201: iconst_0
    //   202: putfield 56	com/dianxinos/library/b/b/d/q:x	Z
    //   205: goto -86 -> 119
    //   208: astore_1
    //   209: aload_0
    //   210: iconst_1
    //   211: putfield 54	com/dianxinos/library/b/b/d/q:w	Z
    //   214: aload_0
    //   215: invokevirtual 224	java/lang/Object:notifyAll	()V
    //   218: aload_1
    //   219: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	220	0	this	q
    //   0	220	1	parama	com.dianxinos.library.b.b.b.a
    //   66	114	2	bool	boolean
    //   4	171	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   7	16	39	finally
    //   40	42	39	finally
    //   18	23	83	finally
    //   27	38	83	finally
    //   71	82	83	finally
    //   84	86	83	finally
    //   97	108	83	finally
    //   119	130	83	finally
    //   160	171	83	finally
    //   183	194	83	finally
    //   209	220	83	finally
    //   44	67	208	finally
    //   88	93	208	finally
    //   109	119	208	finally
    //   131	147	208	finally
    //   151	156	208	finally
    //   172	179	208	finally
    //   195	205	208	finally
  }
  
  public void a(CountDownLatch paramCountDownLatch)
  {
    Object localObject1 = null;
    if ((!w) || (!y))
    {
      paramCountDownLatch.countDown();
      return;
    }
    synchronized (s)
    {
      if (A.containsKey(null))
      {
        d locald = (d)A.remove(null);
        localObject1 = (Runnable)b;
        locald.b();
      }
      paramCountDownLatch = new r(this, (Runnable)localObject1, paramCountDownLatch);
      localObject1 = d.a();
      a = null;
      b = paramCountDownLatch;
      c = null;
      A.put(null, localObject1);
      a(true, true);
      return;
    }
  }
  
  protected <T> boolean a(String paramString, T paramT, p<?> paramp)
  {
    if (!d()) {
      return false;
    }
    e();
    synchronized (s)
    {
      Object localObject2 = t.a(paramString);
      if ((localObject2 != null) && (localObject2.equals(paramT))) {
        return true;
      }
      t.a(paramString, paramT);
      localObject2 = d.a();
      a = paramString;
      b = paramT;
      c = paramp;
      A.put(paramString, localObject2);
      a(false);
      return true;
    }
  }
  
  public boolean a(boolean paramBoolean)
  {
    return a(paramBoolean, false);
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = C;
    if (!paramBoolean1) {}
    for (;;)
    {
      try
      {
        if (!B.a)
        {
          B.a = true;
          if (paramBoolean2) {
            i.a(B);
          }
        }
        else
        {
          return true;
        }
        s locals = B;
        int i;
        if (paramBoolean1)
        {
          i = 100;
          i.a(locals, i);
        }
        else
        {
          i = 1000;
        }
      }
      finally {}
    }
  }
  
  String b(String paramString)
  {
    return com.dianxinos.library.b.b.b.b.a(q + paramString);
  }
  
  public boolean b()
  {
    if ((w) && (!y)) {
      return true;
    }
    return x;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.d.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */