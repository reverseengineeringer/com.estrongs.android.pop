package com.estrongs.android.pop.app.editor;

import java.util.ArrayList;

public class an
{
  private static final String a = an.class.getSimpleName();
  private int b = 10240;
  private ArrayList<ao> c = new ArrayList();
  
  public ao a(int paramInt)
  {
    ao localao3 = null;
    ao localao1 = localao3;
    if (paramInt > 0) {}
    for (;;)
    {
      try
      {
        int i = c.size();
        if (i == 0)
        {
          localao1 = localao3;
          return localao1;
        }
        i = 0;
        localao1 = null;
        if (i < c.size())
        {
          localao3 = (ao)c.get(i);
          if (a <= paramInt) {}
        }
        else
        {
          localao1 = (ao)c.get(c.size() - 1);
          continue;
        }
        i += 1;
      }
      finally {}
      ao localao2 = localao3;
    }
  }
  
  public ao a(long paramLong)
  {
    ao localao3 = null;
    ao localao1 = localao3;
    if (paramLong > 0L) {}
    for (;;)
    {
      try
      {
        int i = c.size();
        if (i == 0)
        {
          localao1 = localao3;
          return localao1;
        }
        i = 0;
        localao1 = null;
        if (i < c.size())
        {
          localao3 = (ao)c.get(i);
          if (b <= paramLong) {}
        }
        else
        {
          localao1 = (ao)c.get(c.size() - 1);
          continue;
        }
        i += 1;
      }
      finally {}
      ao localao2 = localao3;
    }
  }
  
  public void a(int paramInt, long paramLong)
  {
    for (;;)
    {
      try
      {
        if (c.size() == 0)
        {
          c.add(new ao(this, paramInt, paramLong));
          return;
        }
        if ((paramInt < c.get(0)).a) && (c.get(0)).b - paramLong >= b))
        {
          c.add(0, new ao(this, paramInt, paramLong));
          continue;
        }
        if (paramInt <= c.get(c.size() - 1)).a) {
          continue;
        }
      }
      finally {}
      if (paramLong - c.get(c.size() - 1)).b >= b) {
        c.add(new ao(this, paramInt, paramLong));
      }
    }
  }
  
  /* Error */
  public void b(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 32	com/estrongs/android/pop/app/editor/an:c	Ljava/util/ArrayList;
    //   6: invokevirtual 37	java/util/ArrayList:size	()I
    //   9: ifle +34 -> 43
    //   12: aload_0
    //   13: getfield 32	com/estrongs/android/pop/app/editor/an:c	Ljava/util/ArrayList;
    //   16: aload_0
    //   17: getfield 32	com/estrongs/android/pop/app/editor/an:c	Ljava/util/ArrayList;
    //   20: invokevirtual 37	java/util/ArrayList:size	()I
    //   23: iconst_1
    //   24: isub
    //   25: invokevirtual 41	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   28: checkcast 43	com/estrongs/android/pop/app/editor/ao
    //   31: getfield 49	com/estrongs/android/pop/app/editor/ao:b	J
    //   34: lstore 4
    //   36: lload_1
    //   37: lload 4
    //   39: lcmp
    //   40: ifle +6 -> 46
    //   43: aload_0
    //   44: monitorexit
    //   45: return
    //   46: iconst_0
    //   47: istore_3
    //   48: iload_3
    //   49: aload_0
    //   50: getfield 32	com/estrongs/android/pop/app/editor/an:c	Ljava/util/ArrayList;
    //   53: invokevirtual 37	java/util/ArrayList:size	()I
    //   56: if_icmpge -13 -> 43
    //   59: aload_0
    //   60: getfield 32	com/estrongs/android/pop/app/editor/an:c	Ljava/util/ArrayList;
    //   63: iload_3
    //   64: invokevirtual 41	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   67: checkcast 43	com/estrongs/android/pop/app/editor/ao
    //   70: getfield 49	com/estrongs/android/pop/app/editor/ao:b	J
    //   73: lload_1
    //   74: lcmp
    //   75: ifle +12 -> 87
    //   78: aload_0
    //   79: getfield 32	com/estrongs/android/pop/app/editor/an:c	Ljava/util/ArrayList;
    //   82: iload_3
    //   83: invokevirtual 64	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   86: pop
    //   87: iload_3
    //   88: iconst_1
    //   89: iadd
    //   90: istore_3
    //   91: goto -43 -> 48
    //   94: astore 6
    //   96: aload_0
    //   97: monitorexit
    //   98: aload 6
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	an
    //   0	101	1	paramLong	long
    //   47	44	3	i	int
    //   34	4	4	l	long
    //   94	5	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	36	94	finally
    //   48	87	94	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */