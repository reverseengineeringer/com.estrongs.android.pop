package com.baidu.mobstat;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class ax
{
  private static ax a;
  private Context b;
  private long c = 24L;
  private long d = 0L;
  private long e = 0L;
  private long f = 0L;
  private long g = 5L;
  private long h = 24L;
  private long i = 15L;
  private long j = 15L;
  private long k = 30L;
  private long l = 12L;
  private long m = 1L;
  private long n = 24L;
  private String o = "";
  private String p = "";
  
  private ax(Context paramContext)
  {
    b = paramContext;
    j();
    k();
  }
  
  private long a(long paramLong)
  {
    long l1 = paramLong;
    if (paramLong - System.currentTimeMillis() > 0L) {
      l1 = 0L;
    }
    return l1;
  }
  
  public static ax a(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new ax(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  public long a(t paramt)
  {
    long l2 = j;
    String str = cl.b("backups/system/.timestamp");
    long l1 = l2;
    try
    {
      if (!TextUtils.isEmpty(str)) {
        l1 = new JSONObject(str).getLong(paramt.toString());
      }
      return a(l1);
    }
    catch (JSONException paramt)
    {
      for (;;)
      {
        bb.a(paramt);
        l1 = l2;
      }
    }
  }
  
  public void a(t paramt, long paramLong)
  {
    j = paramLong;
    Object localObject = cl.b("backups/system/.timestamp");
    try
    {
      if (!TextUtils.isEmpty((CharSequence)localObject)) {}
      for (localObject = new JSONObject((String)localObject);; localObject = new JSONObject())
      {
        ((JSONObject)localObject).put(paramt.toString(), paramLong);
        cl.a("backups/system/.timestamp", ((JSONObject)localObject).toString(), false);
        return;
      }
      return;
    }
    catch (JSONException paramt)
    {
      bb.a(paramt);
    }
  }
  
  public void a(String paramString)
  {
    cl.a(b, ".config2", paramString, false);
    j();
  }
  
  public boolean a()
  {
    return d != 0L;
  }
  
  public void b(String paramString)
  {
    cl.a(b, ".sign", paramString, false);
    k();
  }
  
  public boolean b()
  {
    return e != 0L;
  }
  
  public long c()
  {
    return c * 60L * 60L * 1000L;
  }
  
  public String c(String paramString)
  {
    if ((!TextUtils.isEmpty(o)) && (o.equals(paramString)) && (!TextUtils.isEmpty(p))) {
      return p;
    }
    return "";
  }
  
  public long d()
  {
    return n * 60L * 60L * 1000L;
  }
  
  public long e()
  {
    return g * 60L * 1000L;
  }
  
  public long f()
  {
    return h * 60L * 60L * 1000L;
  }
  
  public long g()
  {
    return i * 24L * 60L * 60L * 1000L;
  }
  
  public long h()
  {
    return j * 24L * 60L * 60L * 1000L;
  }
  
  public long i()
  {
    return l * 60L * 60L * 1000L;
  }
  
  /* Error */
  public void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 71	com/baidu/mobstat/ax:b	Landroid/content/Context;
    //   4: ldc -117
    //   6: invokestatic 160	com/baidu/mobstat/cl:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_1
    //   10: new 151	java/lang/String
    //   13: dup
    //   14: iconst_0
    //   15: invokestatic 165	com/baidu/mobstat/cn:a	()[B
    //   18: aload_1
    //   19: invokevirtual 168	java/lang/String:getBytes	()[B
    //   22: invokestatic 173	com/baidu/mobstat/cm:a	([B)[B
    //   25: invokestatic 178	com/baidu/mobstat/cs:b	(Z[B[B)[B
    //   28: invokespecial 181	java/lang/String:<init>	([B)V
    //   31: astore_1
    //   32: aload_1
    //   33: invokestatic 107	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   36: ifeq +4 -> 40
    //   39: return
    //   40: new 109	org/json/JSONObject
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 112	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   48: astore_1
    //   49: aload_0
    //   50: aload_1
    //   51: ldc -74
    //   53: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   56: putfield 35	com/baidu/mobstat/ax:d	J
    //   59: aload_0
    //   60: aload_1
    //   61: ldc -73
    //   63: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   66: putfield 43	com/baidu/mobstat/ax:g	J
    //   69: aload_0
    //   70: aload_1
    //   71: ldc -72
    //   73: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   76: putfield 45	com/baidu/mobstat/ax:h	J
    //   79: aload_0
    //   80: aload_1
    //   81: ldc -71
    //   83: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   86: putfield 49	com/baidu/mobstat/ax:i	J
    //   89: aload_0
    //   90: aload_1
    //   91: ldc -70
    //   93: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   96: putfield 33	com/baidu/mobstat/ax:c	J
    //   99: aload_0
    //   100: aload_1
    //   101: ldc -68
    //   103: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   106: putfield 63	com/baidu/mobstat/ax:n	J
    //   109: aload_0
    //   110: aload_1
    //   111: ldc -66
    //   113: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   116: putfield 51	com/baidu/mobstat/ax:j	J
    //   119: aload_0
    //   120: aload_1
    //   121: ldc -64
    //   123: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   126: putfield 55	com/baidu/mobstat/ax:k	J
    //   129: aload_0
    //   130: aload_1
    //   131: ldc -62
    //   133: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   136: putfield 59	com/baidu/mobstat/ax:l	J
    //   139: aload_0
    //   140: aload_1
    //   141: ldc -60
    //   143: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   146: putfield 61	com/baidu/mobstat/ax:m	J
    //   149: aload_0
    //   150: aload_1
    //   151: ldc -58
    //   153: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   156: putfield 37	com/baidu/mobstat/ax:e	J
    //   159: aload_0
    //   160: aload_1
    //   161: ldc -56
    //   163: invokevirtual 120	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   166: putfield 39	com/baidu/mobstat/ax:f	J
    //   169: return
    //   170: astore_1
    //   171: aload_1
    //   172: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   175: return
    //   176: astore_1
    //   177: aload_1
    //   178: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   181: return
    //   182: astore_2
    //   183: aload_2
    //   184: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   187: goto -128 -> 59
    //   190: astore_2
    //   191: aload_2
    //   192: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   195: goto -126 -> 69
    //   198: astore_2
    //   199: aload_2
    //   200: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   203: goto -124 -> 79
    //   206: astore_2
    //   207: aload_2
    //   208: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   211: goto -122 -> 89
    //   214: astore_2
    //   215: aload_2
    //   216: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   219: goto -120 -> 99
    //   222: astore_2
    //   223: aload_2
    //   224: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   227: goto -118 -> 109
    //   230: astore_2
    //   231: aload_2
    //   232: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   235: goto -116 -> 119
    //   238: astore_2
    //   239: aload_2
    //   240: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   243: goto -114 -> 129
    //   246: astore_2
    //   247: aload_2
    //   248: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   251: goto -112 -> 139
    //   254: astore_2
    //   255: aload_2
    //   256: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   259: goto -110 -> 149
    //   262: astore_2
    //   263: aload_2
    //   264: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   267: goto -108 -> 159
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	270	0	this	ax
    //   9	152	1	localObject	Object
    //   170	2	1	localJSONException1	JSONException
    //   176	2	1	localException	Exception
    //   182	2	2	localJSONException2	JSONException
    //   190	2	2	localJSONException3	JSONException
    //   198	2	2	localJSONException4	JSONException
    //   206	2	2	localJSONException5	JSONException
    //   214	2	2	localJSONException6	JSONException
    //   222	2	2	localJSONException7	JSONException
    //   230	2	2	localJSONException8	JSONException
    //   238	2	2	localJSONException9	JSONException
    //   246	2	2	localJSONException10	JSONException
    //   254	2	2	localJSONException11	JSONException
    //   262	2	2	localJSONException12	JSONException
    // Exception table:
    //   from	to	target	type
    //   159	169	170	org/json/JSONException
    //   10	39	176	java/lang/Exception
    //   40	49	176	java/lang/Exception
    //   49	59	176	java/lang/Exception
    //   59	69	176	java/lang/Exception
    //   69	79	176	java/lang/Exception
    //   79	89	176	java/lang/Exception
    //   89	99	176	java/lang/Exception
    //   99	109	176	java/lang/Exception
    //   109	119	176	java/lang/Exception
    //   119	129	176	java/lang/Exception
    //   129	139	176	java/lang/Exception
    //   139	149	176	java/lang/Exception
    //   149	159	176	java/lang/Exception
    //   159	169	176	java/lang/Exception
    //   171	175	176	java/lang/Exception
    //   183	187	176	java/lang/Exception
    //   191	195	176	java/lang/Exception
    //   199	203	176	java/lang/Exception
    //   207	211	176	java/lang/Exception
    //   215	219	176	java/lang/Exception
    //   223	227	176	java/lang/Exception
    //   231	235	176	java/lang/Exception
    //   239	243	176	java/lang/Exception
    //   247	251	176	java/lang/Exception
    //   255	259	176	java/lang/Exception
    //   263	267	176	java/lang/Exception
    //   49	59	182	org/json/JSONException
    //   59	69	190	org/json/JSONException
    //   69	79	198	org/json/JSONException
    //   79	89	206	org/json/JSONException
    //   89	99	214	org/json/JSONException
    //   99	109	222	org/json/JSONException
    //   109	119	230	org/json/JSONException
    //   119	129	238	org/json/JSONException
    //   129	139	246	org/json/JSONException
    //   139	149	254	org/json/JSONException
    //   149	159	262	org/json/JSONException
  }
  
  /* Error */
  public void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 71	com/baidu/mobstat/ax:b	Landroid/content/Context;
    //   4: ldc -111
    //   6: invokestatic 160	com/baidu/mobstat/cl:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_1
    //   10: new 151	java/lang/String
    //   13: dup
    //   14: iconst_0
    //   15: invokestatic 165	com/baidu/mobstat/cn:a	()[B
    //   18: aload_1
    //   19: invokevirtual 168	java/lang/String:getBytes	()[B
    //   22: invokestatic 173	com/baidu/mobstat/cm:a	([B)[B
    //   25: invokestatic 178	com/baidu/mobstat/cs:b	(Z[B[B)[B
    //   28: invokespecial 181	java/lang/String:<init>	([B)V
    //   31: astore_1
    //   32: aload_1
    //   33: invokestatic 107	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   36: ifeq +4 -> 40
    //   39: return
    //   40: new 109	org/json/JSONObject
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 112	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   48: astore_1
    //   49: aload_0
    //   50: aload_1
    //   51: ldc -52
    //   53: invokevirtual 207	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   56: putfield 69	com/baidu/mobstat/ax:p	Ljava/lang/String;
    //   59: aload_0
    //   60: aload_1
    //   61: ldc -47
    //   63: invokevirtual 207	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   66: putfield 67	com/baidu/mobstat/ax:o	Ljava/lang/String;
    //   69: return
    //   70: astore_1
    //   71: aload_1
    //   72: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   75: return
    //   76: astore_1
    //   77: aload_1
    //   78: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   81: return
    //   82: astore_2
    //   83: aload_2
    //   84: invokestatic 202	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   87: goto -28 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	ax
    //   9	52	1	localObject	Object
    //   70	2	1	localException1	Exception
    //   76	2	1	localException2	Exception
    //   82	2	2	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   59	69	70	java/lang/Exception
    //   10	39	76	java/lang/Exception
    //   40	49	76	java/lang/Exception
    //   71	75	76	java/lang/Exception
    //   83	87	76	java/lang/Exception
    //   49	59	82	java/lang/Exception
  }
  
  public boolean l()
  {
    long l1 = System.currentTimeMillis();
    long l2 = a(t.h);
    long l3 = d();
    bb.a("canSend now=" + l1 + ";lastSendTime=" + l2 + ";;sendLogTimeInterval=" + l3);
    return l1 - l2 > l3;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */