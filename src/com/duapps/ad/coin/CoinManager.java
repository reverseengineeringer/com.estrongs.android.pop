package com.duapps.ad.coin;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.dianxinos.DXStatService.stat.TokenManager;
import com.duapps.ad.base.an;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;

public class CoinManager
{
  private static int a = 0;
  private static CoinManager b;
  private Context c;
  private final String d;
  private a e;
  private String f;
  
  private CoinManager(Context paramContext)
  {
    c = paramContext.getApplicationContext();
    d = TokenManager.getToken(c);
    e = new a(c);
    f = d();
  }
  
  public static CoinManager a(Context paramContext)
  {
    try
    {
      if (b == null) {
        b = new CoinManager(paramContext);
      }
      paramContext = b;
      return paramContext;
    }
    finally {}
  }
  
  public static void a(Context paramContext, CoinManager.RequestResult paramRequestResult)
  {
    if ((paramContext == null) || (paramRequestResult == null)) {
      return;
    }
    Intent localIntent = new Intent("com.dianxinos.common.toolbox.ACTION_COIN_GAIN");
    localIntent.putExtra("result_data", paramRequestResult);
    android.support.v4.content.r.a(paramContext).a(localIntent);
  }
  
  public static void a(Context paramContext, CoinManager.RequestResult paramRequestResult, String paramString)
  {
    if ((paramContext == null) || (paramRequestResult == null) || (TextUtils.isEmpty(paramString))) {
      return;
    }
    Intent localIntent = new Intent("com.dianxinos.common.toolbox.ACTION_COIN_SYNC");
    localIntent.putExtra("result_data", paramRequestResult);
    localIntent.putExtra("result_type", paramString);
    android.support.v4.content.r.a(paramContext).a(localIntent);
  }
  
  public static void a(String paramString)
  {
    a.a(paramString);
  }
  
  private void c()
  {
    com.duapps.ad.base.r.a(c, CoinManager.RETRY_TYPE.Query, true);
    com.duapps.ad.base.r.b(c, CoinManager.RETRY_TYPE.Query, false);
    com.duapps.ad.base.r.a(c, CoinManager.RETRY_TYPE.Increase, true);
    com.duapps.ad.base.r.b(c, CoinManager.RETRY_TYPE.Increase, false);
  }
  
  private String d()
  {
    String str2 = com.duapps.ad.base.r.l(c);
    String str1;
    if (TextUtils.isEmpty(str2))
    {
      str2 = b(c);
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = d;
      }
      com.duapps.ad.base.r.c(c, str1);
      e();
    }
    for (;;)
    {
      l.c("CoinManager", "check login, new account==" + str1);
      return str1;
      str1 = str2;
      if (str2.contains("@"))
      {
        str1 = ap.a(str2);
        com.duapps.ad.base.r.c(c, str1);
        e();
      }
    }
  }
  
  private void e()
  {
    if (!a())
    {
      a(50);
      return;
    }
    an.a().a(new b(this));
  }
  
  /* Error */
  public CoinManager.RequestResult a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 175	com/duapps/ad/coin/CoinManager$RequestResult
    //   5: dup
    //   6: aload_1
    //   7: aload_2
    //   8: aconst_null
    //   9: invokespecial 178	com/duapps/ad/coin/CoinManager$RequestResult:<init>	(Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/coin/b;)V
    //   12: astore_3
    //   13: aload_0
    //   14: invokevirtual 154	com/duapps/ad/coin/CoinManager:a	()Z
    //   17: ifne +22 -> 39
    //   20: aload_3
    //   21: bipush -5
    //   23: putfield 180	com/duapps/ad/coin/CoinManager$RequestResult:c	I
    //   26: aload_0
    //   27: getstatic 100	com/duapps/ad/coin/CoinManager$RETRY_TYPE:Query	Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;
    //   30: invokevirtual 183	com/duapps/ad/coin/CoinManager:a	(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    //   33: aload_3
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: areturn
    //   39: new 185	java/util/ArrayList
    //   42: dup
    //   43: invokespecial 186	java/util/ArrayList:<init>	()V
    //   46: astore 4
    //   48: aload 4
    //   50: new 188	org/apache/http/message/BasicNameValuePair
    //   53: dup
    //   54: ldc -66
    //   56: aload_0
    //   57: getfield 40	com/duapps/ad/coin/CoinManager:d	Ljava/lang/String;
    //   60: invokespecial 192	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   63: invokevirtual 196	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   66: pop
    //   67: ldc -58
    //   69: getstatic 200	com/duapps/ad/coin/a:c	Ljava/lang/String;
    //   72: getstatic 202	com/duapps/ad/coin/a:d	I
    //   75: new 124	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   82: getstatic 204	com/duapps/ad/coin/a:e	Ljava/lang/String;
    //   85: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: ldc -50
    //   90: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: aload 4
    //   98: ldc -48
    //   100: invokestatic 214	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   103: aconst_null
    //   104: invokestatic 220	org/apache/http/client/utils/URIUtils:createURI	(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    //   107: astore 4
    //   109: new 222	org/json/JSONObject
    //   112: dup
    //   113: invokespecial 223	org/json/JSONObject:<init>	()V
    //   116: astore 5
    //   118: aload 5
    //   120: ldc -66
    //   122: aload_0
    //   123: getfield 40	com/duapps/ad/coin/CoinManager:d	Ljava/lang/String;
    //   126: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   129: pop
    //   130: aload 5
    //   132: ldc -27
    //   134: aload_0
    //   135: getfield 51	com/duapps/ad/coin/CoinManager:f	Ljava/lang/String;
    //   138: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   141: pop
    //   142: aload_1
    //   143: ifnull +25 -> 168
    //   146: aload_2
    //   147: ifnull +21 -> 168
    //   150: aload 5
    //   152: ldc -25
    //   154: aload_1
    //   155: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   158: pop
    //   159: aload 5
    //   161: ldc -23
    //   163: aload_2
    //   164: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   167: pop
    //   168: aload_0
    //   169: getfield 46	com/duapps/ad/coin/CoinManager:e	Lcom/duapps/ad/coin/a;
    //   172: aload 4
    //   174: aload 5
    //   176: invokevirtual 234	org/json/JSONObject:toString	()Ljava/lang/String;
    //   179: aconst_null
    //   180: invokevirtual 237	com/duapps/ad/coin/a:a	(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    //   183: astore_2
    //   184: aload_2
    //   185: invokestatic 240	com/duapps/ad/coin/a:a	(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    //   188: invokestatic 243	com/duapps/ad/coin/CoinManager$RequestResult:a	(Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;
    //   191: astore_1
    //   192: aload_1
    //   193: getfield 180	com/duapps/ad/coin/CoinManager$RequestResult:c	I
    //   196: sipush 200
    //   199: if_icmpne +47 -> 246
    //   202: aload_0
    //   203: invokespecial 245	com/duapps/ad/coin/CoinManager:c	()V
    //   206: aload_2
    //   207: invokestatic 248	com/duapps/ad/coin/a:b	(Lorg/apache/http/HttpResponse;)V
    //   210: goto -175 -> 35
    //   213: astore_1
    //   214: invokestatic 249	com/duapps/ad/base/l:a	()Z
    //   217: ifeq +11 -> 228
    //   220: ldc 122
    //   222: ldc -5
    //   224: aload_1
    //   225: invokestatic 254	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   228: aload_3
    //   229: bipush -3
    //   231: putfield 180	com/duapps/ad/coin/CoinManager$RequestResult:c	I
    //   234: aload_0
    //   235: getstatic 100	com/duapps/ad/coin/CoinManager$RETRY_TYPE:Query	Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;
    //   238: invokevirtual 183	com/duapps/ad/coin/CoinManager:a	(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    //   241: aload_3
    //   242: astore_1
    //   243: goto -208 -> 35
    //   246: aload_0
    //   247: getstatic 100	com/duapps/ad/coin/CoinManager$RETRY_TYPE:Query	Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;
    //   250: invokevirtual 183	com/duapps/ad/coin/CoinManager:a	(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    //   253: goto -47 -> 206
    //   256: astore_1
    //   257: aload_2
    //   258: invokestatic 248	com/duapps/ad/coin/a:b	(Lorg/apache/http/HttpResponse;)V
    //   261: aload_1
    //   262: athrow
    //   263: astore_1
    //   264: aload_0
    //   265: monitorexit
    //   266: aload_1
    //   267: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	268	0	this	CoinManager
    //   0	268	1	paramString1	String
    //   0	268	2	paramString2	String
    //   12	230	3	localRequestResult	CoinManager.RequestResult
    //   46	127	4	localObject	Object
    //   116	59	5	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   39	142	213	java/lang/Exception
    //   150	168	213	java/lang/Exception
    //   168	184	213	java/lang/Exception
    //   206	210	213	java/lang/Exception
    //   257	263	213	java/lang/Exception
    //   184	206	256	finally
    //   246	253	256	finally
    //   2	33	263	finally
    //   39	142	263	finally
    //   150	168	263	finally
    //   168	184	263	finally
    //   206	210	263	finally
    //   214	228	263	finally
    //   228	241	263	finally
    //   257	263	263	finally
  }
  
  public void a(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = 0;
    }
    com.duapps.ad.base.r.h(c, i);
  }
  
  public void a(CoinManager.RETRY_TYPE paramRETRY_TYPE)
  {
    com.duapps.ad.base.r.a(c, paramRETRY_TYPE, false);
    com.duapps.ad.base.r.b(c, paramRETRY_TYPE, false);
    com.duapps.ad.base.r.a(c, paramRETRY_TYPE, System.currentTimeMillis());
  }
  
  public boolean a()
  {
    return true;
  }
  
  /* Error */
  public CoinManager.RequestResult b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 175	com/duapps/ad/coin/CoinManager$RequestResult
    //   5: dup
    //   6: aload_1
    //   7: aload_2
    //   8: aconst_null
    //   9: invokespecial 178	com/duapps/ad/coin/CoinManager$RequestResult:<init>	(Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/coin/b;)V
    //   12: astore_3
    //   13: aload_3
    //   14: aload_1
    //   15: putfield 268	com/duapps/ad/coin/CoinManager$RequestResult:e	Ljava/lang/String;
    //   18: aload_3
    //   19: aload_2
    //   20: putfield 269	com/duapps/ad/coin/CoinManager$RequestResult:f	Ljava/lang/String;
    //   23: aload_3
    //   24: iconst_m1
    //   25: putfield 180	com/duapps/ad/coin/CoinManager$RequestResult:c	I
    //   28: aload_0
    //   29: invokevirtual 154	com/duapps/ad/coin/CoinManager:a	()Z
    //   32: ifne +22 -> 54
    //   35: aload_3
    //   36: bipush -4
    //   38: putfield 180	com/duapps/ad/coin/CoinManager$RequestResult:c	I
    //   41: aload_0
    //   42: getstatic 110	com/duapps/ad/coin/CoinManager$RETRY_TYPE:Increase	Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;
    //   45: invokevirtual 183	com/duapps/ad/coin/CoinManager:a	(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    //   48: aload_3
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: areturn
    //   54: new 185	java/util/ArrayList
    //   57: dup
    //   58: invokespecial 186	java/util/ArrayList:<init>	()V
    //   61: astore 4
    //   63: aload 4
    //   65: new 188	org/apache/http/message/BasicNameValuePair
    //   68: dup
    //   69: ldc -66
    //   71: aload_0
    //   72: getfield 40	com/duapps/ad/coin/CoinManager:d	Ljava/lang/String;
    //   75: invokespecial 192	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   78: invokevirtual 196	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   81: pop
    //   82: ldc -58
    //   84: getstatic 200	com/duapps/ad/coin/a:c	Ljava/lang/String;
    //   87: getstatic 202	com/duapps/ad/coin/a:d	I
    //   90: new 124	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   97: getstatic 204	com/duapps/ad/coin/a:e	Ljava/lang/String;
    //   100: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc_w 271
    //   106: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: aload 4
    //   114: ldc -48
    //   116: invokestatic 214	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   119: aconst_null
    //   120: invokestatic 220	org/apache/http/client/utils/URIUtils:createURI	(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    //   123: astore 4
    //   125: new 222	org/json/JSONObject
    //   128: dup
    //   129: invokespecial 223	org/json/JSONObject:<init>	()V
    //   132: astore 5
    //   134: aload 5
    //   136: ldc_w 273
    //   139: invokestatic 264	java/lang/System:currentTimeMillis	()J
    //   142: invokevirtual 276	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   145: pop
    //   146: aload 5
    //   148: ldc -27
    //   150: aload_0
    //   151: getfield 51	com/duapps/ad/coin/CoinManager:f	Ljava/lang/String;
    //   154: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   157: pop
    //   158: aload 5
    //   160: ldc -66
    //   162: aload_0
    //   163: getfield 40	com/duapps/ad/coin/CoinManager:d	Ljava/lang/String;
    //   166: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   169: pop
    //   170: aload 5
    //   172: ldc -25
    //   174: aload_1
    //   175: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   178: pop
    //   179: aload 5
    //   181: ldc -23
    //   183: aload_2
    //   184: invokevirtual 227	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   187: pop
    //   188: aload_0
    //   189: getfield 46	com/duapps/ad/coin/CoinManager:e	Lcom/duapps/ad/coin/a;
    //   192: aload 4
    //   194: aload 5
    //   196: invokevirtual 234	org/json/JSONObject:toString	()Ljava/lang/String;
    //   199: aconst_null
    //   200: invokevirtual 237	com/duapps/ad/coin/a:a	(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    //   203: astore 4
    //   205: aload 4
    //   207: invokestatic 240	com/duapps/ad/coin/a:a	(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    //   210: invokestatic 243	com/duapps/ad/coin/CoinManager$RequestResult:a	(Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;
    //   213: astore_1
    //   214: aload_1
    //   215: invokevirtual 278	com/duapps/ad/coin/CoinManager$RequestResult:b	()Z
    //   218: ifeq +52 -> 270
    //   221: aload_0
    //   222: invokespecial 245	com/duapps/ad/coin/CoinManager:c	()V
    //   225: aload 4
    //   227: invokestatic 248	com/duapps/ad/coin/a:b	(Lorg/apache/http/HttpResponse;)V
    //   230: goto -180 -> 50
    //   233: astore_2
    //   234: invokestatic 249	com/duapps/ad/base/l:a	()Z
    //   237: ifeq +12 -> 249
    //   240: ldc 122
    //   242: ldc_w 280
    //   245: aload_2
    //   246: invokestatic 254	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   249: aload_1
    //   250: bipush -3
    //   252: putfield 180	com/duapps/ad/coin/CoinManager$RequestResult:c	I
    //   255: aload_0
    //   256: getstatic 110	com/duapps/ad/coin/CoinManager$RETRY_TYPE:Increase	Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;
    //   259: invokevirtual 183	com/duapps/ad/coin/CoinManager:a	(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    //   262: goto -212 -> 50
    //   265: astore_1
    //   266: aload_0
    //   267: monitorexit
    //   268: aload_1
    //   269: athrow
    //   270: aload_0
    //   271: getstatic 110	com/duapps/ad/coin/CoinManager$RETRY_TYPE:Increase	Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;
    //   274: invokevirtual 183	com/duapps/ad/coin/CoinManager:a	(Lcom/duapps/ad/coin/CoinManager$RETRY_TYPE;)V
    //   277: goto -52 -> 225
    //   280: astore_2
    //   281: aload_1
    //   282: astore_3
    //   283: aload 4
    //   285: invokestatic 248	com/duapps/ad/coin/a:b	(Lorg/apache/http/HttpResponse;)V
    //   288: aload_2
    //   289: athrow
    //   290: astore_2
    //   291: aload_3
    //   292: astore_1
    //   293: goto -59 -> 234
    //   296: astore_2
    //   297: aload_3
    //   298: astore_1
    //   299: goto -65 -> 234
    //   302: astore_2
    //   303: goto -20 -> 283
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	306	0	this	CoinManager
    //   0	306	1	paramString1	String
    //   0	306	2	paramString2	String
    //   12	286	3	localObject1	Object
    //   61	223	4	localObject2	Object
    //   132	63	5	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   225	230	233	java/lang/Exception
    //   2	48	265	finally
    //   54	205	265	finally
    //   225	230	265	finally
    //   234	249	265	finally
    //   249	262	265	finally
    //   283	290	265	finally
    //   214	225	280	finally
    //   270	277	280	finally
    //   283	290	290	java/lang/Exception
    //   54	205	296	java/lang/Exception
    //   205	214	302	finally
  }
  
  public String b()
  {
    return f;
  }
  
  public String b(Context paramContext)
  {
    Account[] arrayOfAccount = AccountManager.get(paramContext).getAccountsByType("com.google");
    Object localObject = null;
    paramContext = (Context)localObject;
    if (arrayOfAccount != null)
    {
      paramContext = (Context)localObject;
      if (arrayOfAccount.length > 0) {
        paramContext = ap.a(0name);
      }
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.coin.CoinManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */