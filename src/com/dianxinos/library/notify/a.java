package com.dianxinos.library.notify;

import java.util.LinkedList;
import java.util.List;

public class a
{
  private static final List<a> i = new LinkedList();
  public String a;
  public String b;
  public String c;
  public String d;
  public long e;
  public long f;
  public int g;
  public int h;
  private boolean j = false;
  
  public static a a()
  {
    a locala = null;
    synchronized (i)
    {
      if (i.size() > 0) {
        locala = (a)i.remove(0);
      }
      ??? = locala;
      if (locala == null) {
        ??? = new a();
      }
      j = false;
      return (a)???;
    }
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 29	com/dianxinos/library/notify/a:i	Ljava/util/List;
    //   5: astore_1
    //   6: aload_1
    //   7: monitorenter
    //   8: getstatic 29	com/dianxinos/library/notify/a:i	Ljava/util/List;
    //   11: invokeinterface 40 1 0
    //   16: bipush 24
    //   18: if_icmpge +20 -> 38
    //   21: getstatic 29	com/dianxinos/library/notify/a:i	Ljava/util/List;
    //   24: getstatic 29	com/dianxinos/library/notify/a:i	Ljava/util/List;
    //   27: invokeinterface 40 1 0
    //   32: aload_0
    //   33: invokeinterface 49 3 0
    //   38: aload_1
    //   39: monitorexit
    //   40: aload_0
    //   41: iconst_1
    //   42: putfield 33	com/dianxinos/library/notify/a:j	Z
    //   45: aload_0
    //   46: aconst_null
    //   47: putfield 51	com/dianxinos/library/notify/a:a	Ljava/lang/String;
    //   50: aload_0
    //   51: aconst_null
    //   52: putfield 53	com/dianxinos/library/notify/a:b	Ljava/lang/String;
    //   55: aload_0
    //   56: aconst_null
    //   57: putfield 55	com/dianxinos/library/notify/a:c	Ljava/lang/String;
    //   60: aload_0
    //   61: aconst_null
    //   62: putfield 57	com/dianxinos/library/notify/a:d	Ljava/lang/String;
    //   65: aload_0
    //   66: lconst_0
    //   67: putfield 59	com/dianxinos/library/notify/a:e	J
    //   70: aload_0
    //   71: lconst_0
    //   72: putfield 61	com/dianxinos/library/notify/a:f	J
    //   75: aload_0
    //   76: iconst_0
    //   77: putfield 63	com/dianxinos/library/notify/a:g	I
    //   80: aload_0
    //   81: iconst_0
    //   82: putfield 65	com/dianxinos/library/notify/a:h	I
    //   85: aload_0
    //   86: monitorexit
    //   87: return
    //   88: astore_2
    //   89: aload_1
    //   90: monitorexit
    //   91: aload_2
    //   92: athrow
    //   93: astore_1
    //   94: aload_0
    //   95: monitorexit
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	a
    //   93	4	1	localObject1	Object
    //   88	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   8	38	88	finally
    //   38	40	88	finally
    //   89	91	88	finally
    //   2	8	93	finally
    //   40	85	93	finally
    //   91	93	93	finally
  }
  
  protected void finalize()
  {
    try
    {
      if (!j) {
        b();
      }
      super.finalize();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */