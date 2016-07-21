package com.estrongs.android.recommand.provider;

import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;
import com.estrongs.android.util.l;

class GlispaAppProvider$1
  implements af
{
  GlispaAppProvider$1(GlispaAppProvider paramGlispaAppProvider) {}
  
  /* Error */
  public void downloadCompleted(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/estrongs/android/recommand/provider/GlispaAppProvider$1:this$0	Lcom/estrongs/android/recommand/provider/GlispaAppProvider;
    //   4: invokestatic 24	java/lang/System:currentTimeMillis	()J
    //   7: ldc2_w 25
    //   10: ldiv
    //   11: invokestatic 32	com/estrongs/android/recommand/provider/GlispaAppProvider:access$202	(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;J)J
    //   14: pop2
    //   15: aload_1
    //   16: checkcast 34	com/estrongs/android/util/aa
    //   19: getfield 38	com/estrongs/android/util/aa:e	Ljava/lang/Object;
    //   22: checkcast 40	java/util/List
    //   25: astore_1
    //   26: aload_1
    //   27: aload_0
    //   28: getfield 12	com/estrongs/android/recommand/provider/GlispaAppProvider$1:this$0	Lcom/estrongs/android/recommand/provider/GlispaAppProvider;
    //   31: invokestatic 44	com/estrongs/android/recommand/provider/GlispaAppProvider:access$300	(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;)Ljava/util/List;
    //   34: invokeinterface 48 2 0
    //   39: pop
    //   40: aload_1
    //   41: monitorenter
    //   42: aload_0
    //   43: getfield 12	com/estrongs/android/recommand/provider/GlispaAppProvider$1:this$0	Lcom/estrongs/android/recommand/provider/GlispaAppProvider;
    //   46: iconst_0
    //   47: invokestatic 52	com/estrongs/android/recommand/provider/GlispaAppProvider:access$102	(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;I)I
    //   50: pop
    //   51: aload_1
    //   52: invokevirtual 55	java/lang/Object:notifyAll	()V
    //   55: aload_1
    //   56: monitorexit
    //   57: return
    //   58: astore_2
    //   59: aload_1
    //   60: monitorexit
    //   61: aload_2
    //   62: athrow
    //   63: astore_2
    //   64: aload_1
    //   65: monitorenter
    //   66: aload_0
    //   67: getfield 12	com/estrongs/android/recommand/provider/GlispaAppProvider$1:this$0	Lcom/estrongs/android/recommand/provider/GlispaAppProvider;
    //   70: iconst_0
    //   71: invokestatic 52	com/estrongs/android/recommand/provider/GlispaAppProvider:access$102	(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;I)I
    //   74: pop
    //   75: aload_1
    //   76: invokevirtual 55	java/lang/Object:notifyAll	()V
    //   79: aload_1
    //   80: monitorexit
    //   81: aload_2
    //   82: athrow
    //   83: astore_2
    //   84: aload_1
    //   85: monitorexit
    //   86: aload_2
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	1
    //   0	88	1	paramObject	Object
    //   58	4	2	localObject1	Object
    //   63	19	2	localObject2	Object
    //   83	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   42	57	58	finally
    //   59	61	58	finally
    //   26	40	63	finally
    //   66	81	83	finally
    //   84	86	83	finally
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    l.c(GlispaAppProvider.access$000(), "downloadError!", paramThrowable);
    GlispaAppProvider.access$102(this$0, 3001);
    paramObject = (aa)paramObject;
    ((Thread)d).interrupt();
    ((aa)paramObject).h();
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.recommand.provider.GlispaAppProvider.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */