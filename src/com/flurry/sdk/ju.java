package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;

public class ju
{
  private static ju a;
  private static final String b = ju.class.getSimpleName();
  private static final HashMap<String, Map<String, String>> c = new HashMap();
  
  public static ju a()
  {
    try
    {
      if (a == null) {
        a = new ju();
      }
      ju localju = a;
      return localju;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      a = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(String paramString1, String arg2, Map<String, String> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {}
    for (;;)
    {
      try
      {
        localObject = new HashMap();
        if (((Map)localObject).size() >= 10)
        {
          kg.e(b, "MaxOriginParams exceeded: " + ((Map)localObject).size());
          return;
        }
        ((Map)localObject).put("flurryOriginVersion", ???);
        synchronized (c)
        {
          if ((c.size() >= 10) && (!c.containsKey(paramString1))) {
            kg.e(b, "MaxOrigins exceeded: " + c.size());
          }
        }
        c.put(paramString1, localObject);
      }
      finally {}
    }
  }
  
  /* Error */
  public HashMap<String, Map<String, String>> c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 28	com/flurry/sdk/ju:c	Ljava/util/HashMap;
    //   5: astore_1
    //   6: aload_1
    //   7: monitorenter
    //   8: new 23	java/util/HashMap
    //   11: dup
    //   12: getstatic 28	com/flurry/sdk/ju:c	Ljava/util/HashMap;
    //   15: invokespecial 82	java/util/HashMap:<init>	(Ljava/util/Map;)V
    //   18: astore_2
    //   19: aload_1
    //   20: monitorexit
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_2
    //   24: areturn
    //   25: astore_2
    //   26: aload_1
    //   27: monitorexit
    //   28: aload_2
    //   29: athrow
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	ju
    //   30	4	1	localObject1	Object
    //   18	6	2	localHashMap2	HashMap
    //   25	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   8	21	25	finally
    //   26	28	25	finally
    //   2	8	30	finally
    //   28	30	30	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */