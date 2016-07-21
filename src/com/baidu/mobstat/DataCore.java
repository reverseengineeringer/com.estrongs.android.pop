package com.baidu.mobstat;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DataCore
{
  private static JSONObject a = new JSONObject();
  private static DataCore b = new DataCore();
  private int c = 0;
  private int d = 0;
  private JSONArray e = new JSONArray();
  private JSONArray f = new JSONArray();
  private JSONArray g = new JSONArray();
  private boolean h = false;
  private StatService.WearListener i;
  
  private void a(Context paramContext)
  {
    cr.a("clear cache log" + d);
    d = 0;
    a(false);
    synchronized (a)
    {
      a = new JSONObject();
      installHeader(paramContext);
      synchronized (f)
      {
        f = new JSONArray();
        synchronized (e)
        {
          e = new JSONArray();
        }
      }
    }
    synchronized (g)
    {
      g = new JSONArray();
      flush(paramContext);
      ca.a().c();
      bs.a().c(paramContext);
      return;
      paramContext = finally;
      throw paramContext;
      paramContext = finally;
      throw paramContext;
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  private boolean a()
  {
    return h;
  }
  
  public static DataCore instance()
  {
    return b;
  }
  
  void a(StatService.WearListener paramWearListener)
  {
    i = paramWearListener;
  }
  
  public String constructLogWithEmptyBody(Context paramContext, String paramString)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    bo localbo = CooperService.a().getHeadObject();
    if (TextUtils.isEmpty(e)) {
      localbo.a(paramContext, localJSONObject2);
    }
    for (;;)
    {
      paramContext = new JSONArray();
      long l = System.currentTimeMillis();
      try
      {
        localJSONObject2.put("t", l);
        localJSONObject2.put("ss", l);
        localJSONObject2.put("wl2", paramContext);
        localJSONObject2.put("k", paramString);
        localJSONObject1.put("he", localJSONObject2);
      }
      catch (Exception paramContext)
      {
        cr.a(paramContext);
        return null;
      }
      try
      {
        localJSONObject1.put("pr", paramContext);
      }
      catch (JSONException paramContext)
      {
        cr.a(paramContext);
        return null;
      }
      try
      {
        localJSONObject1.put("ev", paramContext);
      }
      catch (JSONException paramContext)
      {
        cr.a(paramContext);
        return null;
      }
      try
      {
        localJSONObject1.put("ex", paramContext);
        return localJSONObject1.toString();
      }
      catch (JSONException paramContext)
      {
        cr.a(paramContext);
      }
      localbo.b(paramContext, localJSONObject2);
    }
    return null;
  }
  
  /* Error */
  public void flush(Context paramContext)
  {
    // Byte code:
    //   0: new 23	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 26	org/json/JSONObject:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 42	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   12: astore 4
    //   14: aload 4
    //   16: monitorenter
    //   17: aload_3
    //   18: ldc -103
    //   20: new 39	org/json/JSONArray
    //   23: dup
    //   24: aload_0
    //   25: getfield 42	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   28: invokevirtual 164	org/json/JSONArray:toString	()Ljava/lang/String;
    //   31: invokespecial 166	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   34: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   37: pop
    //   38: aload 4
    //   40: monitorexit
    //   41: aload_0
    //   42: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   45: astore 4
    //   47: aload 4
    //   49: monitorenter
    //   50: aload_3
    //   51: ldc -101
    //   53: new 39	org/json/JSONArray
    //   56: dup
    //   57: aload_0
    //   58: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   61: invokevirtual 164	org/json/JSONArray:toString	()Ljava/lang/String;
    //   64: invokespecial 166	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   67: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   70: pop
    //   71: aload 4
    //   73: monitorexit
    //   74: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   77: astore 4
    //   79: aload 4
    //   81: monitorenter
    //   82: aload_3
    //   83: ldc -105
    //   85: new 23	org/json/JSONObject
    //   88: dup
    //   89: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   92: invokevirtual 158	org/json/JSONObject:toString	()Ljava/lang/String;
    //   95: invokespecial 167	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   98: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   101: pop
    //   102: aload 4
    //   104: monitorexit
    //   105: aload_3
    //   106: invokevirtual 158	org/json/JSONObject:toString	()Ljava/lang/String;
    //   109: astore_3
    //   110: aload_0
    //   111: invokespecial 169	com/baidu/mobstat/DataCore:a	()Z
    //   114: ifeq +43 -> 157
    //   117: ldc -85
    //   119: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   122: return
    //   123: astore 5
    //   125: aload 4
    //   127: monitorexit
    //   128: aload 5
    //   130: athrow
    //   131: astore 4
    //   133: ldc -83
    //   135: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   138: goto -33 -> 105
    //   141: astore 5
    //   143: aload 4
    //   145: monitorexit
    //   146: aload 5
    //   148: athrow
    //   149: astore 5
    //   151: aload 4
    //   153: monitorexit
    //   154: aload 5
    //   156: athrow
    //   157: aload_3
    //   158: invokevirtual 179	java/lang/String:getBytes	()[B
    //   161: arraylength
    //   162: istore_2
    //   163: iload_2
    //   164: ldc -76
    //   166: if_icmplt +9 -> 175
    //   169: aload_0
    //   170: iconst_1
    //   171: invokespecial 73	com/baidu/mobstat/DataCore:a	(Z)V
    //   174: return
    //   175: aload_0
    //   176: iload_2
    //   177: putfield 35	com/baidu/mobstat/DataCore:c	I
    //   180: new 51	java/lang/StringBuilder
    //   183: dup
    //   184: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   187: ldc -74
    //   189: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: aload_0
    //   193: getfield 35	com/baidu/mobstat/DataCore:c	I
    //   196: invokevirtual 61	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   199: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   205: aload_1
    //   206: invokestatic 188	com/baidu/mobstat/cu:p	(Landroid/content/Context;)Ljava/lang/String;
    //   209: astore 4
    //   211: aload_1
    //   212: new 51	java/lang/StringBuilder
    //   215: dup
    //   216: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   219: aload 4
    //   221: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: ldc -66
    //   226: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: aload_3
    //   233: iconst_0
    //   234: invokestatic 195	com/baidu/mobstat/cl:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    //   237: aload_0
    //   238: getfield 46	com/baidu/mobstat/DataCore:g	Lorg/json/JSONArray;
    //   241: astore_3
    //   242: aload_3
    //   243: monitorenter
    //   244: aload_0
    //   245: getfield 46	com/baidu/mobstat/DataCore:g	Lorg/json/JSONArray;
    //   248: invokevirtual 164	org/json/JSONArray:toString	()Ljava/lang/String;
    //   251: astore 4
    //   253: new 51	java/lang/StringBuilder
    //   256: dup
    //   257: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   260: ldc -59
    //   262: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: aload 4
    //   267: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   276: aload_1
    //   277: ldc -57
    //   279: aload 4
    //   281: iconst_0
    //   282: invokestatic 195	com/baidu/mobstat/cl:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    //   285: aload_3
    //   286: monitorexit
    //   287: return
    //   288: astore_1
    //   289: aload_3
    //   290: monitorexit
    //   291: aload_1
    //   292: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	this	DataCore
    //   0	293	1	paramContext	Context
    //   162	15	2	j	int
    //   131	21	4	localException	Exception
    //   209	71	4	str	String
    //   123	6	5	localObject3	Object
    //   141	6	5	localObject4	Object
    //   149	6	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   17	41	123	finally
    //   125	128	123	finally
    //   8	17	131	java/lang/Exception
    //   41	50	131	java/lang/Exception
    //   74	82	131	java/lang/Exception
    //   128	131	131	java/lang/Exception
    //   146	149	131	java/lang/Exception
    //   154	157	131	java/lang/Exception
    //   50	74	141	finally
    //   143	146	141	finally
    //   82	105	149	finally
    //   151	154	149	finally
    //   244	287	288	finally
    //   289	291	288	finally
  }
  
  public String getAppKey(Context paramContext)
  {
    return CooperService.a().getAppKey(paramContext);
  }
  
  /* Error */
  public void installHeader(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   5: astore_2
    //   6: aload_2
    //   7: monitorenter
    //   8: invokestatic 110	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   11: invokevirtual 114	com/baidu/mobstat/CooperService:getHeadObject	()Lcom/baidu/mobstat/bo;
    //   14: aload_1
    //   15: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   18: invokevirtual 128	com/baidu/mobstat/bo:a	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   21: aload_2
    //   22: monitorexit
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_2
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	DataCore
    //   0	36	1	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   8	23	26	finally
    //   27	29	26	finally
    //   2	8	31	finally
    //   29	31	31	finally
  }
  
  public boolean isPartEmpty()
  {
    for (;;)
    {
      synchronized (e)
      {
        if (e.length() == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void loadLastSession(Context paramContext)
  {
    cr.a("LoadLastSession()");
    if (paramContext == null) {}
    String str1;
    do
    {
      return;
      str1 = cu.p(paramContext);
      str1 = str1 + "__local_last_session.json";
    } while (!cl.c(paramContext, str1));
    String str2 = cl.a(paramContext, str1);
    if ("".equals(str2))
    {
      cr.a("loadLastSession(): last_session.json file not found.");
      return;
    }
    cl.a(paramContext, str1, new JSONObject().toString(), false);
    putSession(str2);
    flush(paramContext);
  }
  
  public void loadStatData(Context arg1)
  {
    int k = 0;
    if (??? == null) {}
    do
    {
      return;
      localObject1 = cu.p(???);
      localObject1 = (String)localObject1 + "__local_stat_cache.json";
    } while (!cl.c(???, (String)localObject1));
    Object localObject1 = cl.a(???, (String)localObject1);
    if (((String)localObject1).equals(""))
    {
      cr.a("stat_cache file not found.");
      return;
    }
    cr.a("loadStatData, ");
    long l;
    label156:
    JSONObject localJSONObject;
    try
    {
      c = ((String)localObject1).getBytes().length;
      cr.a("load Stat Data:cacheFileSize is:" + c);
      ??? = new JSONObject((String)localObject1);
      cr.a("Load cache:" + (String)localObject1);
      l = System.currentTimeMillis();
      localObject1 = ???.getJSONArray("pr");
      j = 0;
      if (j < ((JSONArray)localObject1).length())
      {
        localJSONObject = ((JSONArray)localObject1).getJSONObject(j);
        if (l - localJSONObject.getLong("s") > 604800000L) {
          break label331;
        }
        putSession(localJSONObject, true);
      }
    }
    catch (JSONException ???)
    {
      cr.a("Load stat data error:" + ???);
      return;
    }
    localObject1 = ???.getJSONArray("ev");
    int j = k;
    for (;;)
    {
      if (j < ((JSONArray)localObject1).length())
      {
        localJSONObject = ((JSONArray)localObject1).getJSONObject(j);
        if (l - localJSONObject.getLong("t") <= 604800000L) {
          putEvent(localJSONObject, true);
        }
      }
      else
      {
        boolean bool = isPartEmpty();
        if (bool) {
          break;
        }
        try
        {
          localObject1 = ???.getJSONObject("he");
          synchronized (a)
          {
            a = (JSONObject)localObject1;
            return;
          }
          j += 1;
        }
        catch (JSONException ???)
        {
          cr.a(???);
          return;
        }
        label331:
        break label156;
      }
      j += 1;
    }
  }
  
  public void loadWifiData(Context arg1)
  {
    if (??? == null) {}
    while (!cl.c(???, "__local_ap_info_cache.json")) {
      return;
    }
    Object localObject1 = cl.a(???, "__local_ap_info_cache.json");
    for (;;)
    {
      try
      {
        JSONArray localJSONArray1 = new JSONArray((String)localObject1);
        int k = localJSONArray1.length();
        if (k >= 10)
        {
          JSONArray localJSONArray2 = new JSONArray();
          int j = k - 10;
          localObject1 = localJSONArray2;
          if (j < k)
          {
            localJSONArray2.put(localJSONArray1.get(j));
            j += 1;
            continue;
          }
          ??? = cu.e(2, ???);
          if (!TextUtils.isEmpty(???)) {
            ((JSONArray)localObject1).put(???);
          }
          synchronized (g)
          {
            g = ((JSONArray)localObject1);
            cr.a("wifiPart: " + g.toString());
            return;
          }
        }
        Object localObject3 = localJSONArray1;
      }
      catch (JSONException ???)
      {
        cr.b(???);
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
      cr.a("put event:" + localJSONObject.toString());
      return;
    }
    catch (JSONException paramString1)
    {
      cr.a(paramString1);
    }
  }
  
  /* Error */
  public void putEvent(JSONObject paramJSONObject, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: iload_2
    //   6: ifne +53 -> 59
    //   9: aload_1
    //   10: invokevirtual 158	org/json/JSONObject:toString	()Ljava/lang/String;
    //   13: invokevirtual 179	java/lang/String:getBytes	()[B
    //   16: arraylength
    //   17: istore_3
    //   18: new 51	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   25: ldc_w 297
    //   28: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: iload_3
    //   32: invokevirtual 61	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   35: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   41: iload_3
    //   42: aload_0
    //   43: getfield 35	com/baidu/mobstat/DataCore:c	I
    //   46: iadd
    //   47: ldc -76
    //   49: if_icmple +10 -> 59
    //   52: ldc_w 299
    //   55: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   58: return
    //   59: iconst_0
    //   60: istore_3
    //   61: aload_1
    //   62: ldc_w 286
    //   65: invokevirtual 303	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   68: astore 17
    //   70: aload_1
    //   71: ldc_w 288
    //   74: invokevirtual 303	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   77: astore 18
    //   79: aload_1
    //   80: ldc -120
    //   82: invokevirtual 251	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   85: ldc2_w 304
    //   88: ldiv
    //   89: lstore 8
    //   91: aload_1
    //   92: ldc -9
    //   94: invokevirtual 308	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   97: astore 14
    //   99: aload_1
    //   100: ldc_w 293
    //   103: invokevirtual 312	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   106: istore 4
    //   108: iload 4
    //   110: istore_3
    //   111: iload_3
    //   112: ifne +455 -> 567
    //   115: aload_0
    //   116: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   119: astore 16
    //   121: aload 16
    //   123: monitorenter
    //   124: aload_0
    //   125: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   128: invokevirtual 207	org/json/JSONArray:length	()I
    //   131: istore 7
    //   133: aload 14
    //   135: ifnull +13 -> 148
    //   138: aload 14
    //   140: ldc -37
    //   142: invokevirtual 223	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   145: ifeq +13 -> 158
    //   148: aload_1
    //   149: ldc -9
    //   151: ldc_w 314
    //   154: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   157: pop
    //   158: iconst_0
    //   159: istore_3
    //   160: iload 7
    //   162: istore 4
    //   164: iload_3
    //   165: iload 7
    //   167: if_icmpge +463 -> 630
    //   170: aload_0
    //   171: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   174: iload_3
    //   175: invokevirtual 245	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   178: astore 19
    //   180: new 51	java/lang/StringBuilder
    //   183: dup
    //   184: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   187: ldc_w 316
    //   190: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: aload 19
    //   195: invokevirtual 158	org/json/JSONObject:toString	()Ljava/lang/String;
    //   198: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   207: aload 19
    //   209: ldc_w 286
    //   212: invokevirtual 303	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   215: astore 14
    //   217: aload 19
    //   219: ldc_w 288
    //   222: invokevirtual 303	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   225: astore 15
    //   227: aload 19
    //   229: ldc -120
    //   231: invokevirtual 251	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   234: ldc2_w 304
    //   237: ldiv
    //   238: lstore 10
    //   240: iconst_0
    //   241: istore 6
    //   243: aload 19
    //   245: ldc_w 293
    //   248: invokevirtual 312	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   251: istore 5
    //   253: iload 5
    //   255: istore 6
    //   257: iload 4
    //   259: istore 5
    //   261: lload 10
    //   263: lload 8
    //   265: lcmp
    //   266: ifne +12 -> 278
    //   269: iload 6
    //   271: ifeq +77 -> 348
    //   274: iload 4
    //   276: istore 5
    //   278: iload_3
    //   279: iconst_1
    //   280: iadd
    //   281: istore_3
    //   282: iload 5
    //   284: istore 4
    //   286: goto -122 -> 164
    //   289: astore_1
    //   290: aload_1
    //   291: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   294: return
    //   295: astore 15
    //   297: ldc_w 318
    //   300: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   303: goto -192 -> 111
    //   306: astore 14
    //   308: ldc_w 320
    //   311: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   314: goto -156 -> 158
    //   317: astore_1
    //   318: aload 16
    //   320: monitorexit
    //   321: aload_1
    //   322: athrow
    //   323: astore 20
    //   325: ldc_w 318
    //   328: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   331: goto -74 -> 257
    //   334: astore 14
    //   336: aload 14
    //   338: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   341: iload 4
    //   343: istore 5
    //   345: goto -67 -> 278
    //   348: new 51	java/lang/StringBuilder
    //   351: dup
    //   352: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   355: ldc_w 316
    //   358: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: aload 19
    //   363: invokevirtual 158	org/json/JSONObject:toString	()Ljava/lang/String;
    //   366: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   372: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   375: iload 4
    //   377: istore 5
    //   379: aload 14
    //   381: aload 17
    //   383: invokevirtual 223	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   386: ifeq -108 -> 278
    //   389: iload 4
    //   391: istore 5
    //   393: aload 15
    //   395: aload 18
    //   397: invokevirtual 223	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   400: ifeq -122 -> 278
    //   403: aload_1
    //   404: ldc_w 289
    //   407: invokevirtual 312	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   410: istore 5
    //   412: aload 19
    //   414: ldc_w 289
    //   417: invokevirtual 312	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   420: istore 6
    //   422: aload 19
    //   424: ldc -9
    //   426: invokevirtual 308	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   429: astore 15
    //   431: aload 15
    //   433: ifnull +203 -> 636
    //   436: aload 15
    //   438: astore 14
    //   440: aload 15
    //   442: ldc -37
    //   444: invokevirtual 324	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   447: ifeq +6 -> 453
    //   450: goto +186 -> 636
    //   453: aload_1
    //   454: ldc -120
    //   456: invokevirtual 251	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   459: lstore 10
    //   461: aload 19
    //   463: ldc -120
    //   465: invokevirtual 251	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   468: lstore 12
    //   470: new 51	java/lang/StringBuilder
    //   473: dup
    //   474: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   477: aload 14
    //   479: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: lload 10
    //   484: lload 12
    //   486: lsub
    //   487: invokevirtual 327	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   490: ldc_w 329
    //   493: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   496: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   499: astore 14
    //   501: aload 19
    //   503: ldc_w 289
    //   506: invokevirtual 333	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   509: pop
    //   510: aload 19
    //   512: ldc_w 289
    //   515: iload 6
    //   517: iload 5
    //   519: iadd
    //   520: invokevirtual 292	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   523: pop
    //   524: aload 19
    //   526: ldc -9
    //   528: aload 14
    //   530: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   533: pop
    //   534: iload_3
    //   535: iload 7
    //   537: if_icmpge +7 -> 544
    //   540: aload 16
    //   542: monitorexit
    //   543: return
    //   544: aload_0
    //   545: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   548: iload 7
    //   550: aload_1
    //   551: invokevirtual 336	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   554: pop
    //   555: aload 16
    //   557: monitorexit
    //   558: return
    //   559: astore_1
    //   560: aload_1
    //   561: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   564: goto -9 -> 555
    //   567: aload_0
    //   568: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   571: astore 14
    //   573: aload 14
    //   575: monitorenter
    //   576: aload_0
    //   577: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   580: invokevirtual 207	org/json/JSONArray:length	()I
    //   583: istore_3
    //   584: aload_1
    //   585: ldc -9
    //   587: ldc_w 338
    //   590: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   593: pop
    //   594: aload_0
    //   595: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   598: iload_3
    //   599: aload_1
    //   600: invokevirtual 336	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   603: pop
    //   604: aload 14
    //   606: monitorexit
    //   607: return
    //   608: astore_1
    //   609: aload 14
    //   611: monitorexit
    //   612: aload_1
    //   613: athrow
    //   614: astore_1
    //   615: aload_1
    //   616: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   619: goto -15 -> 604
    //   622: astore 14
    //   624: iload_3
    //   625: istore 4
    //   627: goto -291 -> 336
    //   630: iload 4
    //   632: istore_3
    //   633: goto -99 -> 534
    //   636: ldc_w 314
    //   639: astore 14
    //   641: goto -188 -> 453
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	644	0	this	DataCore
    //   0	644	1	paramJSONObject	JSONObject
    //   0	644	2	paramBoolean	boolean
    //   17	616	3	j	int
    //   106	525	4	k	int
    //   251	269	5	m	int
    //   241	279	6	n	int
    //   131	418	7	i1	int
    //   89	175	8	l1	long
    //   238	245	10	l2	long
    //   468	17	12	l3	long
    //   97	119	14	str1	String
    //   306	1	14	localJSONException1	JSONException
    //   334	46	14	localJSONException2	JSONException
    //   622	1	14	localJSONException3	JSONException
    //   639	1	14	str2	String
    //   225	1	15	str3	String
    //   295	99	15	localJSONException4	JSONException
    //   429	12	15	str4	String
    //   68	314	17	str5	String
    //   77	319	18	str6	String
    //   178	347	19	localJSONObject	JSONObject
    //   323	1	20	localJSONException5	JSONException
    // Exception table:
    //   from	to	target	type
    //   61	99	289	org/json/JSONException
    //   99	108	295	org/json/JSONException
    //   138	148	306	org/json/JSONException
    //   148	158	306	org/json/JSONException
    //   124	133	317	finally
    //   138	148	317	finally
    //   148	158	317	finally
    //   170	240	317	finally
    //   243	253	317	finally
    //   308	314	317	finally
    //   318	321	317	finally
    //   325	331	317	finally
    //   336	341	317	finally
    //   348	375	317	finally
    //   379	389	317	finally
    //   393	431	317	finally
    //   440	450	317	finally
    //   453	501	317	finally
    //   501	534	317	finally
    //   540	543	317	finally
    //   544	555	317	finally
    //   555	558	317	finally
    //   560	564	317	finally
    //   243	253	323	org/json/JSONException
    //   170	240	334	org/json/JSONException
    //   325	331	334	org/json/JSONException
    //   348	375	334	org/json/JSONException
    //   379	389	334	org/json/JSONException
    //   393	431	334	org/json/JSONException
    //   440	450	334	org/json/JSONException
    //   453	501	334	org/json/JSONException
    //   544	555	559	org/json/JSONException
    //   576	584	608	finally
    //   584	604	608	finally
    //   604	607	608	finally
    //   609	612	608	finally
    //   615	619	608	finally
    //   584	604	614	org/json/JSONException
    //   501	534	622	org/json/JSONException
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
      cr.a("Load last session:" + paramString);
      return;
    }
    catch (JSONException paramString)
    {
      cr.a("putSession()" + paramString);
    }
  }
  
  public void putSession(JSONObject paramJSONObject, boolean paramBoolean)
  {
    int j;
    if ((paramJSONObject != null) && (!paramBoolean))
    {
      j = paramJSONObject.toString().getBytes().length;
      cr.a("putSession:addSize is:" + j);
      if (j + c > 204800)
      {
        cr.a("putSession: size is full!");
        return;
      }
    }
    synchronized (e)
    {
      j = e.length();
    }
    try
    {
      e.put(j, paramJSONObject);
      return;
      paramJSONObject = finally;
      throw paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        cr.a(paramJSONObject);
      }
    }
  }
  
  /* Error */
  public void sendLogData(Context paramContext)
  {
    // Byte code:
    //   0: ldc_w 351
    //   3: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   6: invokestatic 110	com/baidu/mobstat/CooperService:a	()Lcom/baidu/mobstat/CooperService;
    //   9: invokevirtual 114	com/baidu/mobstat/CooperService:getHeadObject	()Lcom/baidu/mobstat/bo;
    //   12: astore 5
    //   14: aload 5
    //   16: ifnull +92 -> 108
    //   19: aload 5
    //   21: getfield 119	com/baidu/mobstat/bo:e	Ljava/lang/String;
    //   24: invokestatic 125	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   27: ifeq +81 -> 108
    //   30: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   33: astore 4
    //   35: aload 4
    //   37: monitorenter
    //   38: aload 5
    //   40: aload_1
    //   41: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   44: invokevirtual 128	com/baidu/mobstat/bo:a	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   47: new 51	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   54: ldc_w 353
    //   57: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   63: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   66: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   69: invokevirtual 354	org/json/JSONObject:length	()I
    //   72: invokevirtual 61	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   75: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   81: aload 4
    //   83: monitorexit
    //   84: aload 5
    //   86: getfield 119	com/baidu/mobstat/bo:e	Ljava/lang/String;
    //   89: invokestatic 125	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   92: ifeq +16 -> 108
    //   95: ldc_w 356
    //   98: invokestatic 358	com/baidu/mobstat/cr:c	(Ljava/lang/String;)V
    //   101: return
    //   102: astore_1
    //   103: aload 4
    //   105: monitorexit
    //   106: aload_1
    //   107: athrow
    //   108: new 23	org/json/JSONObject
    //   111: dup
    //   112: invokespecial 26	org/json/JSONObject:<init>	()V
    //   115: astore 7
    //   117: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   120: astore 4
    //   122: aload 4
    //   124: monitorenter
    //   125: invokestatic 134	java/lang/System:currentTimeMillis	()J
    //   128: lstore_2
    //   129: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   132: ldc -120
    //   134: lload_2
    //   135: invokevirtual 140	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   138: pop
    //   139: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   142: ldc -114
    //   144: invokestatic 84	com/baidu/mobstat/ca:a	()Lcom/baidu/mobstat/ca;
    //   147: invokevirtual 360	com/baidu/mobstat/ca:d	()J
    //   150: invokevirtual 140	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   153: pop
    //   154: aload_0
    //   155: getfield 46	com/baidu/mobstat/DataCore:g	Lorg/json/JSONArray;
    //   158: astore 5
    //   160: aload 5
    //   162: monitorenter
    //   163: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   166: ldc -112
    //   168: aload_0
    //   169: getfield 46	com/baidu/mobstat/DataCore:g	Lorg/json/JSONArray;
    //   172: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   175: pop
    //   176: aload 5
    //   178: monitorexit
    //   179: aload 7
    //   181: ldc -105
    //   183: getstatic 28	com/baidu/mobstat/DataCore:a	Lorg/json/JSONObject;
    //   186: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   189: pop
    //   190: aload_0
    //   191: getfield 42	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   194: astore 5
    //   196: aload 5
    //   198: monitorenter
    //   199: aload 7
    //   201: ldc -103
    //   203: aload_0
    //   204: getfield 42	com/baidu/mobstat/DataCore:e	Lorg/json/JSONArray;
    //   207: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   210: pop
    //   211: aload_0
    //   212: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   215: astore 6
    //   217: aload 6
    //   219: monitorenter
    //   220: aload 7
    //   222: ldc -101
    //   224: aload_0
    //   225: getfield 44	com/baidu/mobstat/DataCore:f	Lorg/json/JSONArray;
    //   228: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   231: pop
    //   232: aload 7
    //   234: ldc -99
    //   236: new 39	org/json/JSONArray
    //   239: dup
    //   240: invokespecial 40	org/json/JSONArray:<init>	()V
    //   243: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   246: pop
    //   247: aload 7
    //   249: invokevirtual 158	org/json/JSONObject:toString	()Ljava/lang/String;
    //   252: astore 7
    //   254: new 51	java/lang/StringBuilder
    //   257: dup
    //   258: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   261: ldc_w 362
    //   264: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload 7
    //   269: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: invokestatic 70	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   278: aload_0
    //   279: aload_1
    //   280: aload 7
    //   282: invokevirtual 365	com/baidu/mobstat/DataCore:sendLogData	(Landroid/content/Context;Ljava/lang/String;)V
    //   285: aload_0
    //   286: aload_1
    //   287: invokespecial 367	com/baidu/mobstat/DataCore:a	(Landroid/content/Context;)V
    //   290: aload 6
    //   292: monitorexit
    //   293: aload 5
    //   295: monitorexit
    //   296: aload 4
    //   298: monitorexit
    //   299: return
    //   300: astore_1
    //   301: aload 4
    //   303: monitorexit
    //   304: aload_1
    //   305: athrow
    //   306: astore_1
    //   307: aload 5
    //   309: monitorexit
    //   310: aload_1
    //   311: athrow
    //   312: astore_1
    //   313: aload_1
    //   314: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   317: aload 4
    //   319: monitorexit
    //   320: return
    //   321: astore_1
    //   322: aload_1
    //   323: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   326: aload 5
    //   328: monitorexit
    //   329: aload 4
    //   331: monitorexit
    //   332: return
    //   333: astore_1
    //   334: aload_1
    //   335: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   338: aload 6
    //   340: monitorexit
    //   341: aload 5
    //   343: monitorexit
    //   344: aload 4
    //   346: monitorexit
    //   347: return
    //   348: astore_1
    //   349: aload_1
    //   350: invokestatic 163	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   353: aload 6
    //   355: monitorexit
    //   356: aload 5
    //   358: monitorexit
    //   359: aload 4
    //   361: monitorexit
    //   362: return
    //   363: astore_1
    //   364: aload 6
    //   366: monitorexit
    //   367: aload_1
    //   368: athrow
    //   369: astore_1
    //   370: aload 5
    //   372: monitorexit
    //   373: aload_1
    //   374: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	375	0	this	DataCore
    //   0	375	1	paramContext	Context
    //   128	7	2	l	long
    //   33	327	4	localJSONObject	JSONObject
    //   12	359	5	localObject1	Object
    //   115	166	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   38	84	102	finally
    //   103	106	102	finally
    //   125	129	300	finally
    //   129	163	300	finally
    //   179	190	300	finally
    //   190	199	300	finally
    //   296	299	300	finally
    //   301	304	300	finally
    //   310	312	300	finally
    //   313	320	300	finally
    //   329	332	300	finally
    //   344	347	300	finally
    //   359	362	300	finally
    //   373	375	300	finally
    //   163	179	306	finally
    //   307	310	306	finally
    //   129	163	312	java/lang/Exception
    //   179	190	312	java/lang/Exception
    //   310	312	312	java/lang/Exception
    //   199	211	321	org/json/JSONException
    //   220	232	333	org/json/JSONException
    //   232	247	348	org/json/JSONException
    //   220	232	363	finally
    //   232	247	363	finally
    //   247	293	363	finally
    //   334	341	363	finally
    //   349	356	363	finally
    //   364	367	363	finally
    //   199	211	369	finally
    //   211	220	369	finally
    //   293	296	369	finally
    //   322	329	369	finally
    //   341	344	369	finally
    //   356	359	369	finally
    //   367	369	369	finally
    //   370	373	369	finally
  }
  
  public void sendLogData(Context paramContext, String paramString)
  {
    if ((i != null) && (i.onSendLogData(paramString)))
    {
      cr.a("log data has been passed to app level");
      return;
    }
    bs.a().a(paramContext, paramString);
  }
  
  public void setAppChannel(Context paramContext, String paramString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      cr.c("设置的渠道不能为空或者为null || The channel that you have been set is null or empty, please check it.");
    }
    agetHeadObjectm = paramString;
    if ((paramBoolean) && (paramString != null) && (!paramString.equals("")))
    {
      be.a().c(paramContext, paramString);
      be.a().c(paramContext, true);
    }
    if (!paramBoolean)
    {
      be.a().c(paramContext, "");
      be.a().c(paramContext, false);
    }
  }
  
  public void setAppChannel(String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      cr.c("设置的渠道不能为空或者为null || The channel that you have been set is null or empty, please check it.");
    }
    agetHeadObjectm = paramString;
  }
  
  public void setAppKey(String paramString)
  {
    agetHeadObjecte = paramString;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.DataCore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */