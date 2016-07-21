package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class w
{
  private final SparseArray<v> a = new SparseArray();
  private final jx<String, v> b = new jx();
  
  public v a(int paramInt)
  {
    try
    {
      v localv = (v)a.get(paramInt);
      return localv;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public v a(Context paramContext, String paramString)
  {
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        Object localObject;
        if (bool)
        {
          localObject = null;
          return (v)localObject;
        }
        Iterator localIterator = b.a(paramString).iterator();
        if (localIterator.hasNext())
        {
          localObject = (v)localIterator.next();
          if (paramContext.equals(((v)localObject).f()))
          {
            paramContext = (Context)localObject;
            localObject = paramContext;
            if (paramContext != null)
            {
              b.b(paramString, paramContext);
              b.a(paramString, paramContext);
              localObject = paramContext;
            }
          }
        }
        else
        {
          paramContext = null;
        }
      }
      finally {}
    }
  }
  
  /* Error */
  public v a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   8: istore_2
    //   9: iload_2
    //   10: ifeq +9 -> 19
    //   13: aload_3
    //   14: astore_1
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_1
    //   18: areturn
    //   19: aload_0
    //   20: getfield 24	com/flurry/sdk/w:b	Lcom/flurry/sdk/jx;
    //   23: aload_1
    //   24: invokevirtual 42	com/flurry/sdk/jx:a	(Ljava/lang/Object;)Ljava/util/List;
    //   27: astore 4
    //   29: aload_3
    //   30: astore_1
    //   31: aload 4
    //   33: invokeinterface 75 1 0
    //   38: ifne -23 -> 15
    //   41: aload 4
    //   43: aload 4
    //   45: invokeinterface 79 1 0
    //   50: iconst_1
    //   51: isub
    //   52: invokeinterface 80 2 0
    //   57: checkcast 32	com/flurry/sdk/v
    //   60: astore_1
    //   61: goto -46 -> 15
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	w
    //   0	69	1	paramString	String
    //   8	2	2	bool	boolean
    //   1	29	3	localObject	Object
    //   27	17	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   4	9	64	finally
    //   19	29	64	finally
    //   31	61	64	finally
  }
  
  public void a()
  {
    try
    {
      Iterator localIterator = b.d().iterator();
      while (localIterator.hasNext()) {
        ((v)localIterator.next()).n();
      }
    }
    finally {}
  }
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: getfield 24	com/flurry/sdk/w:b	Lcom/flurry/sdk/jx;
    //   13: invokevirtual 84	com/flurry/sdk/jx:d	()Ljava/util/Collection;
    //   16: invokeinterface 87 1 0
    //   21: astore_2
    //   22: aload_2
    //   23: invokeinterface 54 1 0
    //   28: ifeq -22 -> 6
    //   31: aload_2
    //   32: invokeinterface 58 1 0
    //   37: checkcast 32	com/flurry/sdk/v
    //   40: astore_3
    //   41: aload_1
    //   42: aload_3
    //   43: invokevirtual 62	com/flurry/sdk/v:f	()Landroid/content/Context;
    //   46: invokevirtual 66	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   49: ifeq -27 -> 22
    //   52: aload_3
    //   53: invokevirtual 94	com/flurry/sdk/v:c	()V
    //   56: goto -34 -> 22
    //   59: astore_1
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	w
    //   0	64	1	paramContext	Context
    //   21	11	2	localIterator	Iterator
    //   40	13	3	localv	v
    // Exception table:
    //   from	to	target	type
    //   9	22	59	finally
    //   22	56	59	finally
  }
  
  /* Error */
  public void a(Context paramContext, String paramString, v paramv)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +18 -> 21
    //   6: aload_2
    //   7: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   10: istore 4
    //   12: iload 4
    //   14: ifne +7 -> 21
    //   17: aload_3
    //   18: ifnonnull +6 -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield 19	com/flurry/sdk/w:a	Landroid/util/SparseArray;
    //   28: aload_3
    //   29: invokevirtual 98	com/flurry/sdk/v:e	()I
    //   32: aload_3
    //   33: invokevirtual 102	android/util/SparseArray:put	(ILjava/lang/Object;)V
    //   36: aload_0
    //   37: getfield 24	com/flurry/sdk/w:b	Lcom/flurry/sdk/jx;
    //   40: aload_2
    //   41: aload_3
    //   42: invokevirtual 72	com/flurry/sdk/jx:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   45: goto -24 -> 21
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	w
    //   0	53	1	paramContext	Context
    //   0	53	2	paramString	String
    //   0	53	3	paramv	v
    //   10	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   6	12	48	finally
    //   24	45	48	finally
  }
  
  /* Error */
  public boolean a(String paramString, v paramv)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +7 -> 15
    //   11: aload_2
    //   12: ifnonnull +9 -> 21
    //   15: iconst_0
    //   16: istore_3
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_3
    //   20: ireturn
    //   21: aload_0
    //   22: getfield 19	com/flurry/sdk/w:a	Landroid/util/SparseArray;
    //   25: aload_2
    //   26: invokevirtual 98	com/flurry/sdk/v:e	()I
    //   29: invokevirtual 107	android/util/SparseArray:remove	(I)V
    //   32: aload_0
    //   33: getfield 24	com/flurry/sdk/w:b	Lcom/flurry/sdk/jx;
    //   36: aload_1
    //   37: aload_2
    //   38: invokevirtual 69	com/flurry/sdk/jx:b	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   41: istore_3
    //   42: goto -25 -> 17
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	w
    //   0	50	1	paramString	String
    //   0	50	2	paramv	v
    //   6	36	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	45	finally
    //   21	42	45	finally
  }
  
  /* Error */
  public void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: getfield 24	com/flurry/sdk/w:b	Lcom/flurry/sdk/jx;
    //   13: invokevirtual 84	com/flurry/sdk/jx:d	()Ljava/util/Collection;
    //   16: invokeinterface 87 1 0
    //   21: astore_2
    //   22: aload_2
    //   23: invokeinterface 54 1 0
    //   28: ifeq -22 -> 6
    //   31: aload_2
    //   32: invokeinterface 58 1 0
    //   37: checkcast 32	com/flurry/sdk/v
    //   40: astore_3
    //   41: aload_1
    //   42: aload_3
    //   43: invokevirtual 62	com/flurry/sdk/v:f	()Landroid/content/Context;
    //   46: invokevirtual 66	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   49: ifeq -27 -> 22
    //   52: aload_3
    //   53: invokevirtual 109	com/flurry/sdk/v:d	()V
    //   56: goto -34 -> 22
    //   59: astore_1
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	w
    //   0	64	1	paramContext	Context
    //   21	11	2	localIterator	Iterator
    //   40	13	3	localv	v
    // Exception table:
    //   from	to	target	type
    //   9	22	59	finally
    //   22	56	59	finally
  }
  
  /* Error */
  public void b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +12 -> 15
    //   6: aload_2
    //   7: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   10: istore_3
    //   11: iload_3
    //   12: ifeq +6 -> 18
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: aload_0
    //   19: aload_1
    //   20: aload_2
    //   21: invokevirtual 112	com/flurry/sdk/w:a	(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/sdk/v;
    //   24: astore_1
    //   25: aload_1
    //   26: ifnull -11 -> 15
    //   29: aload_0
    //   30: getfield 24	com/flurry/sdk/w:b	Lcom/flurry/sdk/jx;
    //   33: aload_2
    //   34: aload_1
    //   35: invokevirtual 69	com/flurry/sdk/jx:b	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   38: pop
    //   39: aload_1
    //   40: invokevirtual 114	com/flurry/sdk/v:a	()V
    //   43: goto -28 -> 15
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	w
    //   0	51	1	paramContext	Context
    //   0	51	2	paramString	String
    //   10	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   6	11	46	finally
    //   18	25	46	finally
    //   29	43	46	finally
  }
  
  /* Error */
  public void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: getfield 24	com/flurry/sdk/w:b	Lcom/flurry/sdk/jx;
    //   13: invokevirtual 84	com/flurry/sdk/jx:d	()Ljava/util/Collection;
    //   16: invokeinterface 87 1 0
    //   21: astore_2
    //   22: aload_2
    //   23: invokeinterface 54 1 0
    //   28: ifeq -22 -> 6
    //   31: aload_2
    //   32: invokeinterface 58 1 0
    //   37: checkcast 32	com/flurry/sdk/v
    //   40: astore_3
    //   41: aload_1
    //   42: aload_3
    //   43: invokevirtual 62	com/flurry/sdk/v:f	()Landroid/content/Context;
    //   46: invokevirtual 66	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   49: ifeq -27 -> 22
    //   52: aload_2
    //   53: invokeinterface 116 1 0
    //   58: aload_3
    //   59: invokevirtual 114	com/flurry/sdk/v:a	()V
    //   62: goto -40 -> 22
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	w
    //   0	70	1	paramContext	Context
    //   21	32	2	localIterator	Iterator
    //   40	19	3	localv	v
    // Exception table:
    //   from	to	target	type
    //   9	22	65	finally
    //   22	62	65	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */