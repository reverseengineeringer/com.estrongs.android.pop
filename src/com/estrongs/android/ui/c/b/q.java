package com.estrongs.android.ui.c.b;

import com.estrongs.android.ui.c.a.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class q
  extends Thread
{
  private ArrayList<a> b;
  private boolean c = false;
  
  public q(List<a> paramList)
  {
    Collection localCollection;
    b = new ArrayList(localCollection);
  }
  
  public void a()
  {
    c = true;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: iload_1
    //   3: aload_0
    //   4: getfield 27	com/estrongs/android/ui/c/b/q:b	Ljava/util/ArrayList;
    //   7: invokevirtual 37	java/util/ArrayList:size	()I
    //   10: if_icmpge +97 -> 107
    //   13: aload_0
    //   14: getfield 27	com/estrongs/android/ui/c/b/q:b	Ljava/util/ArrayList;
    //   17: iload_1
    //   18: invokevirtual 41	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   21: checkcast 43	com/estrongs/android/ui/c/a/f
    //   24: invokevirtual 46	com/estrongs/android/ui/c/a/f:a	()Ljava/lang/String;
    //   27: astore_3
    //   28: new 48	com/estrongs/android/ui/c/b/s
    //   31: dup
    //   32: invokespecial 49	com/estrongs/android/ui/c/b/s:<init>	()V
    //   35: astore_2
    //   36: aload_2
    //   37: aload_3
    //   38: putfield 52	com/estrongs/android/ui/c/b/s:a	Ljava/lang/String;
    //   41: aload_3
    //   42: invokestatic 58	com/estrongs/fs/util/j:k	(Ljava/lang/String;)[J
    //   45: astore_3
    //   46: aload_2
    //   47: aload_3
    //   48: iconst_0
    //   49: laload
    //   50: aload_3
    //   51: iconst_1
    //   52: laload
    //   53: lsub
    //   54: aload_3
    //   55: iconst_2
    //   56: laload
    //   57: lmul
    //   58: putfield 61	com/estrongs/android/ui/c/b/s:b	J
    //   61: aload_2
    //   62: aload_3
    //   63: iconst_0
    //   64: laload
    //   65: aload_3
    //   66: iconst_2
    //   67: laload
    //   68: lmul
    //   69: putfield 63	com/estrongs/android/ui/c/b/s:c	J
    //   72: aload_0
    //   73: getfield 20	com/estrongs/android/ui/c/b/q:c	Z
    //   76: ifeq +4 -> 80
    //   79: return
    //   80: aload_0
    //   81: getfield 15	com/estrongs/android/ui/c/b/q:a	Lcom/estrongs/android/ui/c/b/l;
    //   84: invokestatic 69	com/estrongs/android/ui/c/b/l:e	(Lcom/estrongs/android/ui/c/b/l;)Landroid/os/Handler;
    //   87: new 71	com/estrongs/android/ui/c/b/r
    //   90: dup
    //   91: aload_0
    //   92: aload_2
    //   93: invokespecial 74	com/estrongs/android/ui/c/b/r:<init>	(Lcom/estrongs/android/ui/c/b/q;Lcom/estrongs/android/ui/c/b/s;)V
    //   96: invokevirtual 80	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   99: pop
    //   100: iload_1
    //   101: iconst_1
    //   102: iadd
    //   103: istore_1
    //   104: goto -102 -> 2
    //   107: aload_0
    //   108: getfield 15	com/estrongs/android/ui/c/b/q:a	Lcom/estrongs/android/ui/c/b/l;
    //   111: invokestatic 83	com/estrongs/android/ui/c/b/l:b	(Lcom/estrongs/android/ui/c/b/l;)Ljava/lang/Object;
    //   114: astore_2
    //   115: aload_2
    //   116: monitorenter
    //   117: aload_0
    //   118: getfield 15	com/estrongs/android/ui/c/b/q:a	Lcom/estrongs/android/ui/c/b/l;
    //   121: aconst_null
    //   122: invokestatic 86	com/estrongs/android/ui/c/b/l:a	(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/q;)Lcom/estrongs/android/ui/c/b/q;
    //   125: pop
    //   126: aload_2
    //   127: monitorexit
    //   128: return
    //   129: astore_3
    //   130: aload_2
    //   131: monitorexit
    //   132: aload_3
    //   133: athrow
    //   134: astore_2
    //   135: aload_2
    //   136: invokevirtual 89	java/lang/Exception:printStackTrace	()V
    //   139: aload_0
    //   140: getfield 15	com/estrongs/android/ui/c/b/q:a	Lcom/estrongs/android/ui/c/b/l;
    //   143: invokestatic 83	com/estrongs/android/ui/c/b/l:b	(Lcom/estrongs/android/ui/c/b/l;)Ljava/lang/Object;
    //   146: astore_2
    //   147: aload_2
    //   148: monitorenter
    //   149: aload_0
    //   150: getfield 15	com/estrongs/android/ui/c/b/q:a	Lcom/estrongs/android/ui/c/b/l;
    //   153: aconst_null
    //   154: invokestatic 86	com/estrongs/android/ui/c/b/l:a	(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/q;)Lcom/estrongs/android/ui/c/b/q;
    //   157: pop
    //   158: aload_2
    //   159: monitorexit
    //   160: return
    //   161: astore_3
    //   162: aload_2
    //   163: monitorexit
    //   164: aload_3
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	this	q
    //   1	103	1	i	int
    //   134	2	2	localException	Exception
    //   27	39	3	localObject3	Object
    //   129	4	3	localObject4	Object
    //   161	4	3	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   117	128	129	finally
    //   130	132	129	finally
    //   2	79	134	java/lang/Exception
    //   80	100	134	java/lang/Exception
    //   107	117	134	java/lang/Exception
    //   132	134	134	java/lang/Exception
    //   149	160	161	finally
    //   162	164	161	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */