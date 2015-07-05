package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.e;
import org.json.JSONException;
import org.json.JSONObject;

class ae
{
  static String a = "Android";
  String b;
  String c;
  String d = null;
  String e = "0";
  String f = null;
  int g = -1;
  String h;
  String i;
  int j;
  int k;
  String l = null;
  String m;
  String n;
  String o;
  String p;
  String q;
  String r;
  String s;
  String t;
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ldc 53
    //   5: invokestatic 58	com/baidu/mobstat/util/c:e	(Landroid/content/Context;Ljava/lang/String;)V
    //   8: aload_1
    //   9: ldc 60
    //   11: invokestatic 58	com/baidu/mobstat/util/c:e	(Landroid/content/Context;Ljava/lang/String;)V
    //   14: aload_1
    //   15: ldc 62
    //   17: invokestatic 58	com/baidu/mobstat/util/c:e	(Landroid/content/Context;Ljava/lang/String;)V
    //   20: aload_1
    //   21: ldc 64
    //   23: invokestatic 58	com/baidu/mobstat/util/c:e	(Landroid/content/Context;Ljava/lang/String;)V
    //   26: aload_1
    //   27: ldc 66
    //   29: invokevirtual 72	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   32: checkcast 74	android/telephony/TelephonyManager
    //   35: astore_3
    //   36: aload_0
    //   37: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   40: invokevirtual 83	com/baidu/mobstat/CooperService:getOSVersion	()Ljava/lang/String;
    //   43: putfield 85	com/baidu/mobstat/ae:b	Ljava/lang/String;
    //   46: aload_0
    //   47: invokestatic 88	com/baidu/mobstat/CooperService:getOSSysVersion	()Ljava/lang/String;
    //   50: putfield 90	com/baidu/mobstat/ae:c	Ljava/lang/String;
    //   53: aload_0
    //   54: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   57: invokevirtual 93	com/baidu/mobstat/CooperService:getPhoneModel	()Ljava/lang/String;
    //   60: putfield 95	com/baidu/mobstat/ae:n	Ljava/lang/String;
    //   63: aload_0
    //   64: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   67: aload_3
    //   68: aload_1
    //   69: invokevirtual 99	com/baidu/mobstat/CooperService:getDeviceId	(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    //   72: putfield 101	com/baidu/mobstat/ae:i	Ljava/lang/String;
    //   75: invokestatic 106	com/baidu/mobstat/r:a	()Lcom/baidu/mobstat/r;
    //   78: aload_1
    //   79: invokevirtual 109	com/baidu/mobstat/r:j	(Landroid/content/Context;)Z
    //   82: ifeq +267 -> 349
    //   85: ldc 111
    //   87: astore_2
    //   88: aload_0
    //   89: aload_2
    //   90: putfield 42	com/baidu/mobstat/ae:e	Ljava/lang/String;
    //   93: getstatic 114	com/baidu/mobstat/Build:d	Ljava/lang/String;
    //   96: ldc 116
    //   98: invokevirtual 122	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   101: ifne +35 -> 136
    //   104: aload_0
    //   105: new 124	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   112: aload_0
    //   113: getfield 42	com/baidu/mobstat/ae:e	Ljava/lang/String;
    //   116: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: ldc -125
    //   121: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: getstatic 114	com/baidu/mobstat/Build:d	Ljava/lang/String;
    //   127: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: putfield 42	com/baidu/mobstat/ae:e	Ljava/lang/String;
    //   136: aload_0
    //   137: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   140: aload_1
    //   141: invokevirtual 138	com/baidu/mobstat/CooperService:getMacID	(Landroid/content/Context;)Ljava/lang/String;
    //   144: putfield 140	com/baidu/mobstat/ae:r	Ljava/lang/String;
    //   147: aload_0
    //   148: aload_1
    //   149: invokestatic 144	com/baidu/mobstat/aw:i	(Landroid/content/Context;)Ljava/lang/String;
    //   152: putfield 146	com/baidu/mobstat/ae:t	Ljava/lang/String;
    //   155: aload_0
    //   156: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   159: aload_1
    //   160: iconst_1
    //   161: invokevirtual 150	com/baidu/mobstat/CooperService:getCUID	(Landroid/content/Context;Z)Ljava/lang/String;
    //   164: putfield 44	com/baidu/mobstat/ae:f	Ljava/lang/String;
    //   167: aload_0
    //   168: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   171: aload_3
    //   172: invokevirtual 154	com/baidu/mobstat/CooperService:getOperator	(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    //   175: putfield 156	com/baidu/mobstat/ae:m	Ljava/lang/String;
    //   178: aload_0
    //   179: aload_1
    //   180: invokestatic 159	com/baidu/mobstat/aw:a	(Landroid/content/Context;)I
    //   183: putfield 161	com/baidu/mobstat/ae:j	I
    //   186: aload_0
    //   187: aload_1
    //   188: invokestatic 163	com/baidu/mobstat/aw:b	(Landroid/content/Context;)I
    //   191: putfield 165	com/baidu/mobstat/ae:k	I
    //   194: aload_1
    //   195: invokevirtual 169	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   198: invokevirtual 175	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   201: getfield 180	android/content/res/Configuration:orientation	I
    //   204: iconst_2
    //   205: if_icmpne +50 -> 255
    //   208: ldc -74
    //   210: ldc -72
    //   212: invokestatic 189	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   215: pop
    //   216: aload_0
    //   217: aload_0
    //   218: getfield 161	com/baidu/mobstat/ae:j	I
    //   221: aload_0
    //   222: getfield 165	com/baidu/mobstat/ae:k	I
    //   225: ixor
    //   226: putfield 161	com/baidu/mobstat/ae:j	I
    //   229: aload_0
    //   230: aload_0
    //   231: getfield 161	com/baidu/mobstat/ae:j	I
    //   234: aload_0
    //   235: getfield 165	com/baidu/mobstat/ae:k	I
    //   238: ixor
    //   239: putfield 165	com/baidu/mobstat/ae:k	I
    //   242: aload_0
    //   243: aload_0
    //   244: getfield 161	com/baidu/mobstat/ae:j	I
    //   247: aload_0
    //   248: getfield 165	com/baidu/mobstat/ae:k	I
    //   251: ixor
    //   252: putfield 161	com/baidu/mobstat/ae:j	I
    //   255: aload_0
    //   256: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   259: aload_1
    //   260: invokevirtual 192	com/baidu/mobstat/CooperService:getAppChannel	(Landroid/content/Context;)Ljava/lang/String;
    //   263: putfield 48	com/baidu/mobstat/ae:l	Ljava/lang/String;
    //   266: aload_0
    //   267: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   270: aload_1
    //   271: invokevirtual 195	com/baidu/mobstat/CooperService:getAppKey	(Landroid/content/Context;)Ljava/lang/String;
    //   274: putfield 38	com/baidu/mobstat/ae:d	Ljava/lang/String;
    //   277: aload_0
    //   278: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   281: aload_1
    //   282: invokevirtual 198	com/baidu/mobstat/CooperService:getAppVersionCode	(Landroid/content/Context;)I
    //   285: putfield 46	com/baidu/mobstat/ae:g	I
    //   288: aload_0
    //   289: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   292: aload_1
    //   293: invokevirtual 201	com/baidu/mobstat/CooperService:getAppVersionName	(Landroid/content/Context;)Ljava/lang/String;
    //   296: putfield 203	com/baidu/mobstat/ae:h	Ljava/lang/String;
    //   299: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   302: aload_1
    //   303: invokevirtual 206	com/baidu/mobstat/CooperService:checkCellLocationSetting	(Landroid/content/Context;)Z
    //   306: ifeq +99 -> 405
    //   309: aload_0
    //   310: aload_1
    //   311: invokestatic 208	com/baidu/mobstat/aw:e	(Landroid/content/Context;)Ljava/lang/String;
    //   314: putfield 210	com/baidu/mobstat/ae:o	Ljava/lang/String;
    //   317: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   320: aload_1
    //   321: invokevirtual 213	com/baidu/mobstat/CooperService:checkGPSLocationSetting	(Landroid/content/Context;)Z
    //   324: ifeq +99 -> 423
    //   327: aload_0
    //   328: aload_1
    //   329: invokestatic 215	com/baidu/mobstat/aw:f	(Landroid/content/Context;)Ljava/lang/String;
    //   332: putfield 217	com/baidu/mobstat/ae:p	Ljava/lang/String;
    //   335: aload_0
    //   336: invokestatic 79	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   339: aload_1
    //   340: invokevirtual 220	com/baidu/mobstat/CooperService:getLinkedWay	(Landroid/content/Context;)Ljava/lang/String;
    //   343: putfield 222	com/baidu/mobstat/ae:q	Ljava/lang/String;
    //   346: aload_0
    //   347: monitorexit
    //   348: return
    //   349: ldc 40
    //   351: astore_2
    //   352: goto -264 -> 88
    //   355: astore_2
    //   356: aload_2
    //   357: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   360: pop
    //   361: goto -214 -> 147
    //   364: astore_1
    //   365: aload_0
    //   366: monitorexit
    //   367: aload_1
    //   368: athrow
    //   369: astore_2
    //   370: aload_2
    //   371: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   374: pop
    //   375: goto -220 -> 155
    //   378: astore_2
    //   379: aload_2
    //   380: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   383: pop
    //   384: goto -206 -> 178
    //   387: astore_2
    //   388: aload_2
    //   389: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   392: pop
    //   393: goto -138 -> 255
    //   396: astore_2
    //   397: aload_2
    //   398: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   401: pop
    //   402: goto -103 -> 299
    //   405: aload_0
    //   406: ldc -29
    //   408: putfield 210	com/baidu/mobstat/ae:o	Ljava/lang/String;
    //   411: goto -94 -> 317
    //   414: astore_2
    //   415: aload_2
    //   416: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   419: pop
    //   420: goto -103 -> 317
    //   423: aload_0
    //   424: ldc -27
    //   426: putfield 217	com/baidu/mobstat/ae:p	Ljava/lang/String;
    //   429: goto -94 -> 335
    //   432: astore_2
    //   433: aload_2
    //   434: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   437: pop
    //   438: goto -103 -> 335
    //   441: astore_1
    //   442: aload_1
    //   443: invokestatic 225	com/baidu/mobstat/util/e:a	(Ljava/lang/Throwable;)I
    //   446: pop
    //   447: goto -101 -> 346
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	450	0	this	ae
    //   0	450	1	paramContext	Context
    //   87	265	2	str	String
    //   355	2	2	localException1	Exception
    //   369	2	2	localException2	Exception
    //   378	2	2	localException3	Exception
    //   387	2	2	localException4	Exception
    //   396	2	2	localException5	Exception
    //   414	2	2	localException6	Exception
    //   432	2	2	localException7	Exception
    //   35	137	3	localTelephonyManager	android.telephony.TelephonyManager
    // Exception table:
    //   from	to	target	type
    //   136	147	355	java/lang/Exception
    //   2	85	364	finally
    //   88	136	364	finally
    //   136	147	364	finally
    //   147	155	364	finally
    //   155	167	364	finally
    //   167	178	364	finally
    //   178	255	364	finally
    //   255	277	364	finally
    //   277	299	364	finally
    //   299	317	364	finally
    //   317	335	364	finally
    //   335	346	364	finally
    //   356	361	364	finally
    //   370	375	364	finally
    //   379	384	364	finally
    //   388	393	364	finally
    //   397	402	364	finally
    //   405	411	364	finally
    //   415	420	364	finally
    //   423	429	364	finally
    //   433	438	364	finally
    //   442	447	364	finally
    //   147	155	369	java/lang/Exception
    //   167	178	378	java/lang/Exception
    //   178	255	387	java/lang/Exception
    //   277	299	396	java/lang/Exception
    //   299	317	414	java/lang/Exception
    //   405	411	414	java/lang/Exception
    //   317	335	432	java/lang/Exception
    //   423	429	432	java/lang/Exception
    //   335	346	441	java/lang/Exception
  }
  
  public void a(Context paramContext, JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        if (paramJSONObject.length() > 10)
        {
          e.a("sdkstat", "***** have been installHeader header=" + paramJSONObject);
          return;
        }
        e.a("sdkstat", "installHeader header=" + paramJSONObject);
        a(paramContext);
        try
        {
          if (a == null)
          {
            str = "";
            paramJSONObject.put("o", str);
            if (b != null) {
              break label562;
            }
            str = "";
            paramJSONObject.put("s", str);
            if (c != null) {
              break label570;
            }
            str = "";
            paramJSONObject.put("sv", str);
            if (d != null) {
              break label578;
            }
            str = "";
            paramJSONObject.put("k", str);
            if (e != null) {
              break label586;
            }
            str = "0";
            paramJSONObject.put("pt", str);
            paramJSONObject.put("i", "");
            paramJSONObject.put("v", t.a);
            paramJSONObject.put("a", g);
            if (h != null) {
              break label594;
            }
            str = "";
            paramJSONObject.put("n", str);
            paramJSONObject.put("d", "");
            if (r != null) {
              break label602;
            }
            str = "";
            paramJSONObject.put("mc", str);
            if (t != null) {
              break label610;
            }
            str = "";
            paramJSONObject.put("bm", str);
            if (i != null) {
              break label618;
            }
            str = "";
            paramJSONObject.put("dd", str);
            if (f != null) {
              break label626;
            }
            str = "";
            paramJSONObject.put("ii", str);
            paramJSONObject.put("tg", t.b);
            paramJSONObject.put("w", j);
            paramJSONObject.put("h", k);
            if (l != null) {
              break label634;
            }
            str = "";
            paramJSONObject.put("c", str);
            if (m != null) {
              break label642;
            }
            str = "";
            paramJSONObject.put("op", str);
            if (n != null) {
              break label650;
            }
            str = "";
            paramJSONObject.put("m", str);
            paramJSONObject.put("cl", o);
            if (p != null) {
              break label658;
            }
            str = "";
            paramJSONObject.put("gl", str);
            if (q != null) {
              break label666;
            }
            str = "";
            paramJSONObject.put("l", str);
            paramJSONObject.put("t", System.currentTimeMillis());
            paramJSONObject.put("sq", 0);
            paramJSONObject.put("pn", aw.m(paramContext));
            paramJSONObject.put("pl", aw.n(paramContext));
            e.a("sdkstat", "*******" + paramJSONObject.toString() + "; len: " + paramJSONObject.length());
          }
        }
        catch (JSONException paramContext)
        {
          e.a("sdkstat", "header ini error");
          throw new RuntimeException("header ini error");
        }
        str = a;
      }
      finally {}
      continue;
      label562:
      String str = b;
      continue;
      label570:
      str = c;
      continue;
      label578:
      str = d;
      continue;
      label586:
      str = e;
      continue;
      label594:
      str = h;
      continue;
      label602:
      str = r;
      continue;
      label610:
      str = t;
      continue;
      label618:
      str = i;
      continue;
      label626:
      str = f;
      continue;
      label634:
      str = l;
      continue;
      label642:
      str = m;
      continue;
      label650:
      str = n;
      continue;
      label658:
      str = p;
      continue;
      label666:
      str = q;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */