package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.w;
import java.util.concurrent.Future;

@me
public class lq
  extends np
{
  private final ll a;
  private final AdResponseParcel b;
  private final nh c;
  private final ls d;
  private final Object e = new Object();
  private Future<ng> f;
  
  public lq(Context paramContext, w paramw, bj parambj, nh paramnh, aj paramaj, ll paramll)
  {
    this(paramnh, paramll, new ls(paramContext, paramw, parambj, new ox(paramContext), paramaj, paramnh));
  }
  
  lq(nh paramnh, ll paramll, ls paramls)
  {
    c = paramnh;
    b = b;
    a = paramll;
    d = paramls;
  }
  
  private ng a(int paramInt)
  {
    return new ng(c.a.d, null, null, paramInt, null, null, b.m, b.l, c.a.j, false, null, null, null, null, null, b.j, c.d, b.h, c.f, b.o, b.p, c.h, null, c.a.y);
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	com/google/android/gms/internal/lq:e	Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_0
    //   8: aload_0
    //   9: getfield 53	com/google/android/gms/internal/lq:d	Lcom/google/android/gms/internal/ls;
    //   12: invokestatic 117	com/google/android/gms/internal/nz:a	(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/po;
    //   15: putfield 119	com/google/android/gms/internal/lq:f	Ljava/util/concurrent/Future;
    //   18: aload_2
    //   19: monitorexit
    //   20: aload_0
    //   21: getfield 119	com/google/android/gms/internal/lq:f	Ljava/util/concurrent/Future;
    //   24: ldc2_w 120
    //   27: getstatic 127	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   30: invokeinterface 133 4 0
    //   35: checkcast 57	com/google/android/gms/internal/ng
    //   38: astore_2
    //   39: bipush -2
    //   41: istore_1
    //   42: aload_2
    //   43: ifnull +73 -> 116
    //   46: getstatic 138	com/google/android/gms/internal/oe:a	Landroid/os/Handler;
    //   49: new 140	com/google/android/gms/internal/lr
    //   52: dup
    //   53: aload_0
    //   54: aload_2
    //   55: invokespecial 143	com/google/android/gms/internal/lr:<init>	(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/ng;)V
    //   58: invokevirtual 149	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   61: pop
    //   62: return
    //   63: astore_3
    //   64: aload_2
    //   65: monitorexit
    //   66: aload_3
    //   67: athrow
    //   68: astore_2
    //   69: ldc -105
    //   71: invokestatic 156	com/google/android/gms/ads/internal/util/client/b:e	(Ljava/lang/String;)V
    //   74: aload_0
    //   75: getfield 119	com/google/android/gms/internal/lq:f	Ljava/util/concurrent/Future;
    //   78: iconst_1
    //   79: invokeinterface 160 2 0
    //   84: pop
    //   85: iconst_2
    //   86: istore_1
    //   87: aconst_null
    //   88: astore_2
    //   89: goto -47 -> 42
    //   92: astore_2
    //   93: iconst_0
    //   94: istore_1
    //   95: aconst_null
    //   96: astore_2
    //   97: goto -55 -> 42
    //   100: astore_2
    //   101: aconst_null
    //   102: astore_2
    //   103: iconst_m1
    //   104: istore_1
    //   105: goto -63 -> 42
    //   108: astore_2
    //   109: aconst_null
    //   110: astore_2
    //   111: iconst_m1
    //   112: istore_1
    //   113: goto -71 -> 42
    //   116: aload_0
    //   117: iload_1
    //   118: invokespecial 162	com/google/android/gms/internal/lq:a	(I)Lcom/google/android/gms/internal/ng;
    //   121: astore_2
    //   122: goto -76 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	lq
    //   41	77	1	i	int
    //   68	1	2	localTimeoutException	java.util.concurrent.TimeoutException
    //   88	1	2	localObject2	Object
    //   92	1	2	localExecutionException	java.util.concurrent.ExecutionException
    //   96	1	2	localObject3	Object
    //   100	1	2	localInterruptedException	InterruptedException
    //   102	1	2	localObject4	Object
    //   108	1	2	localCancellationException	java.util.concurrent.CancellationException
    //   110	12	2	localng	ng
    //   63	4	3	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   7	20	63	finally
    //   64	66	63	finally
    //   0	7	68	java/util/concurrent/TimeoutException
    //   20	39	68	java/util/concurrent/TimeoutException
    //   66	68	68	java/util/concurrent/TimeoutException
    //   0	7	92	java/util/concurrent/ExecutionException
    //   20	39	92	java/util/concurrent/ExecutionException
    //   66	68	92	java/util/concurrent/ExecutionException
    //   0	7	100	java/lang/InterruptedException
    //   20	39	100	java/lang/InterruptedException
    //   66	68	100	java/lang/InterruptedException
    //   0	7	108	java/util/concurrent/CancellationException
    //   20	39	108	java/util/concurrent/CancellationException
    //   66	68	108	java/util/concurrent/CancellationException
  }
  
  public void b()
  {
    synchronized (e)
    {
      if (f != null) {
        f.cancel(true);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */