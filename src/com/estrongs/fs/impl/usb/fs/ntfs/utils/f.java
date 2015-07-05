package com.estrongs.fs.impl.usb.fs.ntfs.utils;

import java.util.ArrayList;

public class f<T>
{
  private final ArrayList<T> a = new ArrayList();
  private boolean b = false;
  
  public T a()
  {
    return (T)a(true, 0L);
  }
  
  /* Error */
  public T a(boolean paramBoolean, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: getfield 19	com/estrongs/fs/impl/usb/fs/ntfs/utils/f:a	Ljava/util/ArrayList;
    //   9: invokevirtual 34	java/util/ArrayList:isEmpty	()Z
    //   12: ifeq +63 -> 75
    //   15: aload_0
    //   16: getfield 21	com/estrongs/fs/impl/usb/fs/ntfs/utils/f:b	Z
    //   19: istore 4
    //   21: aload 6
    //   23: astore 5
    //   25: iload 4
    //   27: ifne +15 -> 42
    //   30: lload_2
    //   31: ldc2_w 35
    //   34: lcmp
    //   35: ifne +12 -> 47
    //   38: aload 6
    //   40: astore 5
    //   42: aload_0
    //   43: monitorexit
    //   44: aload 5
    //   46: areturn
    //   47: aload_0
    //   48: lload_2
    //   49: invokevirtual 40	java/lang/Object:wait	(J)V
    //   52: lload_2
    //   53: lconst_0
    //   54: lcmp
    //   55: ifeq -50 -> 5
    //   58: aload_0
    //   59: getfield 19	com/estrongs/fs/impl/usb/fs/ntfs/utils/f:a	Ljava/util/ArrayList;
    //   62: invokevirtual 34	java/util/ArrayList:isEmpty	()Z
    //   65: ifeq -60 -> 5
    //   68: aload 6
    //   70: astore 5
    //   72: goto -30 -> 42
    //   75: aload_0
    //   76: getfield 19	com/estrongs/fs/impl/usb/fs/ntfs/utils/f:a	Ljava/util/ArrayList;
    //   79: iconst_0
    //   80: invokevirtual 44	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   83: astore 5
    //   85: goto -43 -> 42
    //   88: astore 5
    //   90: aload_0
    //   91: monitorexit
    //   92: aload 5
    //   94: athrow
    //   95: astore 5
    //   97: iload_1
    //   98: ifne -46 -> 52
    //   101: aload 6
    //   103: astore 5
    //   105: goto -63 -> 42
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	f
    //   0	108	1	paramBoolean	boolean
    //   0	108	2	paramLong	long
    //   19	7	4	bool	boolean
    //   23	61	5	localObject1	Object
    //   88	5	5	localObject2	Object
    //   95	1	5	localInterruptedException	InterruptedException
    //   103	1	5	localObject3	Object
    //   1	101	6	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   5	21	88	finally
    //   47	52	88	finally
    //   58	68	88	finally
    //   75	85	88	finally
    //   47	52	95	java/lang/InterruptedException
  }
  
  public void a(T paramT)
  {
    try
    {
      if (b) {
        throw new SecurityException("Cannot add to a closed queue.");
      }
    }
    finally {}
    a.add(paramT);
    notifyAll();
  }
  
  public boolean b()
  {
    return a.isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.utils.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */