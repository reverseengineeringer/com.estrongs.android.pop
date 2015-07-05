package com.baidu.mobstat;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobstat.util.c;
import com.baidu.mobstat.util.e;
import com.baidu.mobstat.util.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DataCore
{
  private static JSONObject c = new JSONObject();
  private static DataCore i = new DataCore();
  private int a = 0;
  private int b = 0;
  private JSONArray d = new JSONArray();
  private JSONArray e = new JSONArray();
  private JSONArray f = new JSONArray();
  private JSONArray g = new JSONArray();
  private boolean h = false;
  
  private void a(Context paramContext)
  {
    e.a("sdkstat", "clear cache log" + b);
    b = 0;
    a(false);
    f = new JSONArray();
    e = new JSONArray();
    d = new JSONArray();
    g = new JSONArray();
    flush(paramContext);
    ao.a().c();
    ag.a().b(paramContext);
  }
  
  private void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  private boolean a()
  {
    return h;
  }
  
  public static DataCore getInstance()
  {
    return i;
  }
  
  /* Error */
  public void flush(Context paramContext)
  {
    // Byte code:
    //   0: new 22	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 25	org/json/JSONObject:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 41	com/baidu/mobstat/DataCore:d	Lorg/json/JSONArray;
    //   12: astore 4
    //   14: aload 4
    //   16: monitorenter
    //   17: aload_3
    //   18: ldc 100
    //   20: new 38	org/json/JSONArray
    //   23: dup
    //   24: aload_0
    //   25: getfield 41	com/baidu/mobstat/DataCore:d	Lorg/json/JSONArray;
    //   28: invokevirtual 101	org/json/JSONArray:toString	()Ljava/lang/String;
    //   31: invokespecial 104	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   34: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   37: pop
    //   38: aload 4
    //   40: monitorexit
    //   41: aload_0
    //   42: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   45: astore 4
    //   47: aload 4
    //   49: monitorenter
    //   50: aload_3
    //   51: ldc 110
    //   53: new 38	org/json/JSONArray
    //   56: dup
    //   57: aload_0
    //   58: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   61: invokevirtual 101	org/json/JSONArray:toString	()Ljava/lang/String;
    //   64: invokespecial 104	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   67: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   70: pop
    //   71: aload 4
    //   73: monitorexit
    //   74: aload_0
    //   75: getfield 45	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   78: astore 4
    //   80: aload 4
    //   82: monitorenter
    //   83: aload_3
    //   84: ldc 112
    //   86: new 38	org/json/JSONArray
    //   89: dup
    //   90: aload_0
    //   91: getfield 45	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   94: invokevirtual 101	org/json/JSONArray:toString	()Ljava/lang/String;
    //   97: invokespecial 104	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   100: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   103: pop
    //   104: aload 4
    //   106: monitorexit
    //   107: aload_3
    //   108: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
    //   111: astore_3
    //   112: aload_0
    //   113: invokespecial 115	com/baidu/mobstat/DataCore:a	()Z
    //   116: ifeq +49 -> 165
    //   119: ldc 52
    //   121: ldc 117
    //   123: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   126: pop
    //   127: return
    //   128: astore 5
    //   130: aload 4
    //   132: monitorexit
    //   133: aload 5
    //   135: athrow
    //   136: astore 4
    //   138: ldc 52
    //   140: ldc 119
    //   142: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   145: pop
    //   146: goto -39 -> 107
    //   149: astore 5
    //   151: aload 4
    //   153: monitorexit
    //   154: aload 5
    //   156: athrow
    //   157: astore 5
    //   159: aload 4
    //   161: monitorexit
    //   162: aload 5
    //   164: athrow
    //   165: aload_3
    //   166: invokevirtual 125	java/lang/String:getBytes	()[B
    //   169: arraylength
    //   170: istore_2
    //   171: iload_2
    //   172: ldc 126
    //   174: if_icmplt +9 -> 183
    //   177: aload_0
    //   178: iconst_1
    //   179: invokespecial 76	com/baidu/mobstat/DataCore:a	(Z)V
    //   182: return
    //   183: aload_0
    //   184: iload_2
    //   185: putfield 34	com/baidu/mobstat/DataCore:a	I
    //   188: ldc 52
    //   190: new 54	java/lang/StringBuilder
    //   193: dup
    //   194: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   197: ldc -128
    //   199: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: aload_0
    //   203: getfield 34	com/baidu/mobstat/DataCore:a	I
    //   206: invokevirtual 64	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   209: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   215: pop
    //   216: aload_1
    //   217: invokestatic 134	com/baidu/mobstat/aw:n	(Landroid/content/Context;)Ljava/lang/String;
    //   220: astore 4
    //   222: iconst_0
    //   223: aload_1
    //   224: new 54	java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   231: aload 4
    //   233: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: ldc -120
    //   238: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   244: aload_3
    //   245: iconst_0
    //   246: invokestatic 141	com/baidu/mobstat/util/c:a	(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    //   249: aload_0
    //   250: getfield 47	com/baidu/mobstat/DataCore:g	Lorg/json/JSONArray;
    //   253: invokevirtual 101	org/json/JSONArray:toString	()Ljava/lang/String;
    //   256: astore_3
    //   257: ldc 52
    //   259: new 54	java/lang/StringBuilder
    //   262: dup
    //   263: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   266: ldc -113
    //   268: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: aload_3
    //   272: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   281: pop
    //   282: iconst_0
    //   283: aload_1
    //   284: ldc -111
    //   286: aload_3
    //   287: iconst_0
    //   288: invokestatic 141	com/baidu/mobstat/util/c:a	(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    //   291: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	DataCore
    //   0	292	1	paramContext	Context
    //   170	15	2	j	int
    //   7	280	3	localObject1	Object
    //   136	24	4	localJSONException	JSONException
    //   220	12	4	str	String
    //   128	6	5	localObject2	Object
    //   149	6	5	localObject3	Object
    //   157	6	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   17	41	128	finally
    //   130	133	128	finally
    //   8	17	136	org/json/JSONException
    //   41	50	136	org/json/JSONException
    //   74	83	136	org/json/JSONException
    //   133	136	136	org/json/JSONException
    //   154	157	136	org/json/JSONException
    //   162	165	136	org/json/JSONException
    //   50	74	149	finally
    //   151	154	149	finally
    //   83	107	157	finally
    //   159	162	157	finally
  }
  
  public void getMemInfo(Context paramContext) {}
  
  public void installHeader(Context paramContext)
  {
    try
    {
      CooperService.b().a(paramContext, c);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public boolean isPartEmpty()
  {
    return (d.length() == 0) && (e.length() == 0) && (f.length() == 0);
  }
  
  public void loadLastSession(Context paramContext)
  {
    e.a("sdkstat", "LoadLastSession()");
    if (paramContext == null) {}
    String str1;
    do
    {
      return;
      str1 = aw.n(paramContext);
      str1 = str1 + "__local_last_session.json";
    } while (!c.c(paramContext, str1));
    String str2 = c.a(false, paramContext, str1);
    if (str2.equals(""))
    {
      e.a("sdkstat", "loadLastSession(): last_session.json file not found.");
      return;
    }
    c.a(false, paramContext, str1, new JSONObject().toString(), false);
    putSession(str2);
    flush(paramContext);
  }
  
  public void loadStatData(Context paramContext)
  {
    int k = 0;
    if (paramContext == null) {}
    label253:
    label354:
    label368:
    label373:
    for (;;)
    {
      return;
      Object localObject = aw.n(paramContext);
      localObject = (String)localObject + "__local_stat_cache.json";
      if (c.c(paramContext, (String)localObject))
      {
        localObject = c.a(false, paramContext, (String)localObject);
        if (((String)localObject).equals(""))
        {
          e.a("sdkstat", "stat_cache file not found.");
          return;
        }
        e.a("sdkstat", "loadStatData, ");
        long l;
        JSONObject localJSONObject;
        try
        {
          a = ((String)localObject).getBytes().length;
          e.a("sdkstat", "load Stat Data:cacheFileSize is:" + a);
          paramContext = new JSONObject((String)localObject);
          e.a("sdkstat", "Load cache:" + (String)localObject);
          l = System.currentTimeMillis();
          localObject = paramContext.getJSONArray("pr");
          j = 0;
          if (j < ((JSONArray)localObject).length())
          {
            localJSONObject = ((JSONArray)localObject).getJSONObject(j);
            if (l - localJSONObject.getLong("s") > 604800000L) {
              break label354;
            }
            putSession(localJSONObject, true);
          }
        }
        catch (JSONException paramContext)
        {
          e.a("sdkstat", "Load stat data error:" + paramContext);
          return;
        }
        localObject = paramContext.getJSONArray("ev");
        int j = 0;
        if (j < ((JSONArray)localObject).length())
        {
          localJSONObject = ((JSONArray)localObject).getJSONObject(j);
          if (l - localJSONObject.getLong("t") <= 604800000L) {
            putEvent(localJSONObject, true);
          }
        }
        else
        {
          paramContext = paramContext.getJSONArray("ex");
          j = k;
        }
        for (;;)
        {
          if (j >= paramContext.length()) {
            break label373;
          }
          localObject = paramContext.getJSONObject(j);
          if (l - ((JSONObject)localObject).getLong("t") <= 604800000L)
          {
            putException((JSONObject)localObject, true);
            break label368;
            j += 1;
            break;
            j += 1;
            break label253;
          }
          j += 1;
        }
      }
    }
  }
  
  public void loadWifiData(Context paramContext)
  {
    if (paramContext == null) {}
    while (!c.c(paramContext, "__local_ap_info_cache.json")) {
      return;
    }
    JSONArray localJSONArray1;
    for (Object localObject = c.a(false, paramContext, "__local_ap_info_cache.json");; localObject = localJSONArray1) {
      try
      {
        localJSONArray1 = new JSONArray((String)localObject);
        int k = localJSONArray1.length();
        if (k >= 10)
        {
          JSONArray localJSONArray2 = new JSONArray();
          int j = k - 10;
          for (;;)
          {
            localObject = localJSONArray2;
            if (j >= k) {
              break;
            }
            localJSONArray2.put(localJSONArray1.get(j));
            j += 1;
          }
          paramContext = aw.j(paramContext);
          if (!TextUtils.isEmpty(paramContext)) {
            ((JSONArray)localObject).put(paramContext);
          }
          g = ((JSONArray)localObject);
          e.a("sdkstat", "wifiPart: " + g.toString());
          return;
        }
      }
      catch (JSONException paramContext)
      {
        f.a(paramContext);
        return;
      }
    }
  }
  
  public void putEvent(String paramString1, String paramString2, int paramInt, long paramLong1, long paramLong2)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("i", paramString1);
      localJSONObject.put("l", paramString2);
      localJSONObject.put("c", paramInt);
      localJSONObject.put("t", paramLong1);
      localJSONObject.put("d", paramLong2);
      putEvent(localJSONObject, false);
      e.a("sdkstat", "put event:" + localJSONObject.toString());
      return;
    }
    catch (JSONException paramString1)
    {
      e.a("sdkstat", paramString1);
    }
  }
  
  /* Error */
  public void putEvent(JSONObject paramJSONObject, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +63 -> 64
    //   4: iload_2
    //   5: ifne +59 -> 64
    //   8: aload_1
    //   9: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
    //   12: invokevirtual 125	java/lang/String:getBytes	()[B
    //   15: arraylength
    //   16: istore_3
    //   17: iconst_3
    //   18: anewarray 4	java/lang/Object
    //   21: dup
    //   22: iconst_0
    //   23: ldc 52
    //   25: aastore
    //   26: dup
    //   27: iconst_1
    //   28: ldc_w 275
    //   31: aastore
    //   32: dup
    //   33: iconst_2
    //   34: iload_3
    //   35: invokestatic 281	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   38: aastore
    //   39: invokestatic 284	com/baidu/mobstat/util/e:a	([Ljava/lang/Object;)I
    //   42: pop
    //   43: iload_3
    //   44: aload_0
    //   45: getfield 34	com/baidu/mobstat/DataCore:a	I
    //   48: iadd
    //   49: ldc 126
    //   51: if_icmple +13 -> 64
    //   54: ldc 52
    //   56: ldc_w 286
    //   59: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   62: pop
    //   63: return
    //   64: iconst_0
    //   65: istore_3
    //   66: aload_1
    //   67: ldc_w 258
    //   70: invokevirtual 290	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   73: astore 17
    //   75: aload_1
    //   76: ldc_w 260
    //   79: invokevirtual 290	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   82: astore 18
    //   84: aload_1
    //   85: ldc -30
    //   87: invokevirtual 214	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   90: ldc2_w 291
    //   93: ldiv
    //   94: lstore 8
    //   96: aload_1
    //   97: ldc -46
    //   99: invokevirtual 295	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   102: astore 14
    //   104: aload_1
    //   105: ldc_w 268
    //   108: invokevirtual 299	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   111: istore 4
    //   113: iload 4
    //   115: istore_3
    //   116: iload_3
    //   117: ifne +479 -> 596
    //   120: aload_0
    //   121: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   124: astore 16
    //   126: aload 16
    //   128: monitorenter
    //   129: aload_0
    //   130: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   133: invokevirtual 162	org/json/JSONArray:length	()I
    //   136: istore 7
    //   138: aload 14
    //   140: ifnull +13 -> 153
    //   143: aload 14
    //   145: ldc -81
    //   147: invokevirtual 179	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   150: ifeq +13 -> 163
    //   153: aload_1
    //   154: ldc -46
    //   156: ldc_w 301
    //   159: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   162: pop
    //   163: iconst_0
    //   164: istore_3
    //   165: iload 7
    //   167: istore 4
    //   169: iload_3
    //   170: iload 7
    //   172: if_icmpge +490 -> 662
    //   175: aload_0
    //   176: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   179: iload_3
    //   180: invokevirtual 208	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   183: astore 19
    //   185: ldc 52
    //   187: new 54	java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   194: ldc_w 303
    //   197: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload 19
    //   202: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
    //   205: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   214: pop
    //   215: aload 19
    //   217: ldc_w 258
    //   220: invokevirtual 290	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   223: astore 14
    //   225: aload 19
    //   227: ldc_w 260
    //   230: invokevirtual 290	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   233: astore 15
    //   235: aload 19
    //   237: ldc -30
    //   239: invokevirtual 214	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   242: ldc2_w 291
    //   245: ldiv
    //   246: lstore 10
    //   248: iconst_0
    //   249: istore 6
    //   251: aload 19
    //   253: ldc_w 268
    //   256: invokevirtual 299	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   259: istore 5
    //   261: iload 5
    //   263: istore 6
    //   265: iload 4
    //   267: istore 5
    //   269: lload 10
    //   271: lload 8
    //   273: lcmp
    //   274: ifne +12 -> 286
    //   277: iload 6
    //   279: ifeq +92 -> 371
    //   282: iload 4
    //   284: istore 5
    //   286: iload_3
    //   287: iconst_1
    //   288: iadd
    //   289: istore_3
    //   290: iload 5
    //   292: istore 4
    //   294: goto -125 -> 169
    //   297: astore_1
    //   298: ldc 52
    //   300: aload_1
    //   301: invokestatic 273	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   304: pop
    //   305: return
    //   306: astore 15
    //   308: ldc 52
    //   310: ldc_w 305
    //   313: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   316: pop
    //   317: goto -201 -> 116
    //   320: astore 14
    //   322: ldc 52
    //   324: ldc_w 307
    //   327: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   330: pop
    //   331: goto -168 -> 163
    //   334: astore_1
    //   335: aload 16
    //   337: monitorexit
    //   338: aload_1
    //   339: athrow
    //   340: astore 20
    //   342: ldc 52
    //   344: ldc_w 305
    //   347: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   350: pop
    //   351: goto -86 -> 265
    //   354: astore 14
    //   356: ldc 52
    //   358: aload 14
    //   360: invokestatic 273	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   363: pop
    //   364: iload 4
    //   366: istore 5
    //   368: goto -82 -> 286
    //   371: ldc 52
    //   373: new 54	java/lang/StringBuilder
    //   376: dup
    //   377: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   380: ldc_w 303
    //   383: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: aload 19
    //   388: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
    //   391: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   394: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   397: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   400: pop
    //   401: iload 4
    //   403: istore 5
    //   405: aload 14
    //   407: aload 17
    //   409: invokevirtual 179	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   412: ifeq -126 -> 286
    //   415: iload 4
    //   417: istore 5
    //   419: aload 15
    //   421: aload 18
    //   423: invokevirtual 179	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   426: ifeq -140 -> 286
    //   429: aload_1
    //   430: ldc_w 261
    //   433: invokevirtual 299	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   436: istore 5
    //   438: aload 19
    //   440: ldc_w 261
    //   443: invokevirtual 299	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   446: istore 6
    //   448: aload 19
    //   450: ldc -46
    //   452: invokevirtual 295	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   455: astore 15
    //   457: aload 15
    //   459: ifnull +209 -> 668
    //   462: aload 15
    //   464: astore 14
    //   466: aload 15
    //   468: ldc -81
    //   470: invokevirtual 311	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   473: ifeq +6 -> 479
    //   476: goto +192 -> 668
    //   479: aload_1
    //   480: ldc -30
    //   482: invokevirtual 214	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   485: lstore 10
    //   487: aload 19
    //   489: ldc -30
    //   491: invokevirtual 214	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   494: lstore 12
    //   496: new 54	java/lang/StringBuilder
    //   499: dup
    //   500: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   503: aload 14
    //   505: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: lload 10
    //   510: lload 12
    //   512: lsub
    //   513: invokevirtual 314	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   516: ldc_w 316
    //   519: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   525: astore 14
    //   527: aload 19
    //   529: ldc_w 261
    //   532: invokevirtual 320	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   535: pop
    //   536: aload 19
    //   538: ldc_w 261
    //   541: iload 6
    //   543: iload 5
    //   545: iadd
    //   546: invokevirtual 264	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   549: pop
    //   550: aload 19
    //   552: ldc -46
    //   554: aload 14
    //   556: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   559: pop
    //   560: iload_3
    //   561: iload 7
    //   563: if_icmpge +7 -> 570
    //   566: aload 16
    //   568: monitorexit
    //   569: return
    //   570: aload_0
    //   571: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   574: iload 7
    //   576: aload_1
    //   577: invokevirtual 323	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   580: pop
    //   581: aload 16
    //   583: monitorexit
    //   584: return
    //   585: astore_1
    //   586: ldc 52
    //   588: aload_1
    //   589: invokestatic 273	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   592: pop
    //   593: goto -12 -> 581
    //   596: aload_0
    //   597: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   600: astore 14
    //   602: aload 14
    //   604: monitorenter
    //   605: aload_0
    //   606: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   609: invokevirtual 162	org/json/JSONArray:length	()I
    //   612: istore_3
    //   613: aload_1
    //   614: ldc -46
    //   616: ldc_w 325
    //   619: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   622: pop
    //   623: aload_0
    //   624: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   627: iload_3
    //   628: aload_1
    //   629: invokevirtual 323	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   632: pop
    //   633: aload 14
    //   635: monitorexit
    //   636: return
    //   637: astore_1
    //   638: aload 14
    //   640: monitorexit
    //   641: aload_1
    //   642: athrow
    //   643: astore_1
    //   644: ldc 52
    //   646: aload_1
    //   647: invokestatic 273	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   650: pop
    //   651: goto -18 -> 633
    //   654: astore 14
    //   656: iload_3
    //   657: istore 4
    //   659: goto -303 -> 356
    //   662: iload 4
    //   664: istore_3
    //   665: goto -105 -> 560
    //   668: ldc_w 301
    //   671: astore 14
    //   673: goto -194 -> 479
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	676	0	this	DataCore
    //   0	676	1	paramJSONObject	JSONObject
    //   0	676	2	paramBoolean	boolean
    //   16	649	3	j	int
    //   111	552	4	k	int
    //   259	287	5	m	int
    //   249	297	6	n	int
    //   136	439	7	i1	int
    //   94	178	8	l1	long
    //   246	263	10	l2	long
    //   494	17	12	l3	long
    //   102	122	14	str1	String
    //   320	1	14	localJSONException1	JSONException
    //   354	52	14	localJSONException2	JSONException
    //   654	1	14	localJSONException3	JSONException
    //   671	1	14	str2	String
    //   233	1	15	str3	String
    //   306	114	15	localJSONException4	JSONException
    //   455	12	15	str4	String
    //   73	335	17	str5	String
    //   82	340	18	str6	String
    //   183	368	19	localJSONObject	JSONObject
    //   340	1	20	localJSONException5	JSONException
    // Exception table:
    //   from	to	target	type
    //   66	104	297	org/json/JSONException
    //   104	113	306	org/json/JSONException
    //   143	153	320	org/json/JSONException
    //   153	163	320	org/json/JSONException
    //   129	138	334	finally
    //   143	153	334	finally
    //   153	163	334	finally
    //   175	248	334	finally
    //   251	261	334	finally
    //   322	331	334	finally
    //   335	338	334	finally
    //   342	351	334	finally
    //   356	364	334	finally
    //   371	401	334	finally
    //   405	415	334	finally
    //   419	457	334	finally
    //   466	476	334	finally
    //   479	527	334	finally
    //   527	560	334	finally
    //   566	569	334	finally
    //   570	581	334	finally
    //   581	584	334	finally
    //   586	593	334	finally
    //   251	261	340	org/json/JSONException
    //   175	248	354	org/json/JSONException
    //   342	351	354	org/json/JSONException
    //   371	401	354	org/json/JSONException
    //   405	415	354	org/json/JSONException
    //   419	457	354	org/json/JSONException
    //   466	476	354	org/json/JSONException
    //   479	527	354	org/json/JSONException
    //   570	581	585	org/json/JSONException
    //   605	613	637	finally
    //   613	633	637	finally
    //   633	636	637	finally
    //   638	641	637	finally
    //   644	651	637	finally
    //   613	633	643	org/json/JSONException
    //   527	560	654	org/json/JSONException
  }
  
  public void putException(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("t", paramLong);
      localJSONObject.put("y", paramString2);
      localJSONObject.put("v", paramString3);
      if (paramString1.getBytes().length > 5120)
      {
        paramString2 = new byte['᐀'];
        paramString1.getBytes(0, 5120, paramString2, 0);
        int j = paramString2.length;
        e.a("exception bytes=" + j);
        localJSONObject.put("c", new String(paramString2));
      }
      for (;;)
      {
        putException(localJSONObject, false);
        return;
        localJSONObject.put("c", paramString1);
      }
    }
    catch (JSONException paramString1)
    {
      for (;;)
      {
        e.a("sdkstat", paramString1);
      }
    }
  }
  
  public void putException(JSONObject paramJSONObject, boolean paramBoolean)
  {
    int j;
    if ((paramJSONObject != null) && (!paramBoolean))
    {
      j = paramJSONObject.toString().getBytes().length;
      e.a(new Object[] { "sdkstat", "putException:addSize is:", Integer.valueOf(j) });
      if (j + a > 204800)
      {
        e.a("sdkstat", "putException: size is full!");
        return;
      }
    }
    synchronized (f)
    {
      j = f.length();
    }
    try
    {
      f.put(j, paramJSONObject);
      return;
      paramJSONObject = finally;
      throw paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        e.a("sdkstat", paramJSONObject);
      }
    }
  }
  
  public void putSession(String paramString)
  {
    if ((paramString.equals("{}")) || (paramString.equals(""))) {
      return;
    }
    try
    {
      paramString = new JSONObject(paramString);
      putSession(paramString, false);
      e.a("sdkstat", "Load last session:" + paramString);
      return;
    }
    catch (JSONException paramString)
    {
      e.a("sdkstat", "putSession()" + paramString);
    }
  }
  
  public void putSession(JSONObject paramJSONObject, boolean paramBoolean)
  {
    int j;
    if ((paramJSONObject != null) && (!paramBoolean))
    {
      j = paramJSONObject.toString().getBytes().length;
      e.a(new Object[] { "sdkstat", "putSession:addSize is:", Integer.valueOf(j) });
      if (j + a > 204800)
      {
        e.a("sdkstat", "putSession: size is full!");
        return;
      }
    }
    synchronized (d)
    {
      j = d.length();
    }
    try
    {
      d.put(j, paramJSONObject);
      return;
      paramJSONObject = finally;
      throw paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        e.a("sdkstat", paramJSONObject);
      }
    }
  }
  
  /* Error */
  public boolean sendLogData(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: ldc 52
    //   5: ldc_w 360
    //   8: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 152	com/baidu/mobstat/CooperService:b	()Lcom/baidu/mobstat/ae;
    //   15: ifnull +105 -> 120
    //   18: invokestatic 152	com/baidu/mobstat/CooperService:b	()Lcom/baidu/mobstat/ae;
    //   21: getfield 363	com/baidu/mobstat/ae:d	Ljava/lang/String;
    //   24: ifnull +17 -> 41
    //   27: ldc -81
    //   29: invokestatic 152	com/baidu/mobstat/CooperService:b	()Lcom/baidu/mobstat/ae;
    //   32: getfield 363	com/baidu/mobstat/ae:d	Ljava/lang/String;
    //   35: invokevirtual 311	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   38: ifeq +82 -> 120
    //   41: invokestatic 152	com/baidu/mobstat/CooperService:b	()Lcom/baidu/mobstat/ae;
    //   44: aload_1
    //   45: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   48: invokevirtual 157	com/baidu/mobstat/ae:a	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   51: ldc 52
    //   53: new 54	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   60: ldc_w 365
    //   63: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   69: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   72: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   75: invokevirtual 366	org/json/JSONObject:length	()I
    //   78: invokevirtual 64	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   81: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   87: pop
    //   88: invokestatic 152	com/baidu/mobstat/CooperService:b	()Lcom/baidu/mobstat/ae;
    //   91: getfield 363	com/baidu/mobstat/ae:d	Ljava/lang/String;
    //   94: ifnull +17 -> 111
    //   97: ldc -81
    //   99: invokestatic 152	com/baidu/mobstat/CooperService:b	()Lcom/baidu/mobstat/ae;
    //   102: getfield 363	com/baidu/mobstat/ae:d	Ljava/lang/String;
    //   105: invokevirtual 311	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   108: ifeq +12 -> 120
    //   111: ldc_w 368
    //   114: invokestatic 370	com/baidu/mobstat/util/e:c	(Ljava/lang/String;)I
    //   117: pop
    //   118: iconst_0
    //   119: ireturn
    //   120: new 22	org/json/JSONObject
    //   123: dup
    //   124: invokespecial 25	org/json/JSONObject:<init>	()V
    //   127: astore 9
    //   129: invokestatic 200	java/lang/System:currentTimeMillis	()J
    //   132: lstore 5
    //   134: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   137: astore_2
    //   138: aload_2
    //   139: monitorenter
    //   140: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   143: ldc -30
    //   145: lload 5
    //   147: invokevirtual 267	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   150: pop
    //   151: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   154: ldc_w 372
    //   157: invokestatic 84	com/baidu/mobstat/ao:a	()Lcom/baidu/mobstat/ao;
    //   160: invokevirtual 374	com/baidu/mobstat/ao:d	()J
    //   163: invokevirtual 267	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   166: pop
    //   167: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   170: ldc_w 376
    //   173: aload_0
    //   174: getfield 47	com/baidu/mobstat/DataCore:g	Lorg/json/JSONArray;
    //   177: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   180: pop
    //   181: aload 9
    //   183: ldc_w 378
    //   186: getstatic 27	com/baidu/mobstat/DataCore:c	Lorg/json/JSONObject;
    //   189: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   192: pop
    //   193: aload_0
    //   194: getfield 41	com/baidu/mobstat/DataCore:d	Lorg/json/JSONArray;
    //   197: astore_3
    //   198: aload_3
    //   199: monitorenter
    //   200: aload 9
    //   202: ldc 100
    //   204: aload_0
    //   205: getfield 41	com/baidu/mobstat/DataCore:d	Lorg/json/JSONArray;
    //   208: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   211: pop
    //   212: aload_0
    //   213: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   216: astore 7
    //   218: aload 7
    //   220: monitorenter
    //   221: aload 9
    //   223: ldc 110
    //   225: aload_0
    //   226: getfield 43	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   229: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   232: pop
    //   233: aload_0
    //   234: getfield 45	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   237: astore 8
    //   239: aload 8
    //   241: monitorenter
    //   242: aload 9
    //   244: ldc 112
    //   246: aload_0
    //   247: getfield 45	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   250: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   253: pop
    //   254: aload 9
    //   256: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
    //   259: astore 9
    //   261: ldc 52
    //   263: new 54	java/lang/StringBuilder
    //   266: dup
    //   267: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   270: ldc_w 380
    //   273: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: aload 9
    //   278: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   284: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   287: pop
    //   288: aload_1
    //   289: ldc_w 382
    //   292: aload 9
    //   294: ldc_w 383
    //   297: ldc_w 383
    //   300: invokestatic 386	com/baidu/mobstat/aw:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    //   303: pop
    //   304: iconst_1
    //   305: istore 4
    //   307: ldc 52
    //   309: new 54	java/lang/StringBuilder
    //   312: dup
    //   313: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   316: ldc_w 388
    //   319: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: iload 4
    //   324: invokevirtual 391	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   327: ldc_w 393
    //   330: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: aload 9
    //   335: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   341: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   344: pop
    //   345: iload 4
    //   347: ifeq +8 -> 355
    //   350: aload_0
    //   351: aload_1
    //   352: invokespecial 395	com/baidu/mobstat/DataCore:a	(Landroid/content/Context;)V
    //   355: aload 8
    //   357: monitorexit
    //   358: aload 7
    //   360: monitorexit
    //   361: aload_3
    //   362: monitorexit
    //   363: aload_2
    //   364: monitorexit
    //   365: ldc 52
    //   367: ldc_w 397
    //   370: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   373: pop
    //   374: iload 4
    //   376: ireturn
    //   377: astore_1
    //   378: ldc 52
    //   380: aload_1
    //   381: invokestatic 273	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   384: pop
    //   385: aload_2
    //   386: monitorexit
    //   387: iconst_0
    //   388: ireturn
    //   389: astore_1
    //   390: aload_2
    //   391: monitorexit
    //   392: aload_1
    //   393: athrow
    //   394: astore_1
    //   395: ldc 52
    //   397: aload_1
    //   398: invokevirtual 398	org/json/JSONException:toString	()Ljava/lang/String;
    //   401: invokestatic 73	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   404: pop
    //   405: aload_3
    //   406: monitorexit
    //   407: aload_2
    //   408: monitorexit
    //   409: iconst_0
    //   410: ireturn
    //   411: astore_1
    //   412: ldc 52
    //   414: aload_1
    //   415: invokestatic 273	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   418: pop
    //   419: aload 7
    //   421: monitorexit
    //   422: aload_3
    //   423: monitorexit
    //   424: aload_2
    //   425: monitorexit
    //   426: iconst_0
    //   427: ireturn
    //   428: astore_1
    //   429: ldc 52
    //   431: aload_1
    //   432: invokestatic 273	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   435: pop
    //   436: aload 8
    //   438: monitorexit
    //   439: aload 7
    //   441: monitorexit
    //   442: aload_3
    //   443: monitorexit
    //   444: aload_2
    //   445: monitorexit
    //   446: iconst_0
    //   447: ireturn
    //   448: astore 10
    //   450: iconst_2
    //   451: anewarray 4	java/lang/Object
    //   454: dup
    //   455: iconst_0
    //   456: ldc 52
    //   458: aastore
    //   459: dup
    //   460: iconst_1
    //   461: new 54	java/lang/StringBuilder
    //   464: dup
    //   465: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   468: ldc_w 400
    //   471: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: aload 10
    //   476: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   479: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   482: aastore
    //   483: invokestatic 402	com/baidu/mobstat/util/e:c	([Ljava/lang/Object;)I
    //   486: pop
    //   487: goto -180 -> 307
    //   490: astore_1
    //   491: aload 8
    //   493: monitorexit
    //   494: aload_1
    //   495: athrow
    //   496: astore_1
    //   497: aload 7
    //   499: monitorexit
    //   500: aload_1
    //   501: athrow
    //   502: astore_1
    //   503: aload_3
    //   504: monitorexit
    //   505: aload_1
    //   506: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	507	0	this	DataCore
    //   0	507	1	paramContext	Context
    //   0	507	2	paramString1	String
    //   0	507	3	paramString2	String
    //   1	374	4	bool	boolean
    //   132	14	5	l	long
    //   216	282	7	localJSONArray1	JSONArray
    //   127	207	9	localObject	Object
    //   448	27	10	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   140	193	377	java/lang/Exception
    //   140	193	389	finally
    //   193	200	389	finally
    //   363	365	389	finally
    //   378	387	389	finally
    //   390	392	389	finally
    //   407	409	389	finally
    //   424	426	389	finally
    //   444	446	389	finally
    //   505	507	389	finally
    //   200	212	394	org/json/JSONException
    //   221	233	411	org/json/JSONException
    //   242	254	428	org/json/JSONException
    //   288	304	448	java/lang/Exception
    //   242	254	490	finally
    //   254	288	490	finally
    //   288	304	490	finally
    //   307	345	490	finally
    //   350	355	490	finally
    //   355	358	490	finally
    //   429	439	490	finally
    //   450	487	490	finally
    //   491	494	490	finally
    //   221	233	496	finally
    //   233	242	496	finally
    //   358	361	496	finally
    //   412	422	496	finally
    //   439	442	496	finally
    //   494	496	496	finally
    //   497	500	496	finally
    //   200	212	502	finally
    //   212	221	502	finally
    //   361	363	502	finally
    //   395	407	502	finally
    //   422	424	502	finally
    //   442	444	502	finally
    //   500	502	502	finally
    //   503	505	502	finally
  }
  
  public void setAppChannel(Context paramContext, String paramString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      e.c(new Object[] { "sdkstat", "设置的渠道不能为空或者为null || The channel that you have been set is null or empty, please check it." });
    }
    bl = paramString;
    if ((paramBoolean) && (paramString != null) && (!paramString.equals("")))
    {
      r.a().c(paramContext, paramString);
      r.a().c(paramContext, true);
    }
    if (!paramBoolean)
    {
      r.a().c(paramContext, "");
      r.a().c(paramContext, false);
    }
  }
  
  public void setAppChannel(String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      e.c(new Object[] { "sdkstat", "设置的渠道不能为空或者为null || The channel that you have been set is null or empty, please check it." });
    }
    bl = paramString;
  }
  
  public void setAppKey(String paramString)
  {
    bd = paramString;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.DataCore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */