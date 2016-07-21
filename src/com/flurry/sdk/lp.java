package com.flurry.sdk;

public class lp
{
  private static final String a = lp.class.getSimpleName();
  private long b = 1000L;
  private boolean c = true;
  private boolean d = false;
  private ly e = new lp.1(this);
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 35	com/flurry/sdk/lp:d	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 50	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   17: aload_0
    //   18: getfield 42	com/flurry/sdk/lp:e	Lcom/flurry/sdk/ly;
    //   21: aload_0
    //   22: getfield 31	com/flurry/sdk/lp:b	J
    //   25: invokevirtual 53	com/flurry/sdk/js:b	(Ljava/lang/Runnable;J)V
    //   28: aload_0
    //   29: iconst_1
    //   30: putfield 35	com/flurry/sdk/lp:d	Z
    //   33: goto -22 -> 11
    //   36: astore_2
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_2
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	lp
    //   6	2	1	bool	boolean
    //   36	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	36	finally
    //   14	33	36	finally
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 35	com/flurry/sdk/lp:d	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 50	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   17: aload_0
    //   18: getfield 42	com/flurry/sdk/lp:e	Lcom/flurry/sdk/ly;
    //   21: invokevirtual 58	com/flurry/sdk/js:c	(Ljava/lang/Runnable;)V
    //   24: aload_0
    //   25: iconst_0
    //   26: putfield 35	com/flurry/sdk/lp:d	Z
    //   29: goto -18 -> 11
    //   32: astore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_2
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	lp
    //   6	2	1	bool	boolean
    //   32	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	32	finally
    //   14	29	32	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */