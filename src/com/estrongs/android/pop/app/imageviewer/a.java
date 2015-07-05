package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import java.lang.ref.SoftReference;

public class a
{
  private final f a;
  private final b[] b;
  
  public a(f paramf, int paramInt)
  {
    a = paramf;
    b = new b[paramInt];
    paramInt = 0;
    while (paramInt < b.length)
    {
      b[paramInt] = new b();
      paramInt += 1;
    }
  }
  
  private b c(e parame)
  {
    if (parame == null) {}
    for (;;)
    {
      return null;
      b[] arrayOfb = b;
      int j = arrayOfb.length;
      int i = 0;
      while (i < j)
      {
        b localb = arrayOfb[i];
        if (parame == a)
        {
          if (localb.b()) {
            return localb;
          }
          localb.c();
          return null;
        }
        i += 1;
      }
    }
  }
  
  /* Error */
  public an a(e parame)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 34	com/estrongs/android/pop/app/imageviewer/a:c	(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/b;
    //   7: astore_2
    //   8: aload_2
    //   9: ifnull +20 -> 29
    //   12: aload_2
    //   13: invokevirtual 37	com/estrongs/android/pop/app/imageviewer/b:a	()Lcom/estrongs/android/pop/app/imageviewer/an;
    //   16: astore_1
    //   17: aload_1
    //   18: ifnull +7 -> 25
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: areturn
    //   25: aload_2
    //   26: invokevirtual 31	com/estrongs/android/pop/app/imageviewer/b:c	()V
    //   29: aconst_null
    //   30: astore_1
    //   31: goto -10 -> 21
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	a
    //   0	39	1	parame	e
    //   7	19	2	localb	b
    // Exception table:
    //   from	to	target	type
    //   2	8	34	finally
    //   12	17	34	finally
    //   25	29	34	finally
  }
  
  public void a()
  {
    try
    {
      b[] arrayOfb = b;
      int j = arrayOfb.length;
      int i = 0;
      while (i < j)
      {
        arrayOfb[i].c();
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void a(e parame, SoftReference<an> paramSoftReference)
  {
    for (;;)
    {
      Object localObject1;
      int i;
      int j;
      try
      {
        localObject1 = c(parame);
        if (localObject1 != null) {
          return;
        }
        int m = a.a(parame);
        localObject1 = null;
        i = -1;
        b[] arrayOfb = b;
        int n = arrayOfb.length;
        j = 0;
        if (j >= n) {
          break label142;
        }
        localObject2 = arrayOfb[j];
        if (a == null)
        {
          ((b)localObject2).c();
          a = parame;
          b = paramSoftReference;
          continue;
        }
        k = Math.abs(m - a.a(a));
      }
      finally {}
      int k;
      if (k > i)
      {
        localObject1 = localObject2;
        i = k;
      }
      for (;;)
      {
        j += 1;
        break;
      }
      label142:
      Object localObject2 = localObject1;
    }
  }
  
  /* Error */
  public void b(e parame)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 34	com/estrongs/android/pop/app/imageviewer/a:c	(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/b;
    //   7: astore_1
    //   8: aload_1
    //   9: ifnonnull +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: aload_1
    //   16: invokevirtual 31	com/estrongs/android/pop/app/imageviewer/b:c	()V
    //   19: goto -7 -> 12
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	a
    //   0	27	1	parame	e
    // Exception table:
    //   from	to	target	type
    //   2	8	22	finally
    //   15	19	22	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */