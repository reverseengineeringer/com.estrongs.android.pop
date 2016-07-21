package com.dianxinos.library.notify.a;

import java.util.LinkedHashMap;

class b<K, V>
{
  private final LinkedHashMap<K, V> a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public b(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    c = paramInt;
    a = new LinkedHashMap(0, 0.75F, true);
  }
  
  private int c(K paramK, V paramV)
  {
    int i;
    try
    {
      i = b(paramK, paramV);
      if (i < 0) {
        throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
      }
    }
    finally {}
    return i;
  }
  
  public final V a(K paramK)
  {
    if (paramK == null) {
      try
      {
        throw new NullPointerException("key == null");
      }
      finally {}
    }
    for (;;)
    {
      Object localObject1;
      try
      {
        localObject1 = a.get(paramK);
        if (localObject1 != null)
        {
          g += 1;
          paramK = (K)localObject1;
          return paramK;
        }
        h += 1;
        localObject1 = b(paramK);
        if (localObject1 == null)
        {
          paramK = null;
          continue;
        }
      }
      finally {}
      try
      {
        e += 1;
        Object localObject2 = a.put(paramK, localObject1);
        if (localObject2 != null) {
          a.put(paramK, localObject2);
        }
        for (;;)
        {
          if (localObject2 == null) {
            break label164;
          }
          a(false, paramK, localObject1, localObject2);
          paramK = (K)localObject2;
          break;
          b += c(paramK, localObject1);
        }
        a(c);
      }
      finally {}
      label164:
      paramK = (K)localObject1;
    }
  }
  
  public final V a(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      try
      {
        throw new NullPointerException("key == null || value == null");
      }
      finally {}
    }
    try
    {
      d += 1;
      b += c(paramK, paramV);
      Object localObject = a.put(paramK, paramV);
      if (localObject != null) {
        b -= c(paramK, localObject);
      }
      if (localObject != null) {
        a(false, paramK, localObject, paramV);
      }
      a(c);
      return (V)localObject;
    }
    finally {}
  }
  
  /* Error */
  public void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 91	com/dianxinos/library/notify/a/b:b	I
    //   8: iflt +20 -> 28
    //   11: aload_0
    //   12: getfield 38	com/dianxinos/library/notify/a/b:a	Ljava/util/LinkedHashMap;
    //   15: invokevirtual 105	java/util/LinkedHashMap:isEmpty	()Z
    //   18: ifeq +53 -> 71
    //   21: aload_0
    //   22: getfield 91	com/dianxinos/library/notify/a/b:b	I
    //   25: ifeq +46 -> 71
    //   28: new 44	java/lang/IllegalStateException
    //   31: dup
    //   32: new 46	java/lang/StringBuilder
    //   35: dup
    //   36: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   39: aload_0
    //   40: invokevirtual 109	java/lang/Object:getClass	()Ljava/lang/Class;
    //   43: invokevirtual 114	java/lang/Class:getName	()Ljava/lang/String;
    //   46: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: ldc 116
    //   51: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokespecial 63	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   60: athrow
    //   61: astore_2
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_2
    //   65: athrow
    //   66: astore_2
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_2
    //   70: athrow
    //   71: aload_0
    //   72: getfield 91	com/dianxinos/library/notify/a/b:b	I
    //   75: iload_1
    //   76: if_icmple +13 -> 89
    //   79: aload_0
    //   80: getfield 38	com/dianxinos/library/notify/a/b:a	Ljava/util/LinkedHashMap;
    //   83: invokevirtual 105	java/util/LinkedHashMap:isEmpty	()Z
    //   86: ifeq +8 -> 94
    //   89: aload_0
    //   90: monitorexit
    //   91: aload_0
    //   92: monitorexit
    //   93: return
    //   94: aload_0
    //   95: getfield 38	com/dianxinos/library/notify/a/b:a	Ljava/util/LinkedHashMap;
    //   98: invokevirtual 120	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   101: invokeinterface 126 1 0
    //   106: invokeinterface 132 1 0
    //   111: checkcast 134	java/util/Map$Entry
    //   114: astore_3
    //   115: aload_3
    //   116: invokeinterface 137 1 0
    //   121: astore_2
    //   122: aload_3
    //   123: invokeinterface 140 1 0
    //   128: astore_3
    //   129: aload_0
    //   130: getfield 38	com/dianxinos/library/notify/a/b:a	Ljava/util/LinkedHashMap;
    //   133: aload_2
    //   134: invokevirtual 143	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   137: pop
    //   138: aload_0
    //   139: aload_0
    //   140: getfield 91	com/dianxinos/library/notify/a/b:b	I
    //   143: aload_0
    //   144: aload_2
    //   145: aload_3
    //   146: invokespecial 93	com/dianxinos/library/notify/a/b:c	(Ljava/lang/Object;Ljava/lang/Object;)I
    //   149: isub
    //   150: putfield 91	com/dianxinos/library/notify/a/b:b	I
    //   153: aload_0
    //   154: aload_0
    //   155: getfield 145	com/dianxinos/library/notify/a/b:f	I
    //   158: iconst_1
    //   159: iadd
    //   160: putfield 145	com/dianxinos/library/notify/a/b:f	I
    //   163: aload_0
    //   164: monitorexit
    //   165: aload_0
    //   166: iconst_1
    //   167: aload_2
    //   168: aload_3
    //   169: aconst_null
    //   170: invokevirtual 89	com/dianxinos/library/notify/a/b:a	(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   173: goto -171 -> 2
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	this	b
    //   0	176	1	paramInt	int
    //   61	4	2	localObject1	Object
    //   66	4	2	localObject2	Object
    //   121	47	2	localObject3	Object
    //   114	55	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   4	28	61	finally
    //   28	61	61	finally
    //   62	64	61	finally
    //   71	89	61	finally
    //   89	91	61	finally
    //   94	165	61	finally
    //   2	4	66	finally
    //   64	66	66	finally
    //   165	173	66	finally
  }
  
  protected void a(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  protected int b(K paramK, V paramV)
  {
    return 1;
  }
  
  protected V b(K paramK)
  {
    return null;
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = g + h;
      if (j != 0) {
        i = g * 100 / j;
      }
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(c), Integer.valueOf(g), Integer.valueOf(h), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */