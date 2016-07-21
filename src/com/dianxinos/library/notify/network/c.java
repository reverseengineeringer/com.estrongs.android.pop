package com.dianxinos.library.notify.network;

import com.dianxinos.library.dxbase.e;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class c
  implements l
{
  public static final boolean a = e.b;
  public static final long b;
  protected Map<String, String> c;
  
  static
  {
    if (a) {}
    for (long l = 180000L;; l = 1800000L)
    {
      b = l;
      return;
    }
  }
  
  public String a(String paramString)
  {
    return paramString;
  }
  
  public void a(URLConnection paramURLConnection)
  {
    if ((c != null) && (c.size() != 0))
    {
      Iterator localIterator = c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramURLConnection.setRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  /* Error */
  public boolean a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 84	java/lang/System:currentTimeMillis	()J
    //   5: lstore 4
    //   7: getstatic 25	com/dianxinos/library/notify/network/c:b	J
    //   10: lstore 6
    //   12: lload 4
    //   14: lload_2
    //   15: lsub
    //   16: lload 6
    //   18: lcmp
    //   19: ifle +11 -> 30
    //   22: iconst_1
    //   23: istore 8
    //   25: aload_0
    //   26: monitorexit
    //   27: iload 8
    //   29: ireturn
    //   30: iconst_0
    //   31: istore 8
    //   33: goto -8 -> 25
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	c
    //   0	41	1	paramString	String
    //   0	41	2	paramLong	long
    //   5	8	4	l1	long
    //   10	7	6	l2	long
    //   23	9	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	12	36	finally
  }
  
  public String b()
  {
    return null;
  }
  
  public int c()
  {
    return 0;
  }
  
  public int d()
  {
    return 0;
  }
  
  public int e()
  {
    return 0;
  }
  
  public String f()
  {
    return "dianxinos-user-agent";
  }
  
  public boolean g()
  {
    return true;
  }
  
  public long h()
  {
    return 10485760L;
  }
  
  public boolean i()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */