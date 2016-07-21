package com.estrongs.android.util;

import android.util.SparseArray;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class al
{
  private static final String a = al.class.getSimpleName();
  private static Pattern d = Pattern.compile("#EXTINF:\\s*(-?\\d+)\\s*,\\s*(.*)");
  private static Pattern e = Pattern.compile("(.*)=(.*)");
  private final String b;
  private String[] c = null;
  private final SparseArray<HashMap<String, String>> f = new SparseArray();
  
  public al(String paramString)
  {
    b = paramString;
  }
  
  private HashMap<String, String> a(String paramString, HashMap<String, String> paramHashMap)
  {
    int i = 0;
    int j = 0;
    Object localObject = paramHashMap;
    if (paramHashMap == null) {
      localObject = new HashMap();
    }
    paramHashMap = d.matcher(paramString);
    Matcher localMatcher1;
    if (paramHashMap.matches())
    {
      ((HashMap)localObject).put("EXTINF:DURATION", paramHashMap.group(1));
      paramString = paramHashMap.group(2);
      if (paramString != null)
      {
        paramString = paramString.split(",");
        int k = paramString.length;
        i = j;
        while (i < k)
        {
          paramHashMap = paramString[i];
          localMatcher1 = e.matcher(paramHashMap);
          if (localMatcher1.matches())
          {
            ((HashMap)localObject).put("EXTINF:" + localMatcher1.group(1), localMatcher1.group(2));
            i += 1;
          }
          else
          {
            ((HashMap)localObject).put("EXTINF:TITLE", paramHashMap);
          }
        }
      }
    }
    for (;;)
    {
      return (HashMap<String, String>)localObject;
      ((HashMap)localObject).put("EXTINF:TITLE", "");
      return (HashMap<String, String>)localObject;
      j = paramString.indexOf(":");
      if (-1 == j) {
        throw new Exception("no tag found");
      }
      paramHashMap = paramString.substring(1, j);
      paramString = paramString.substring(j + 1).split(",");
      j = paramString.length;
      while (i < j)
      {
        localMatcher1 = paramString[i];
        Matcher localMatcher2 = e.matcher(localMatcher1);
        if (!localMatcher2.matches()) {
          break label294;
        }
        ((HashMap)localObject).put(paramHashMap + ":" + localMatcher2.group(1), localMatcher2.group(2));
        i += 1;
      }
    }
    label294:
    ((HashMap)localObject).put(paramHashMap, localMatcher1);
    return (HashMap<String, String>)localObject;
  }
  
  /* Error */
  private void b()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: new 125	java/util/LinkedList
    //   5: dup
    //   6: invokespecial 126	java/util/LinkedList:<init>	()V
    //   9: astore 5
    //   11: new 128	java/io/BufferedReader
    //   14: dup
    //   15: new 130	java/io/InputStreamReader
    //   18: dup
    //   19: new 132	java/io/FileInputStream
    //   22: dup
    //   23: aload_0
    //   24: getfield 53	com/estrongs/android/util/al:b	Ljava/lang/String;
    //   27: invokespecial 133	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   30: invokespecial 136	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   33: invokespecial 139	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   36: astore 4
    //   38: aload 4
    //   40: astore_2
    //   41: aload 4
    //   43: invokevirtual 142	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   46: astore_3
    //   47: aload_3
    //   48: ifnull +15 -> 63
    //   51: aload 4
    //   53: astore_2
    //   54: aload_3
    //   55: ldc -112
    //   57: invokevirtual 148	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   60: ifne +61 -> 121
    //   63: aload 4
    //   65: astore_2
    //   66: new 109	java/lang/Exception
    //   69: dup
    //   70: ldc -106
    //   72: invokespecial 113	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   75: athrow
    //   76: astore_2
    //   77: aload 4
    //   79: astore_3
    //   80: aload_2
    //   81: astore 4
    //   83: aload_3
    //   84: astore_2
    //   85: aload 4
    //   87: invokevirtual 153	java/io/IOException:printStackTrace	()V
    //   90: aload_3
    //   91: ifnull +7 -> 98
    //   94: aload_3
    //   95: invokevirtual 156	java/io/BufferedReader:close	()V
    //   98: aload_0
    //   99: aload 5
    //   101: invokevirtual 160	java/util/LinkedList:size	()I
    //   104: anewarray 81	java/lang/String
    //   107: putfield 46	com/estrongs/android/util/al:c	[Ljava/lang/String;
    //   110: aload 5
    //   112: aload_0
    //   113: getfield 46	com/estrongs/android/util/al:c	[Ljava/lang/String;
    //   116: invokevirtual 164	java/util/LinkedList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   119: pop
    //   120: return
    //   121: aload 4
    //   123: astore_2
    //   124: new 56	java/util/HashMap
    //   127: dup
    //   128: invokespecial 57	java/util/HashMap:<init>	()V
    //   131: astore_3
    //   132: aload 4
    //   134: astore_2
    //   135: aload 4
    //   137: invokevirtual 142	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   140: astore 6
    //   142: aload 6
    //   144: ifnull +77 -> 221
    //   147: aload 4
    //   149: astore_2
    //   150: ldc 101
    //   152: aload 6
    //   154: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   157: ifne -25 -> 132
    //   160: aload 4
    //   162: astore_2
    //   163: aload 6
    //   165: ldc -86
    //   167: invokevirtual 148	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   170: ifne +37 -> 207
    //   173: iload_1
    //   174: iconst_1
    //   175: iadd
    //   176: istore_1
    //   177: aload 4
    //   179: astore_2
    //   180: aload 5
    //   182: aload 6
    //   184: invokevirtual 173	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   187: pop
    //   188: aload 4
    //   190: astore_2
    //   191: aload_0
    //   192: getfield 51	com/estrongs/android/util/al:f	Landroid/util/SparseArray;
    //   195: iload_1
    //   196: iconst_1
    //   197: isub
    //   198: aload_3
    //   199: invokevirtual 176	android/util/SparseArray:append	(ILjava/lang/Object;)V
    //   202: aconst_null
    //   203: astore_3
    //   204: goto -72 -> 132
    //   207: aload 4
    //   209: astore_2
    //   210: aload_0
    //   211: aload 6
    //   213: aload_3
    //   214: invokespecial 178	com/estrongs/android/util/al:a	(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    //   217: astore_3
    //   218: goto -86 -> 132
    //   221: aload 4
    //   223: ifnull -125 -> 98
    //   226: aload 4
    //   228: invokevirtual 156	java/io/BufferedReader:close	()V
    //   231: goto -133 -> 98
    //   234: astore_2
    //   235: aload_2
    //   236: invokevirtual 153	java/io/IOException:printStackTrace	()V
    //   239: goto -141 -> 98
    //   242: astore_2
    //   243: aload_2
    //   244: invokevirtual 153	java/io/IOException:printStackTrace	()V
    //   247: goto -149 -> 98
    //   250: astore_3
    //   251: aconst_null
    //   252: astore_2
    //   253: aload_2
    //   254: ifnull +7 -> 261
    //   257: aload_2
    //   258: invokevirtual 156	java/io/BufferedReader:close	()V
    //   261: aload_3
    //   262: athrow
    //   263: astore_2
    //   264: aload_2
    //   265: invokevirtual 153	java/io/IOException:printStackTrace	()V
    //   268: goto -7 -> 261
    //   271: astore_3
    //   272: goto -19 -> 253
    //   275: astore 4
    //   277: aconst_null
    //   278: astore_3
    //   279: goto -196 -> 83
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	282	0	this	al
    //   1	197	1	i	int
    //   40	26	2	localObject1	Object
    //   76	5	2	localIOException1	java.io.IOException
    //   84	126	2	localObject2	Object
    //   234	2	2	localIOException2	java.io.IOException
    //   242	2	2	localIOException3	java.io.IOException
    //   252	6	2	localObject3	Object
    //   263	2	2	localIOException4	java.io.IOException
    //   46	172	3	localObject4	Object
    //   250	12	3	localObject5	Object
    //   271	1	3	localObject6	Object
    //   278	1	3	localObject7	Object
    //   36	191	4	localObject8	Object
    //   275	1	4	localIOException5	java.io.IOException
    //   9	172	5	localLinkedList	java.util.LinkedList
    //   140	72	6	str	String
    // Exception table:
    //   from	to	target	type
    //   41	47	76	java/io/IOException
    //   54	63	76	java/io/IOException
    //   66	76	76	java/io/IOException
    //   124	132	76	java/io/IOException
    //   135	142	76	java/io/IOException
    //   150	160	76	java/io/IOException
    //   163	173	76	java/io/IOException
    //   180	188	76	java/io/IOException
    //   191	202	76	java/io/IOException
    //   210	218	76	java/io/IOException
    //   226	231	234	java/io/IOException
    //   94	98	242	java/io/IOException
    //   11	38	250	finally
    //   257	261	263	java/io/IOException
    //   41	47	271	finally
    //   54	63	271	finally
    //   66	76	271	finally
    //   85	90	271	finally
    //   124	132	271	finally
    //   135	142	271	finally
    //   150	160	271	finally
    //   163	173	271	finally
    //   180	188	271	finally
    //   191	202	271	finally
    //   210	218	271	finally
    //   11	38	275	java/io/IOException
  }
  
  public String[] a()
  {
    if (c == null) {}
    try
    {
      b();
      return c;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */