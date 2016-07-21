package com.duapps.ad.stats;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.duapps.ad.base.ag;
import com.duapps.ad.base.an;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONException;
import org.json.JSONObject;

public final class q
  implements Handler.Callback
{
  private static q b;
  private static String c = "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?";
  private static String d = "http://rts.mobula.sdk.duapps.com/orts/rp?";
  private static String e = "http://rts.mobula.sdk.duapps.com/orts/rpb?";
  int a = 0;
  private Context f;
  private Handler g;
  
  private q(Context paramContext)
  {
    f = paramContext;
    paramContext = new HandlerThread("stts", 10);
    paramContext.start();
    g = new Handler(paramContext.getLooper(), this);
    g.sendEmptyMessage(4);
    c();
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      if (b == null) {
        b = new q(paramContext.getApplicationContext());
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  /* Error */
  private void a(Message paramMessage)
  {
    // Byte code:
    //   0: invokestatic 89	java/lang/System:currentTimeMillis	()J
    //   3: lstore 4
    //   5: new 91	org/json/JSONStringer
    //   8: dup
    //   9: invokespecial 92	org/json/JSONStringer:<init>	()V
    //   12: astore 18
    //   14: new 94	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   21: astore 17
    //   23: lload 4
    //   25: ldc2_w 96
    //   28: lsub
    //   29: lstore 4
    //   31: aload_0
    //   32: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   35: invokevirtual 101	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   38: aload_0
    //   39: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   42: iconst_4
    //   43: invokestatic 106	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   46: iconst_5
    //   47: anewarray 108	java/lang/String
    //   50: dup
    //   51: iconst_0
    //   52: ldc 110
    //   54: aastore
    //   55: dup
    //   56: iconst_1
    //   57: ldc 112
    //   59: aastore
    //   60: dup
    //   61: iconst_2
    //   62: ldc 114
    //   64: aastore
    //   65: dup
    //   66: iconst_3
    //   67: ldc 116
    //   69: aastore
    //   70: dup
    //   71: iconst_4
    //   72: ldc 118
    //   74: aastore
    //   75: ldc 120
    //   77: iconst_1
    //   78: anewarray 108	java/lang/String
    //   81: dup
    //   82: iconst_0
    //   83: lload 4
    //   85: invokestatic 124	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   88: aastore
    //   89: ldc 126
    //   91: invokevirtual 132	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   94: astore 9
    //   96: aload 9
    //   98: ifnonnull +26 -> 124
    //   101: aload 9
    //   103: ifnull +20 -> 123
    //   106: aload 9
    //   108: invokeinterface 138 1 0
    //   113: ifne +10 -> 123
    //   116: aload 9
    //   118: invokeinterface 141 1 0
    //   123: return
    //   124: aload 9
    //   126: astore 10
    //   128: aload 9
    //   130: invokeinterface 145 1 0
    //   135: iconst_1
    //   136: if_icmpge +37 -> 173
    //   139: aload 9
    //   141: astore 10
    //   143: aload 9
    //   145: invokeinterface 141 1 0
    //   150: aload 9
    //   152: ifnull -29 -> 123
    //   155: aload 9
    //   157: invokeinterface 138 1 0
    //   162: ifne -39 -> 123
    //   165: aload 9
    //   167: invokeinterface 141 1 0
    //   172: return
    //   173: aload 9
    //   175: astore 10
    //   177: aload 18
    //   179: invokevirtual 149	org/json/JSONStringer:array	()Lorg/json/JSONStringer;
    //   182: pop
    //   183: aconst_null
    //   184: astore 8
    //   186: aconst_null
    //   187: astore_1
    //   188: iconst_0
    //   189: istore_2
    //   190: aload 9
    //   192: astore 10
    //   194: aload 8
    //   196: astore 12
    //   198: aload_1
    //   199: astore 11
    //   201: aload 9
    //   203: invokeinterface 152 1 0
    //   208: ifeq +234 -> 442
    //   211: aload 9
    //   213: astore 10
    //   215: aload 8
    //   217: astore 12
    //   219: aload_1
    //   220: astore 11
    //   222: aload 9
    //   224: iconst_0
    //   225: invokeinterface 156 2 0
    //   230: lstore 6
    //   232: aload 9
    //   234: astore 10
    //   236: aload 8
    //   238: astore 12
    //   240: aload_1
    //   241: astore 11
    //   243: aload 9
    //   245: iconst_1
    //   246: invokeinterface 160 2 0
    //   251: astore 19
    //   253: aload 9
    //   255: astore 10
    //   257: aload 8
    //   259: astore 12
    //   261: aload_1
    //   262: astore 11
    //   264: aload 9
    //   266: iconst_2
    //   267: invokeinterface 164 2 0
    //   272: astore 15
    //   274: aload 9
    //   276: astore 10
    //   278: aload 8
    //   280: astore 12
    //   282: aload_1
    //   283: astore 11
    //   285: aload 9
    //   287: iconst_3
    //   288: invokeinterface 164 2 0
    //   293: astore 16
    //   295: aload_1
    //   296: astore 13
    //   298: aload_1
    //   299: ifnonnull +501 -> 800
    //   302: aload 15
    //   304: astore 13
    //   306: goto +494 -> 800
    //   309: aload 14
    //   311: astore 8
    //   313: aload 13
    //   315: astore_1
    //   316: aload 9
    //   318: astore 10
    //   320: aload 14
    //   322: astore 12
    //   324: aload 13
    //   326: astore 11
    //   328: aload 13
    //   330: aload 15
    //   332: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   335: ifeq -145 -> 190
    //   338: aload 14
    //   340: astore 8
    //   342: aload 13
    //   344: astore_1
    //   345: aload 9
    //   347: astore 10
    //   349: aload 14
    //   351: astore 12
    //   353: aload 13
    //   355: astore 11
    //   357: aload 14
    //   359: aload 16
    //   361: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   364: ifeq -174 -> 190
    //   367: aload 9
    //   369: astore 10
    //   371: aload 14
    //   373: astore 12
    //   375: aload 13
    //   377: astore 11
    //   379: aload 18
    //   381: new 170	org/json/JSONObject
    //   384: dup
    //   385: new 108	java/lang/String
    //   388: dup
    //   389: aload 19
    //   391: iconst_3
    //   392: invokestatic 176	android/util/Base64:decode	([BI)[B
    //   395: invokespecial 179	java/lang/String:<init>	([B)V
    //   398: invokespecial 182	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   401: invokevirtual 186	org/json/JSONStringer:value	(Ljava/lang/Object;)Lorg/json/JSONStringer;
    //   404: pop
    //   405: aload 9
    //   407: astore 10
    //   409: aload 14
    //   411: astore 12
    //   413: aload 13
    //   415: astore 11
    //   417: aload 17
    //   419: lload 6
    //   421: invokevirtual 190	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   424: ldc -64
    //   426: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: pop
    //   430: iconst_1
    //   431: istore_2
    //   432: aload 14
    //   434: astore 8
    //   436: aload 13
    //   438: astore_1
    //   439: goto -249 -> 190
    //   442: aload 9
    //   444: astore 10
    //   446: aload 8
    //   448: astore 12
    //   450: aload_1
    //   451: astore 11
    //   453: aload 18
    //   455: invokevirtual 198	org/json/JSONStringer:endArray	()Lorg/json/JSONStringer;
    //   458: pop
    //   459: aload 9
    //   461: ifnull +334 -> 795
    //   464: aload 9
    //   466: invokeinterface 138 1 0
    //   471: ifne +324 -> 795
    //   474: aload 9
    //   476: invokeinterface 141 1 0
    //   481: iconst_0
    //   482: istore_3
    //   483: iload_2
    //   484: ifeq -361 -> 123
    //   487: iload_3
    //   488: ifne -365 -> 123
    //   491: aload_1
    //   492: ifnull -369 -> 123
    //   495: aload 8
    //   497: ifnull -374 -> 123
    //   500: aload 17
    //   502: aload 17
    //   504: invokevirtual 201	java/lang/StringBuilder:length	()I
    //   507: iconst_1
    //   508: isub
    //   509: invokevirtual 205	java/lang/StringBuilder:deleteCharAt	(I)Ljava/lang/StringBuilder;
    //   512: pop
    //   513: aload 18
    //   515: invokevirtual 208	org/json/JSONStringer:toString	()Ljava/lang/String;
    //   518: astore 9
    //   520: aload_0
    //   521: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   524: ldc -46
    //   526: invokestatic 215	com/duapps/ad/base/r:a	(Landroid/content/Context;Ljava/lang/String;)J
    //   529: lstore 6
    //   531: aload_0
    //   532: aload_1
    //   533: aload 8
    //   535: aload 9
    //   537: lload 6
    //   539: invokespecial 218	com/duapps/ad/stats/q:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    //   542: ifeq -419 -> 123
    //   545: aload_0
    //   546: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   549: invokevirtual 101	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   552: aload_0
    //   553: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   556: iconst_4
    //   557: invokestatic 106	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   560: ldc -36
    //   562: iconst_1
    //   563: anewarray 108	java/lang/String
    //   566: dup
    //   567: iconst_0
    //   568: lload 4
    //   570: invokestatic 124	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   573: aastore
    //   574: invokevirtual 224	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   577: pop
    //   578: new 94	java/lang/StringBuilder
    //   581: dup
    //   582: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   585: ldc -30
    //   587: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   590: aload 17
    //   592: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   595: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   598: ldc -27
    //   600: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   603: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   606: astore_1
    //   607: aload_0
    //   608: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   611: invokevirtual 101	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   614: aload_0
    //   615: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   618: iconst_4
    //   619: invokestatic 106	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   622: aload_1
    //   623: aconst_null
    //   624: invokevirtual 224	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   627: istore_2
    //   628: ldc -25
    //   630: new 94	java/lang/StringBuilder
    //   633: dup
    //   634: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   637: ldc -23
    //   639: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   642: iload_2
    //   643: invokevirtual 235	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   646: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   649: invokestatic 240	com/duapps/ad/base/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   652: aload_0
    //   653: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   656: ldc -46
    //   658: lconst_1
    //   659: lload 6
    //   661: ladd
    //   662: invokestatic 243	com/duapps/ad/base/r:a	(Landroid/content/Context;Ljava/lang/String;J)V
    //   665: return
    //   666: astore_1
    //   667: invokestatic 245	com/duapps/ad/base/l:a	()Z
    //   670: ifeq -547 -> 123
    //   673: ldc -25
    //   675: ldc -9
    //   677: aload_1
    //   678: invokestatic 250	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   681: return
    //   682: astore 13
    //   684: aconst_null
    //   685: astore 9
    //   687: aconst_null
    //   688: astore 8
    //   690: aconst_null
    //   691: astore_1
    //   692: iconst_0
    //   693: istore_2
    //   694: aload 9
    //   696: astore 10
    //   698: ldc -25
    //   700: ldc -4
    //   702: aload 13
    //   704: invokestatic 250	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   707: aload 9
    //   709: ifnull +81 -> 790
    //   712: aload 9
    //   714: invokeinterface 138 1 0
    //   719: ifne +71 -> 790
    //   722: aload 9
    //   724: invokeinterface 141 1 0
    //   729: iconst_1
    //   730: istore_3
    //   731: goto -248 -> 483
    //   734: astore_1
    //   735: aconst_null
    //   736: astore 10
    //   738: aload 10
    //   740: ifnull +20 -> 760
    //   743: aload 10
    //   745: invokeinterface 138 1 0
    //   750: ifne +10 -> 760
    //   753: aload 10
    //   755: invokeinterface 141 1 0
    //   760: aload_1
    //   761: athrow
    //   762: astore_1
    //   763: goto -25 -> 738
    //   766: astore 13
    //   768: aconst_null
    //   769: astore 8
    //   771: aconst_null
    //   772: astore_1
    //   773: iconst_0
    //   774: istore_2
    //   775: goto -81 -> 694
    //   778: astore 13
    //   780: aload 12
    //   782: astore 8
    //   784: aload 11
    //   786: astore_1
    //   787: goto -93 -> 694
    //   790: iconst_1
    //   791: istore_3
    //   792: goto -309 -> 483
    //   795: iconst_0
    //   796: istore_3
    //   797: goto -314 -> 483
    //   800: aload 8
    //   802: astore 14
    //   804: aload 8
    //   806: ifnonnull -497 -> 309
    //   809: aload 16
    //   811: astore 14
    //   813: goto -504 -> 309
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	816	0	this	q
    //   0	816	1	paramMessage	Message
    //   189	586	2	i	int
    //   482	315	3	j	int
    //   3	566	4	l1	long
    //   230	430	6	l2	long
    //   184	621	8	localObject1	Object
    //   94	629	9	localObject2	Object
    //   126	628	10	localObject3	Object
    //   199	586	11	localObject4	Object
    //   196	585	12	localObject5	Object
    //   296	141	13	localObject6	Object
    //   682	21	13	localException1	Exception
    //   766	1	13	localException2	Exception
    //   778	1	13	localException3	Exception
    //   309	503	14	localObject7	Object
    //   272	59	15	str1	String
    //   293	517	16	str2	String
    //   21	570	17	localStringBuilder	StringBuilder
    //   12	502	18	localJSONStringer	org.json.JSONStringer
    //   251	139	19	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   545	665	666	java/lang/Exception
    //   31	96	682	java/lang/Exception
    //   31	96	734	finally
    //   128	139	762	finally
    //   143	150	762	finally
    //   177	183	762	finally
    //   201	211	762	finally
    //   222	232	762	finally
    //   243	253	762	finally
    //   264	274	762	finally
    //   285	295	762	finally
    //   328	338	762	finally
    //   357	367	762	finally
    //   379	405	762	finally
    //   417	430	762	finally
    //   453	459	762	finally
    //   698	707	762	finally
    //   128	139	766	java/lang/Exception
    //   143	150	766	java/lang/Exception
    //   177	183	766	java/lang/Exception
    //   201	211	778	java/lang/Exception
    //   222	232	778	java/lang/Exception
    //   243	253	778	java/lang/Exception
    //   264	274	778	java/lang/Exception
    //   285	295	778	java/lang/Exception
    //   328	338	778	java/lang/Exception
    //   357	367	778	java/lang/Exception
    //   379	405	778	java/lang/Exception
    //   417	430	778	java/lang/Exception
    //   453	459	778	java/lang/Exception
  }
  
  public static void a(String paramString)
  {
    if ("prod".equals(paramString))
    {
      d = "http://rts.mobula.sdk.duapps.com/orts/rp?";
      e = "http://rts.mobula.sdk.duapps.com/orts/rpb?";
      c = "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?";
    }
    while ((!"dev".equals(paramString)) && (!"test".equals(paramString))) {
      return;
    }
    d = "http://sandbox.duapps.com:8124/orts/rp?";
    e = "http://sandbox.duapps.com:8124/orts/rpb?";
    c = "http://sandbox.duapps.com:8124/adunion/slot/getSrcPrio?";
  }
  
  private static void a(HttpResponse paramHttpResponse)
  {
    Object localObject = paramHttpResponse.getEntity();
    paramHttpResponse = ((HttpEntity)localObject).getContent();
    localObject = ((HttpEntity)localObject).getContentEncoding();
    if ((localObject != null) && (((Header)localObject).getValue().indexOf("gzip") != -1)) {
      paramHttpResponse = new GZIPInputStream(paramHttpResponse);
    }
    for (;;)
    {
      localObject = new InputStreamReader(paramHttpResponse, "UTF-8");
      CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(1024);
      char[] arrayOfChar = new char['Ѐ'];
      for (;;)
      {
        int i = ((Reader)localObject).read(arrayOfChar);
        if (i == -1) {
          break;
        }
        localCharArrayBuffer.append(arrayOfChar, 0, i);
      }
      ap.a(paramHttpResponse);
      paramHttpResponse = localCharArrayBuffer.toString();
      l.c("ToolStatsCore", "result = " + paramHttpResponse);
      try
      {
        paramHttpResponse = new JSONObject(paramHttpResponse).getJSONObject("responseHeader");
        if (paramHttpResponse.getInt("status") != 200) {
          throw new IOException(paramHttpResponse.getString("msg"));
        }
      }
      catch (JSONException paramHttpResponse) {}
      return;
    }
  }
  
  /* Error */
  private boolean a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 8
    //   6: aload_0
    //   7: getfield 41	com/duapps/ad/stats/q:f	Landroid/content/Context;
    //   10: aload_1
    //   11: invokestatic 354	com/duapps/ad/base/i:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    //   14: astore 7
    //   16: invokestatic 89	java/lang/System:currentTimeMillis	()J
    //   19: invokestatic 124	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   22: astore 10
    //   24: aload 7
    //   26: new 356	org/apache/http/message/BasicNameValuePair
    //   29: dup
    //   30: ldc_w 358
    //   33: ldc_w 360
    //   36: invokespecial 362	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: invokeinterface 367 2 0
    //   44: pop
    //   45: aload 7
    //   47: new 356	org/apache/http/message/BasicNameValuePair
    //   50: dup
    //   51: ldc_w 369
    //   54: ldc_w 371
    //   57: invokespecial 362	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   60: invokeinterface 367 2 0
    //   65: pop
    //   66: aload 7
    //   68: new 356	org/apache/http/message/BasicNameValuePair
    //   71: dup
    //   72: ldc 110
    //   74: aload 10
    //   76: invokespecial 362	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   79: invokeinterface 367 2 0
    //   84: pop
    //   85: aload 7
    //   87: new 356	org/apache/http/message/BasicNameValuePair
    //   90: dup
    //   91: ldc -46
    //   93: lload 4
    //   95: invokestatic 375	java/lang/Long:toString	(J)Ljava/lang/String;
    //   98: invokespecial 362	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   101: invokeinterface 367 2 0
    //   106: pop
    //   107: aload 7
    //   109: new 356	org/apache/http/message/BasicNameValuePair
    //   112: dup
    //   113: ldc 116
    //   115: aload_2
    //   116: invokespecial 362	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: invokeinterface 367 2 0
    //   124: pop
    //   125: ldc_w 377
    //   128: invokestatic 383	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   131: astore 11
    //   133: aload 11
    //   135: aload_3
    //   136: invokevirtual 387	java/lang/String:getBytes	()[B
    //   139: invokevirtual 390	java/security/MessageDigest:update	([B)V
    //   142: aload 11
    //   144: aload 10
    //   146: invokevirtual 387	java/lang/String:getBytes	()[B
    //   149: invokevirtual 390	java/security/MessageDigest:update	([B)V
    //   152: aload 11
    //   154: aload_1
    //   155: invokevirtual 387	java/lang/String:getBytes	()[B
    //   158: invokevirtual 390	java/security/MessageDigest:update	([B)V
    //   161: aload 7
    //   163: new 356	org/apache/http/message/BasicNameValuePair
    //   166: dup
    //   167: ldc_w 392
    //   170: aload 11
    //   172: invokevirtual 395	java/security/MessageDigest:digest	()[B
    //   175: invokestatic 398	com/duapps/ad/base/ap:a	([B)Ljava/lang/String;
    //   178: invokespecial 362	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   181: invokeinterface 367 2 0
    //   186: pop
    //   187: aload 7
    //   189: ldc_w 303
    //   192: invokestatic 404	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   195: astore 10
    //   197: aload 8
    //   199: astore 7
    //   201: aload 9
    //   203: astore_1
    //   204: aload_2
    //   205: ldc_w 406
    //   208: invokevirtual 410	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   211: ifeq +136 -> 347
    //   214: aload 8
    //   216: astore 7
    //   218: aload 9
    //   220: astore_1
    //   221: new 412	java/net/URI
    //   224: dup
    //   225: new 94	java/lang/StringBuilder
    //   228: dup
    //   229: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   232: getstatic 32	com/duapps/ad/stats/q:e	Ljava/lang/String;
    //   235: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: aload 10
    //   240: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokespecial 413	java/net/URI:<init>	(Ljava/lang/String;)V
    //   249: astore_2
    //   250: aload 8
    //   252: astore 7
    //   254: aload 9
    //   256: astore_1
    //   257: aload_2
    //   258: aload_3
    //   259: aconst_null
    //   260: invokestatic 418	com/duapps/ad/base/aj:a	(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    //   263: astore_2
    //   264: aload_2
    //   265: astore 7
    //   267: aload_2
    //   268: astore_1
    //   269: aload_2
    //   270: invokeinterface 422 1 0
    //   275: invokeinterface 427 1 0
    //   280: istore 6
    //   282: aload_2
    //   283: astore 7
    //   285: aload_2
    //   286: astore_1
    //   287: ldc -25
    //   289: new 94	java/lang/StringBuilder
    //   292: dup
    //   293: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   296: ldc_w 429
    //   299: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: iload 6
    //   304: invokevirtual 235	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   307: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: invokestatic 240	com/duapps/ad/base/l:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   313: iload 6
    //   315: sipush 200
    //   318: if_icmpne +88 -> 406
    //   321: aload_2
    //   322: astore 7
    //   324: aload_2
    //   325: astore_1
    //   326: invokestatic 245	com/duapps/ad/base/l:a	()Z
    //   329: ifeq +12 -> 341
    //   332: aload_2
    //   333: astore 7
    //   335: aload_2
    //   336: astore_1
    //   337: aload_2
    //   338: invokestatic 431	com/duapps/ad/stats/q:a	(Lorg/apache/http/HttpResponse;)V
    //   341: aload_2
    //   342: invokestatic 432	com/duapps/ad/base/aj:a	(Lorg/apache/http/HttpResponse;)V
    //   345: iconst_1
    //   346: ireturn
    //   347: aload 8
    //   349: astore 7
    //   351: aload 9
    //   353: astore_1
    //   354: new 412	java/net/URI
    //   357: dup
    //   358: new 94	java/lang/StringBuilder
    //   361: dup
    //   362: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   365: getstatic 28	com/duapps/ad/stats/q:d	Ljava/lang/String;
    //   368: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: aload 10
    //   373: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: invokespecial 413	java/net/URI:<init>	(Ljava/lang/String;)V
    //   382: astore_2
    //   383: goto -133 -> 250
    //   386: astore_2
    //   387: aload 7
    //   389: astore_1
    //   390: ldc -25
    //   392: ldc_w 434
    //   395: aload_2
    //   396: invokestatic 250	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   399: aload 7
    //   401: invokestatic 432	com/duapps/ad/base/aj:a	(Lorg/apache/http/HttpResponse;)V
    //   404: iconst_0
    //   405: ireturn
    //   406: aload_2
    //   407: invokestatic 432	com/duapps/ad/base/aj:a	(Lorg/apache/http/HttpResponse;)V
    //   410: iconst_0
    //   411: ireturn
    //   412: astore_2
    //   413: aload_1
    //   414: invokestatic 432	com/duapps/ad/base/aj:a	(Lorg/apache/http/HttpResponse;)V
    //   417: aload_2
    //   418: athrow
    //   419: astore_1
    //   420: iconst_0
    //   421: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	422	0	this	q
    //   0	422	1	paramString1	String
    //   0	422	2	paramString2	String
    //   0	422	3	paramString3	String
    //   0	422	4	paramLong	long
    //   280	39	6	i	int
    //   14	386	7	localObject1	Object
    //   4	344	8	localObject2	Object
    //   1	351	9	localObject3	Object
    //   22	350	10	str	String
    //   131	40	11	localMessageDigest	java.security.MessageDigest
    // Exception table:
    //   from	to	target	type
    //   204	214	386	java/lang/Exception
    //   221	250	386	java/lang/Exception
    //   257	264	386	java/lang/Exception
    //   269	282	386	java/lang/Exception
    //   287	313	386	java/lang/Exception
    //   326	332	386	java/lang/Exception
    //   337	341	386	java/lang/Exception
    //   354	383	386	java/lang/Exception
    //   204	214	412	finally
    //   221	250	412	finally
    //   257	264	412	finally
    //   269	282	412	finally
    //   287	313	412	finally
    //   326	332	412	finally
    //   337	341	412	finally
    //   354	383	412	finally
    //   390	399	412	finally
    //   125	187	419	java/security/NoSuchAlgorithmException
  }
  
  public static q b(Context paramContext)
  {
    a(paramContext);
    return b;
  }
  
  private void b()
  {
    if (!ap.a(f)) {
      return;
    }
    an.a().a(new r(this));
  }
  
  private void c()
  {
    long l1 = 0L;
    long l2 = com.duapps.ad.base.r.d(f);
    long l3 = System.currentTimeMillis();
    long l4 = l3 - l2;
    if (l4 < 0L)
    {
      com.duapps.ad.base.r.c(f);
      return;
    }
    if (l4 <= 21600000L) {
      l1 = l3 + 21600000L - l2;
    }
    g.sendEmptyMessageDelayed(5, l1);
  }
  
  void a(String paramString1, String paramString2, int paramInt)
  {
    String str = ag.b(f);
    if ((TextUtils.isEmpty(str)) || (TextUtils.isEmpty(paramString2))) {
      if (l.a()) {
        l.c("ToolStatsCore", "Discard ls=" + str + ";rp=" + paramString2);
      }
    }
    for (;;)
    {
      return;
      if (l.a()) {
        l.c("ToolStatsCore", "rept = " + paramString2);
      }
      ContentValues localContentValues = new ContentValues(3);
      localContentValues.put("ts", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("content", Base64.encode(paramString2.getBytes(), 3));
      localContentValues.put("ls", str);
      localContentValues.put("stype", paramString1);
      try
      {
        f.getContentResolver().insert(DuAdCacheProvider.a(f, 4), localContentValues);
        if (paramInt != 0) {
          continue;
        }
        g.sendEmptyMessageDelayed(3, 5000L);
        return;
      }
      catch (Exception paramString1)
      {
        for (;;)
        {
          l.a("ToolStatsCore", "mDatabase reportEvent() exception: ", paramString1);
        }
      }
    }
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return false;
    case 3: 
      g.removeMessages(3);
      a(paramMessage);
      a += 1;
      if (3 > a)
      {
        g.sendEmptyMessage(3);
        return true;
      }
      a = 0;
      return true;
    case 4: 
      g.removeMessages(4);
      g.sendEmptyMessage(3);
      g.sendEmptyMessageDelayed(4, 3600000L);
      return true;
    }
    g.removeMessages(5);
    b();
    g.sendEmptyMessageDelayed(5, 21600000L);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */