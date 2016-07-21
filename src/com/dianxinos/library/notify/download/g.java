package com.dianxinos.library.notify.download;

import android.text.TextUtils;
import com.dianxinos.library.notify.a;
import com.dianxinos.library.notify.h;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class g
  implements h
{
  private static g a;
  private Map<String, CopyOnWriteArrayList<h>> b = new LinkedHashMap();
  
  public static g a()
  {
    try
    {
      if (a == null) {
        a = new g();
      }
      g localg = a;
      return localg;
    }
    finally {}
  }
  
  public void a(a parama)
  {
    if (parama == null) {
      return;
    }
    CopyOnWriteArrayList localCopyOnWriteArrayList;
    synchronized (b)
    {
      localCopyOnWriteArrayList = (CopyOnWriteArrayList)b.get(b);
      if (localCopyOnWriteArrayList == null) {
        return;
      }
    }
    try
    {
      ??? = localCopyOnWriteArrayList.iterator();
      while (((Iterator)???).hasNext())
      {
        h localh = (h)((Iterator)???).next();
        if (localh != null) {
          localh.a(parama);
        }
      }
    }
    finally {}
  }
  
  public boolean a(String paramString, h paramh)
  {
    if ((paramh == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    for (;;)
    {
      CopyOnWriteArrayList localCopyOnWriteArrayList;
      synchronized (b)
      {
        localCopyOnWriteArrayList = (CopyOnWriteArrayList)b.get(paramString);
        if (localCopyOnWriteArrayList != null) {
          break label100;
        }
        localCopyOnWriteArrayList = new CopyOnWriteArrayList();
        b.put(paramString, localCopyOnWriteArrayList);
        paramString = localCopyOnWriteArrayList;
      }
      try
      {
        if (paramString.contains(paramh))
        {
          return false;
          paramString = finally;
          throw paramString;
        }
        paramString.add(paramh);
        return true;
      }
      finally {}
      label100:
      paramString = localCopyOnWriteArrayList;
    }
  }
  
  /* Error */
  public boolean b(String paramString, h arg2)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +10 -> 11
    //   4: aload_1
    //   5: invokestatic 62	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   8: ifeq +5 -> 13
    //   11: iconst_0
    //   12: ireturn
    //   13: aload_0
    //   14: getfield 20	com/dianxinos/library/notify/download/g:b	Ljava/util/Map;
    //   17: astore 5
    //   19: aload 5
    //   21: monitorenter
    //   22: aload_0
    //   23: getfield 20	com/dianxinos/library/notify/download/g:b	Ljava/util/Map;
    //   26: aload_1
    //   27: invokeinterface 37 2 0
    //   32: checkcast 39	java/util/concurrent/CopyOnWriteArrayList
    //   35: astore 4
    //   37: aload 4
    //   39: ifnonnull +8 -> 47
    //   42: aload 5
    //   44: monitorexit
    //   45: iconst_0
    //   46: ireturn
    //   47: aload 5
    //   49: monitorexit
    //   50: aload 4
    //   52: monitorenter
    //   53: aload 4
    //   55: aload_2
    //   56: invokevirtual 77	java/util/concurrent/CopyOnWriteArrayList:remove	(Ljava/lang/Object;)Z
    //   59: istore_3
    //   60: aload 4
    //   62: invokevirtual 79	java/util/concurrent/CopyOnWriteArrayList:isEmpty	()Z
    //   65: ifeq +23 -> 88
    //   68: aload_0
    //   69: getfield 20	com/dianxinos/library/notify/download/g:b	Ljava/util/Map;
    //   72: astore_2
    //   73: aload_2
    //   74: monitorenter
    //   75: aload_0
    //   76: getfield 20	com/dianxinos/library/notify/download/g:b	Ljava/util/Map;
    //   79: aload_1
    //   80: invokeinterface 81 2 0
    //   85: pop
    //   86: aload_2
    //   87: monitorexit
    //   88: aload 4
    //   90: monitorexit
    //   91: iload_3
    //   92: ireturn
    //   93: astore_1
    //   94: aload 5
    //   96: monitorexit
    //   97: aload_1
    //   98: athrow
    //   99: astore_1
    //   100: aload_2
    //   101: monitorexit
    //   102: aload_1
    //   103: athrow
    //   104: astore_1
    //   105: aload 4
    //   107: monitorexit
    //   108: aload_1
    //   109: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	this	g
    //   0	110	1	paramString	String
    //   59	33	3	bool	boolean
    //   35	71	4	localCopyOnWriteArrayList	CopyOnWriteArrayList
    //   17	78	5	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   22	37	93	finally
    //   42	45	93	finally
    //   47	50	93	finally
    //   94	97	93	finally
    //   75	88	99	finally
    //   100	102	99	finally
    //   53	75	104	finally
    //   88	91	104	finally
    //   102	104	104	finally
    //   105	108	104	finally
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */