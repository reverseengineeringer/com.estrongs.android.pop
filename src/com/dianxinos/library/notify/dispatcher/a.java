package com.dianxinos.library.notify.dispatcher;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.download.h;
import com.dianxinos.library.notify.download.i;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a
{
  private static a a = new a(1);
  private static a b = new a(1);
  private final Map<String, i> c = new LinkedHashMap();
  private final Map<String, i> d = new LinkedHashMap();
  private int e = 1;
  
  public a(int paramInt)
  {
    e = paramInt;
  }
  
  public static a a()
  {
    return a;
  }
  
  public static a b()
  {
    return b;
  }
  
  /* Error */
  public boolean a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 31	com/dianxinos/library/notify/dispatcher/a:c	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 43 2 0
    //   12: ifne +18 -> 30
    //   15: aload_0
    //   16: getfield 33	com/dianxinos/library/notify/dispatcher/a:d	Ljava/util/Map;
    //   19: aload_1
    //   20: invokeinterface 43 2 0
    //   25: istore_2
    //   26: iload_2
    //   27: ifeq +9 -> 36
    //   30: iconst_1
    //   31: istore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: iload_2
    //   35: ireturn
    //   36: iconst_0
    //   37: istore_2
    //   38: goto -6 -> 32
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	a
    //   0	46	1	paramString	String
    //   25	13	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	26	41	finally
  }
  
  /* Error */
  public boolean a(String paramString, i parami)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: invokestatic 50	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: istore_3
    //   10: iload_3
    //   11: ifeq +10 -> 21
    //   14: iload 4
    //   16: istore_3
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_3
    //   20: ireturn
    //   21: iload 4
    //   23: istore_3
    //   24: aload_1
    //   25: aload_2
    //   26: getfield 55	com/dianxinos/library/notify/download/i:a	Ljava/lang/String;
    //   29: aload_2
    //   30: getfield 57	com/dianxinos/library/notify/download/i:b	Ljava/lang/String;
    //   33: invokestatic 62	com/dianxinos/library/notify/download/o:c	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   36: invokevirtual 67	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   39: ifeq -22 -> 17
    //   42: iload 4
    //   44: istore_3
    //   45: aload_0
    //   46: getfield 31	com/dianxinos/library/notify/dispatcher/a:c	Ljava/util/Map;
    //   49: aload_1
    //   50: invokeinterface 43 2 0
    //   55: ifne -38 -> 17
    //   58: iload 4
    //   60: istore_3
    //   61: aload_0
    //   62: getfield 33	com/dianxinos/library/notify/dispatcher/a:d	Ljava/util/Map;
    //   65: aload_1
    //   66: invokeinterface 43 2 0
    //   71: ifne -54 -> 17
    //   74: aload_0
    //   75: getfield 31	com/dianxinos/library/notify/dispatcher/a:c	Ljava/util/Map;
    //   78: aload_1
    //   79: aload_2
    //   80: invokeinterface 71 3 0
    //   85: pop
    //   86: iconst_1
    //   87: istore_3
    //   88: goto -71 -> 17
    //   91: astore_1
    //   92: aload_0
    //   93: monitorexit
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	a
    //   0	96	1	paramString	String
    //   0	96	2	parami	i
    //   9	79	3	bool1	boolean
    //   1	58	4	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   5	10	91	finally
    //   24	42	91	finally
    //   45	58	91	finally
    //   61	86	91	finally
  }
  
  /* Error */
  public boolean b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: invokestatic 50	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   8: istore_3
    //   9: iload_3
    //   10: ifeq +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: getstatic 76	com/dianxinos/library/dxbase/e:c	Z
    //   20: ifeq +50 -> 70
    //   23: new 78	java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   30: ldc 81
    //   32: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_0
    //   36: getfield 31	com/dianxinos/library/notify/dispatcher/a:c	Ljava/util/Map;
    //   39: invokeinterface 89 1 0
    //   44: invokevirtual 92	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   47: ldc 94
    //   49: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: aload_0
    //   53: getfield 33	com/dianxinos/library/notify/dispatcher/a:d	Ljava/util/Map;
    //   56: invokeinterface 89 1 0
    //   61: invokevirtual 92	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   64: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 103	com/dianxinos/library/dxbase/j:b	(Ljava/lang/String;)V
    //   70: aload_0
    //   71: getfield 33	com/dianxinos/library/notify/dispatcher/a:d	Ljava/util/Map;
    //   74: aload_1
    //   75: invokeinterface 43 2 0
    //   80: ifeq +19 -> 99
    //   83: aload_0
    //   84: getfield 33	com/dianxinos/library/notify/dispatcher/a:d	Ljava/util/Map;
    //   87: aload_1
    //   88: invokeinterface 107 2 0
    //   93: pop
    //   94: iconst_1
    //   95: istore_2
    //   96: goto -83 -> 13
    //   99: aload_0
    //   100: getfield 31	com/dianxinos/library/notify/dispatcher/a:c	Ljava/util/Map;
    //   103: aload_1
    //   104: invokeinterface 43 2 0
    //   109: ifeq -96 -> 13
    //   112: aload_0
    //   113: getfield 31	com/dianxinos/library/notify/dispatcher/a:c	Ljava/util/Map;
    //   116: aload_1
    //   117: invokeinterface 107 2 0
    //   122: pop
    //   123: iconst_1
    //   124: istore_2
    //   125: goto -112 -> 13
    //   128: astore_1
    //   129: aload_0
    //   130: monitorexit
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	a
    //   0	133	1	paramString	String
    //   1	124	2	bool1	boolean
    //   8	2	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   4	9	128	finally
    //   17	70	128	finally
    //   70	94	128	finally
    //   99	123	128	finally
  }
  
  public boolean c()
  {
    boolean bool = false;
    try
    {
      if (e.c) {
        j.b("execute waiting task size: " + c.size() + ", running task size: " + d.size());
      }
      int i = c.size();
      if (i == 0) {}
      for (;;)
      {
        return bool;
        if (d.size() < e)
        {
          Iterator localIterator = c.keySet().iterator();
          Object localObject2 = new LinkedList();
          for (bool = false; (d.size() < e) && (localIterator.hasNext()); bool = true)
          {
            String str = (String)localIterator.next();
            i locali = (i)c.get(str);
            d.put(str, locali);
            ((List)localObject2).add(str);
            h.a(locali);
          }
          localIterator = ((List)localObject2).iterator();
          while (localIterator.hasNext())
          {
            localObject2 = (String)localIterator.next();
            c.remove(localObject2);
          }
        }
      }
    }
    finally {}
  }
  
  /* Error */
  public boolean d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 33	com/dianxinos/library/notify/dispatcher/a:d	Ljava/util/Map;
    //   6: invokeinterface 150 1 0
    //   11: ifeq +23 -> 34
    //   14: aload_0
    //   15: getfield 31	com/dianxinos/library/notify/dispatcher/a:c	Ljava/util/Map;
    //   18: invokeinterface 150 1 0
    //   23: istore_1
    //   24: iload_1
    //   25: ifeq +9 -> 34
    //   28: iconst_1
    //   29: istore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_1
    //   33: ireturn
    //   34: iconst_0
    //   35: istore_1
    //   36: goto -6 -> 30
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	a
    //   23	13	1	bool	boolean
    //   39	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	24	39	finally
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.dispatcher.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */