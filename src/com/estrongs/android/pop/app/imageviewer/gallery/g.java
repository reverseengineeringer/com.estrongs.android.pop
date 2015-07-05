package com.estrongs.android.pop.app.imageviewer.gallery;

import java.lang.ref.ReferenceQueue;
import java.util.HashMap;

public class g<K, V>
{
  private final HashMap<K, V> a;
  private final HashMap<K, h<K, V>> b = new HashMap();
  private ReferenceQueue<V> c = new ReferenceQueue();
  
  public g()
  {
    this(512);
  }
  
  public g(int paramInt)
  {
    a = new LruCache.1(this, 16, 0.75F, true, paramInt);
  }
  
  private void b()
  {
    for (h localh = (h)c.poll(); localh != null; localh = (h)c.poll()) {
      b.remove(a);
    }
  }
  
  /* Error */
  public V a(K paramK)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 54	com/estrongs/android/pop/app/imageviewer/gallery/g:b	()V
    //   6: aload_0
    //   7: getfield 39	com/estrongs/android/pop/app/imageviewer/gallery/g:a	Ljava/util/HashMap;
    //   10: aload_1
    //   11: invokevirtual 57	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   14: astore_2
    //   15: aload_2
    //   16: ifnull +9 -> 25
    //   19: aload_2
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: areturn
    //   25: aload_0
    //   26: getfield 26	com/estrongs/android/pop/app/imageviewer/gallery/g:b	Ljava/util/HashMap;
    //   29: aload_1
    //   30: invokevirtual 57	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   33: checkcast 45	com/estrongs/android/pop/app/imageviewer/gallery/h
    //   36: astore_1
    //   37: aload_1
    //   38: ifnonnull +8 -> 46
    //   41: aconst_null
    //   42: astore_1
    //   43: goto -22 -> 21
    //   46: aload_1
    //   47: invokevirtual 60	com/estrongs/android/pop/app/imageviewer/gallery/h:get	()Ljava/lang/Object;
    //   50: astore_1
    //   51: goto -30 -> 21
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	g
    //   0	59	1	paramK	K
    //   14	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	15	54	finally
    //   25	37	54	finally
    //   46	51	54	finally
  }
  
  /* Error */
  public V a(K paramK, V paramV)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 54	com/estrongs/android/pop/app/imageviewer/gallery/g:b	()V
    //   6: aload_0
    //   7: getfield 39	com/estrongs/android/pop/app/imageviewer/gallery/g:a	Ljava/util/HashMap;
    //   10: aload_1
    //   11: aload_2
    //   12: invokevirtual 66	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   15: pop
    //   16: aload_0
    //   17: getfield 26	com/estrongs/android/pop/app/imageviewer/gallery/g:b	Ljava/util/HashMap;
    //   20: aload_1
    //   21: new 45	com/estrongs/android/pop/app/imageviewer/gallery/h
    //   24: dup
    //   25: aload_1
    //   26: aload_2
    //   27: aload_0
    //   28: getfield 31	com/estrongs/android/pop/app/imageviewer/gallery/g:c	Ljava/lang/ref/ReferenceQueue;
    //   31: invokespecial 69	com/estrongs/android/pop/app/imageviewer/gallery/h:<init>	(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    //   34: invokevirtual 66	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   37: checkcast 45	com/estrongs/android/pop/app/imageviewer/gallery/h
    //   40: astore_1
    //   41: aload_1
    //   42: ifnonnull +9 -> 51
    //   45: aconst_null
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: areturn
    //   51: aload_1
    //   52: invokevirtual 60	com/estrongs/android/pop/app/imageviewer/gallery/h:get	()Ljava/lang/Object;
    //   55: astore_1
    //   56: goto -9 -> 47
    //   59: astore_1
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	g
    //   0	64	1	paramK	K
    //   0	64	2	paramV	V
    // Exception table:
    //   from	to	target	type
    //   2	41	59	finally
    //   51	56	59	finally
  }
  
  public void a()
  {
    try
    {
      a.clear();
      b.clear();
      c = new ReferenceQueue();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(K paramK)
  {
    try
    {
      a.remove(paramK);
      b.remove(paramK);
      return;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.gallery.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */