package com.estrongs.android.recommand;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

class b
{
  private static String a = b.class.getSimpleName();
  private static b b;
  private Map<String, n> c = new ConcurrentHashMap();
  
  public static b a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new b();
      }
      return b;
    }
    finally {}
  }
  
  /* Error */
  public n a(o paramo)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 51	com/estrongs/android/recommand/o:c	Ljava/lang/String;
    //   4: astore_3
    //   5: aconst_null
    //   6: astore_2
    //   7: aload_0
    //   8: getfield 30	com/estrongs/android/recommand/b:c	Ljava/util/Map;
    //   11: aload_3
    //   12: invokeinterface 57 2 0
    //   17: ifnonnull +50 -> 67
    //   20: aload_3
    //   21: invokestatic 61	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   24: iconst_1
    //   25: anewarray 15	java/lang/Class
    //   28: dup
    //   29: iconst_0
    //   30: ldc 49
    //   32: aastore
    //   33: invokevirtual 65	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   36: iconst_1
    //   37: anewarray 4	java/lang/Object
    //   40: dup
    //   41: iconst_0
    //   42: aload_1
    //   43: aastore
    //   44: invokevirtual 71	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   47: checkcast 73	com/estrongs/android/recommand/n
    //   50: astore_1
    //   51: aload_1
    //   52: astore_2
    //   53: aload_0
    //   54: getfield 30	com/estrongs/android/recommand/b:c	Ljava/util/Map;
    //   57: aload_3
    //   58: aload_1
    //   59: invokeinterface 77 3 0
    //   64: pop
    //   65: aload_1
    //   66: astore_2
    //   67: aload_0
    //   68: getfield 30	com/estrongs/android/recommand/b:c	Ljava/util/Map;
    //   71: aload_3
    //   72: invokeinterface 57 2 0
    //   77: checkcast 73	com/estrongs/android/recommand/n
    //   80: astore_1
    //   81: aload_1
    //   82: areturn
    //   83: astore_3
    //   84: aconst_null
    //   85: astore_1
    //   86: aload_1
    //   87: astore_2
    //   88: aload_3
    //   89: invokevirtual 80	java/lang/InstantiationException:printStackTrace	()V
    //   92: aload_1
    //   93: areturn
    //   94: aload_1
    //   95: astore_2
    //   96: aload_3
    //   97: invokevirtual 81	java/lang/IllegalAccessException:printStackTrace	()V
    //   100: aload_1
    //   101: areturn
    //   102: aload_1
    //   103: astore_2
    //   104: aload_3
    //   105: invokevirtual 82	java/lang/NoSuchMethodException:printStackTrace	()V
    //   108: aload_1
    //   109: areturn
    //   110: aload_1
    //   111: astore_2
    //   112: aload_3
    //   113: invokevirtual 83	java/lang/IllegalArgumentException:printStackTrace	()V
    //   116: aload_1
    //   117: areturn
    //   118: aload_1
    //   119: astore_2
    //   120: aload_3
    //   121: invokevirtual 84	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   124: aload_1
    //   125: areturn
    //   126: aload_1
    //   127: astore_2
    //   128: aload_3
    //   129: invokevirtual 85	java/lang/ClassNotFoundException:printStackTrace	()V
    //   132: aload_1
    //   133: areturn
    //   134: astore_1
    //   135: aconst_null
    //   136: areturn
    //   137: astore_1
    //   138: aload_2
    //   139: areturn
    //   140: astore_3
    //   141: goto -15 -> 126
    //   144: astore_3
    //   145: aload_2
    //   146: astore_1
    //   147: goto -21 -> 126
    //   150: astore_3
    //   151: goto -33 -> 118
    //   154: astore_3
    //   155: aload_2
    //   156: astore_1
    //   157: goto -39 -> 118
    //   160: astore_3
    //   161: goto -51 -> 110
    //   164: astore_3
    //   165: aload_2
    //   166: astore_1
    //   167: goto -57 -> 110
    //   170: astore_3
    //   171: goto -69 -> 102
    //   174: astore_3
    //   175: aload_2
    //   176: astore_1
    //   177: goto -75 -> 102
    //   180: astore_3
    //   181: goto -87 -> 94
    //   184: astore_3
    //   185: aload_2
    //   186: astore_1
    //   187: goto -93 -> 94
    //   190: astore_3
    //   191: goto -105 -> 86
    //   194: astore_3
    //   195: aload_2
    //   196: astore_1
    //   197: goto -111 -> 86
    //   200: astore_1
    //   201: aload_2
    //   202: areturn
    //   203: astore_3
    //   204: aconst_null
    //   205: astore_1
    //   206: goto -112 -> 94
    //   209: astore_3
    //   210: aconst_null
    //   211: astore_1
    //   212: goto -110 -> 102
    //   215: astore_3
    //   216: aconst_null
    //   217: astore_1
    //   218: goto -108 -> 110
    //   221: astore_3
    //   222: aconst_null
    //   223: astore_1
    //   224: goto -106 -> 118
    //   227: astore_3
    //   228: aconst_null
    //   229: astore_1
    //   230: goto -104 -> 126
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	233	0	this	b
    //   0	233	1	paramo	o
    //   6	196	2	localo	o
    //   4	68	3	str	String
    //   83	46	3	localInstantiationException1	InstantiationException
    //   140	1	3	localClassNotFoundException1	ClassNotFoundException
    //   144	1	3	localClassNotFoundException2	ClassNotFoundException
    //   150	1	3	localInvocationTargetException1	java.lang.reflect.InvocationTargetException
    //   154	1	3	localInvocationTargetException2	java.lang.reflect.InvocationTargetException
    //   160	1	3	localIllegalArgumentException1	IllegalArgumentException
    //   164	1	3	localIllegalArgumentException2	IllegalArgumentException
    //   170	1	3	localNoSuchMethodException1	NoSuchMethodException
    //   174	1	3	localNoSuchMethodException2	NoSuchMethodException
    //   180	1	3	localIllegalAccessException1	IllegalAccessException
    //   184	1	3	localIllegalAccessException2	IllegalAccessException
    //   190	1	3	localInstantiationException2	InstantiationException
    //   194	1	3	localInstantiationException3	InstantiationException
    //   203	1	3	localIllegalAccessException3	IllegalAccessException
    //   209	1	3	localNoSuchMethodException3	NoSuchMethodException
    //   215	1	3	localIllegalArgumentException3	IllegalArgumentException
    //   221	1	3	localInvocationTargetException3	java.lang.reflect.InvocationTargetException
    //   227	1	3	localClassNotFoundException3	ClassNotFoundException
    // Exception table:
    //   from	to	target	type
    //   7	51	83	java/lang/InstantiationException
    //   7	51	134	finally
    //   67	81	137	finally
    //   53	65	140	java/lang/ClassNotFoundException
    //   67	81	144	java/lang/ClassNotFoundException
    //   53	65	150	java/lang/reflect/InvocationTargetException
    //   67	81	154	java/lang/reflect/InvocationTargetException
    //   53	65	160	java/lang/IllegalArgumentException
    //   67	81	164	java/lang/IllegalArgumentException
    //   53	65	170	java/lang/NoSuchMethodException
    //   67	81	174	java/lang/NoSuchMethodException
    //   53	65	180	java/lang/IllegalAccessException
    //   67	81	184	java/lang/IllegalAccessException
    //   53	65	190	java/lang/InstantiationException
    //   67	81	194	java/lang/InstantiationException
    //   53	65	200	finally
    //   88	92	200	finally
    //   96	100	200	finally
    //   104	108	200	finally
    //   112	116	200	finally
    //   120	124	200	finally
    //   128	132	200	finally
    //   7	51	203	java/lang/IllegalAccessException
    //   7	51	209	java/lang/NoSuchMethodException
    //   7	51	215	java/lang/IllegalArgumentException
    //   7	51	221	java/lang/reflect/InvocationTargetException
    //   7	51	227	java/lang/ClassNotFoundException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.recommand.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */