package com.baidu.mobstat;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

class bo
{
  static String a = "Android";
  boolean b = false;
  String c;
  String d;
  String e = null;
  String f = "0";
  String g = null;
  int h = -1;
  String i;
  String j;
  int k;
  int l;
  String m = null;
  String n;
  String o;
  String p;
  String q;
  String r;
  String s;
  String t;
  String u;
  String v;
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 41	com/baidu/mobstat/bo:b	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_1
    //   15: ldc 58
    //   17: invokestatic 63	com/baidu/mobstat/cl:e	(Landroid/content/Context;Ljava/lang/String;)Z
    //   20: pop
    //   21: aload_1
    //   22: ldc 65
    //   24: invokestatic 63	com/baidu/mobstat/cl:e	(Landroid/content/Context;Ljava/lang/String;)Z
    //   27: pop
    //   28: aload_1
    //   29: ldc 67
    //   31: invokestatic 63	com/baidu/mobstat/cl:e	(Landroid/content/Context;Ljava/lang/String;)Z
    //   34: pop
    //   35: aload_1
    //   36: ldc 69
    //   38: invokestatic 63	com/baidu/mobstat/cl:e	(Landroid/content/Context;Ljava/lang/String;)Z
    //   41: pop
    //   42: aload_1
    //   43: ldc 71
    //   45: invokevirtual 77	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   48: checkcast 79	android/telephony/TelephonyManager
    //   51: astore 4
    //   53: aload_0
    //   54: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   57: invokevirtual 88	com/baidu/mobstat/CooperService:getOSVersion	()Ljava/lang/String;
    //   60: putfield 90	com/baidu/mobstat/bo:c	Ljava/lang/String;
    //   63: aload_0
    //   64: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   67: invokevirtual 93	com/baidu/mobstat/CooperService:getOSSysVersion	()Ljava/lang/String;
    //   70: putfield 95	com/baidu/mobstat/bo:d	Ljava/lang/String;
    //   73: aload_0
    //   74: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   77: invokevirtual 98	com/baidu/mobstat/CooperService:getPhoneModel	()Ljava/lang/String;
    //   80: putfield 100	com/baidu/mobstat/bo:o	Ljava/lang/String;
    //   83: aload_0
    //   84: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   87: invokevirtual 103	com/baidu/mobstat/CooperService:getManufacturer	()Ljava/lang/String;
    //   90: putfield 105	com/baidu/mobstat/bo:p	Ljava/lang/String;
    //   93: aload_0
    //   94: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   97: aload 4
    //   99: aload_1
    //   100: invokevirtual 109	com/baidu/mobstat/CooperService:getDeviceId	(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    //   103: putfield 111	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   106: invokestatic 116	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   109: aload_1
    //   110: invokevirtual 119	com/baidu/mobstat/be:i	(Landroid/content/Context;)Z
    //   113: ifeq +272 -> 385
    //   116: ldc 121
    //   118: astore_3
    //   119: aload_0
    //   120: aload_3
    //   121: putfield 47	com/baidu/mobstat/bo:f	Ljava/lang/String;
    //   124: aload_1
    //   125: invokestatic 125	com/baidu/mobstat/cu:q	(Landroid/content/Context;)Z
    //   128: ifeq +9 -> 137
    //   131: aload_0
    //   132: ldc 127
    //   134: putfield 47	com/baidu/mobstat/bo:f	Ljava/lang/String;
    //   137: aload_0
    //   138: new 129	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   145: aload_0
    //   146: getfield 47	com/baidu/mobstat/bo:f	Ljava/lang/String;
    //   149: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: ldc -120
    //   154: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: putfield 47	com/baidu/mobstat/bo:f	Ljava/lang/String;
    //   163: aload_0
    //   164: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   167: aload_1
    //   168: invokevirtual 143	com/baidu/mobstat/CooperService:getMacID	(Landroid/content/Context;)Ljava/lang/String;
    //   171: putfield 145	com/baidu/mobstat/bo:t	Ljava/lang/String;
    //   174: aload_0
    //   175: iconst_2
    //   176: aload_1
    //   177: invokestatic 148	com/baidu/mobstat/cu:d	(ILandroid/content/Context;)Ljava/lang/String;
    //   180: putfield 150	com/baidu/mobstat/bo:v	Ljava/lang/String;
    //   183: aload_0
    //   184: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   187: aload_1
    //   188: iconst_1
    //   189: invokevirtual 154	com/baidu/mobstat/CooperService:getCUID	(Landroid/content/Context;Z)Ljava/lang/String;
    //   192: putfield 49	com/baidu/mobstat/bo:g	Ljava/lang/String;
    //   195: aload_0
    //   196: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   199: aload 4
    //   201: invokevirtual 158	com/baidu/mobstat/CooperService:getOperator	(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    //   204: putfield 160	com/baidu/mobstat/bo:n	Ljava/lang/String;
    //   207: aload_0
    //   208: aload_1
    //   209: invokestatic 163	com/baidu/mobstat/cu:b	(Landroid/content/Context;)I
    //   212: putfield 165	com/baidu/mobstat/bo:k	I
    //   215: aload_0
    //   216: aload_1
    //   217: invokestatic 167	com/baidu/mobstat/cu:c	(Landroid/content/Context;)I
    //   220: putfield 169	com/baidu/mobstat/bo:l	I
    //   223: aload_1
    //   224: invokevirtual 173	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   227: invokevirtual 179	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   230: getfield 184	android/content/res/Configuration:orientation	I
    //   233: iconst_2
    //   234: if_icmpne +47 -> 281
    //   237: ldc -70
    //   239: invokestatic 191	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   242: aload_0
    //   243: aload_0
    //   244: getfield 165	com/baidu/mobstat/bo:k	I
    //   247: aload_0
    //   248: getfield 169	com/baidu/mobstat/bo:l	I
    //   251: ixor
    //   252: putfield 165	com/baidu/mobstat/bo:k	I
    //   255: aload_0
    //   256: aload_0
    //   257: getfield 165	com/baidu/mobstat/bo:k	I
    //   260: aload_0
    //   261: getfield 169	com/baidu/mobstat/bo:l	I
    //   264: ixor
    //   265: putfield 169	com/baidu/mobstat/bo:l	I
    //   268: aload_0
    //   269: aload_0
    //   270: getfield 165	com/baidu/mobstat/bo:k	I
    //   273: aload_0
    //   274: getfield 169	com/baidu/mobstat/bo:l	I
    //   277: ixor
    //   278: putfield 165	com/baidu/mobstat/bo:k	I
    //   281: aload_0
    //   282: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   285: aload_1
    //   286: invokevirtual 194	com/baidu/mobstat/CooperService:getAppChannel	(Landroid/content/Context;)Ljava/lang/String;
    //   289: putfield 53	com/baidu/mobstat/bo:m	Ljava/lang/String;
    //   292: aload_0
    //   293: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   296: aload_1
    //   297: invokevirtual 197	com/baidu/mobstat/CooperService:getAppKey	(Landroid/content/Context;)Ljava/lang/String;
    //   300: putfield 43	com/baidu/mobstat/bo:e	Ljava/lang/String;
    //   303: aload_0
    //   304: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   307: aload_1
    //   308: invokevirtual 200	com/baidu/mobstat/CooperService:getAppVersionCode	(Landroid/content/Context;)I
    //   311: putfield 51	com/baidu/mobstat/bo:h	I
    //   314: aload_0
    //   315: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   318: aload_1
    //   319: invokevirtual 203	com/baidu/mobstat/CooperService:getAppVersionName	(Landroid/content/Context;)Ljava/lang/String;
    //   322: putfield 205	com/baidu/mobstat/bo:i	Ljava/lang/String;
    //   325: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   328: aload_1
    //   329: invokevirtual 208	com/baidu/mobstat/CooperService:checkCellLocationSetting	(Landroid/content/Context;)Z
    //   332: ifeq +99 -> 431
    //   335: aload_0
    //   336: aload_1
    //   337: invokestatic 210	com/baidu/mobstat/cu:g	(Landroid/content/Context;)Ljava/lang/String;
    //   340: putfield 212	com/baidu/mobstat/bo:q	Ljava/lang/String;
    //   343: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   346: aload_1
    //   347: invokevirtual 215	com/baidu/mobstat/CooperService:checkGPSLocationSetting	(Landroid/content/Context;)Z
    //   350: ifeq +98 -> 448
    //   353: aload_0
    //   354: aload_1
    //   355: invokestatic 217	com/baidu/mobstat/cu:h	(Landroid/content/Context;)Ljava/lang/String;
    //   358: putfield 219	com/baidu/mobstat/bo:r	Ljava/lang/String;
    //   361: aload_0
    //   362: invokestatic 84	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   365: aload_1
    //   366: invokevirtual 222	com/baidu/mobstat/CooperService:getLinkedWay	(Landroid/content/Context;)Ljava/lang/String;
    //   369: putfield 224	com/baidu/mobstat/bo:s	Ljava/lang/String;
    //   372: aload_0
    //   373: iconst_1
    //   374: putfield 41	com/baidu/mobstat/bo:b	Z
    //   377: goto -366 -> 11
    //   380: astore_1
    //   381: aload_0
    //   382: monitorexit
    //   383: aload_1
    //   384: athrow
    //   385: ldc 45
    //   387: astore_3
    //   388: goto -269 -> 119
    //   391: astore_3
    //   392: aload_3
    //   393: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   396: goto -222 -> 174
    //   399: astore_3
    //   400: aload_3
    //   401: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   404: goto -221 -> 183
    //   407: astore_3
    //   408: aload_3
    //   409: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   412: goto -205 -> 207
    //   415: astore_3
    //   416: aload_3
    //   417: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   420: goto -139 -> 281
    //   423: astore_3
    //   424: aload_3
    //   425: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   428: goto -103 -> 325
    //   431: aload_0
    //   432: ldc -27
    //   434: putfield 212	com/baidu/mobstat/bo:q	Ljava/lang/String;
    //   437: goto -94 -> 343
    //   440: astore_3
    //   441: aload_3
    //   442: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   445: goto -102 -> 343
    //   448: aload_0
    //   449: ldc -25
    //   451: putfield 219	com/baidu/mobstat/bo:r	Ljava/lang/String;
    //   454: goto -93 -> 361
    //   457: astore_3
    //   458: aload_3
    //   459: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   462: goto -101 -> 361
    //   465: astore_1
    //   466: aload_1
    //   467: invokestatic 227	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   470: goto -98 -> 372
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	473	0	this	bo
    //   0	473	1	paramContext	Context
    //   6	2	2	bool	boolean
    //   118	270	3	str	String
    //   391	2	3	localException1	Exception
    //   399	2	3	localException2	Exception
    //   407	2	3	localException3	Exception
    //   415	2	3	localException4	Exception
    //   423	2	3	localException5	Exception
    //   440	2	3	localException6	Exception
    //   457	2	3	localException7	Exception
    //   51	149	4	localTelephonyManager	android.telephony.TelephonyManager
    // Exception table:
    //   from	to	target	type
    //   2	7	380	finally
    //   14	116	380	finally
    //   119	137	380	finally
    //   137	163	380	finally
    //   163	174	380	finally
    //   174	183	380	finally
    //   183	195	380	finally
    //   195	207	380	finally
    //   207	281	380	finally
    //   281	303	380	finally
    //   303	325	380	finally
    //   325	343	380	finally
    //   343	361	380	finally
    //   361	372	380	finally
    //   372	377	380	finally
    //   392	396	380	finally
    //   400	404	380	finally
    //   408	412	380	finally
    //   416	420	380	finally
    //   424	428	380	finally
    //   431	437	380	finally
    //   441	445	380	finally
    //   448	454	380	finally
    //   458	462	380	finally
    //   466	470	380	finally
    //   163	174	391	java/lang/Exception
    //   174	183	399	java/lang/Exception
    //   195	207	407	java/lang/Exception
    //   207	281	415	java/lang/Exception
    //   303	325	423	java/lang/Exception
    //   325	343	440	java/lang/Exception
    //   431	437	440	java/lang/Exception
    //   343	361	457	java/lang/Exception
    //   448	454	457	java/lang/Exception
    //   361	372	465	java/lang/Exception
  }
  
  /* Error */
  public void a(Context paramContext, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual 234	com/baidu/mobstat/bo:a	(Landroid/content/Context;)V
    //   7: aload_2
    //   8: invokevirtual 240	org/json/JSONObject:length	()I
    //   11: bipush 10
    //   13: if_icmple +28 -> 41
    //   16: new 129	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   23: ldc -14
    //   25: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_2
    //   29: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokestatic 191	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   38: aload_0
    //   39: monitorexit
    //   40: return
    //   41: aload_0
    //   42: aload_1
    //   43: aload_2
    //   44: invokevirtual 247	com/baidu/mobstat/bo:b	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   47: new 129	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   54: ldc -7
    //   56: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_2
    //   60: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokestatic 191	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   69: goto -31 -> 38
    //   72: astore_1
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	bo
    //   0	77	1	paramContext	Context
    //   0	77	2	paramJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   2	38	72	finally
    //   41	69	72	finally
  }
  
  public void b(Context paramContext, JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        if (a != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("o", str);
        paramJSONObject.put("st", 0);
        if (c != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("s", str);
        if (d != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("sv", str);
        if (e != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("k", str);
        if (f != null) {
          continue;
        }
        str = "0";
        paramJSONObject.put("pt", str);
        paramJSONObject.put("i", "");
        paramJSONObject.put("v", "3.7.3.8");
        paramJSONObject.put("sc", 2);
        paramJSONObject.put("a", h);
        if (i != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("n", str);
        paramJSONObject.put("d", "");
        if (t != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("mc", str);
        if (v != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("bm", str);
        if (j != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("dd", str);
        if (g != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("ii", str);
        paramJSONObject.put("tg", 2);
        paramJSONObject.put("w", k);
        paramJSONObject.put("h", l);
        if (m != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("c", str);
        if (n != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("op", str);
        if (o != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("m", str);
        if (p != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("ma", str);
        paramJSONObject.put("cl", q);
        if (r != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("gl", str);
        if (s != null) {
          continue;
        }
        str = "";
        paramJSONObject.put("l", str);
        paramJSONObject.put("t", System.currentTimeMillis());
        paramJSONObject.put("sq", 0);
        paramJSONObject.put("pn", cu.f(2, paramContext));
        paramJSONObject.put("pl", cu.p(paramContext));
        cr.a("*******" + paramJSONObject.toString() + "; len: " + paramJSONObject.length());
      }
      catch (JSONException paramContext)
      {
        String str;
        cr.a("header ini error");
        continue;
      }
      finally {}
      return;
      str = a;
      continue;
      str = c;
      continue;
      str = d;
      continue;
      str = e;
      continue;
      str = f;
      continue;
      str = i;
      continue;
      str = t;
      continue;
      str = v;
      continue;
      str = j;
      continue;
      str = g;
      continue;
      str = m;
      continue;
      str = n;
      continue;
      str = o;
      continue;
      str = p;
      continue;
      str = r;
      continue;
      str = s;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */