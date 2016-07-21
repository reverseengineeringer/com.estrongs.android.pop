package com.duapps.ad.base;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.duapps.ad.b;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import com.duapps.ad.inmobi.IMDataModel;
import com.duapps.ad.stats.DuAdCacheProvider;
import com.duapps.ad.stats.p;
import org.json.JSONException;
import org.json.JSONObject;

public class t
{
  public static String a = "coinswall";
  private static String b = "http://api.mobula.sdk.duapps.com/adunion/slot/getDlAd?";
  private static String c = "http://api.mobula.sdk.duapps.com/adunion/rtb/getInmobiAd?";
  private static String d = "http://api.mobula.sdk.duapps.com/adunion/slot/getTPC?";
  private static String e = "http://sandbox.duapps.com:8124/adunion/slot/coinswall?";
  private static String f = "http://api.mobula.sdk.duapps.com/adunion/rtb/fetchAd?";
  private static t h;
  private Context g;
  
  private t(Context paramContext)
  {
    g = paramContext;
    b(paramContext);
  }
  
  public static t a(Context paramContext)
  {
    try
    {
      if (h == null) {
        h = new t(paramContext.getApplicationContext());
      }
      paramContext = h;
      return paramContext;
    }
    finally {}
  }
  
  private void a(int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, am<AdModel> paramam)
  {
    paramam.a();
    String str = ag.b(g);
    paramString3 = paramString3 + str + "_" + paramString1 + "_" + paramInt1 + "_" + paramInt2;
    if (!ap.a(g))
    {
      paramam.a(1000, b.a.b());
      return;
    }
    an.a().a(new w(this, str, paramInt2, paramInt1, paramString1, paramString2, paramString3, paramam));
  }
  
  private void a(int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, am<AdModel> paramam, int paramInt3)
  {
    paramam.a();
    String str = ag.b(g);
    DisplayMetrics localDisplayMetrics = g.getResources().getDisplayMetrics();
    paramString3 = paramString3 + str + "_" + paramString1 + "_" + paramInt1 + "_" + paramInt2;
    if (!ap.a(g))
    {
      paramam.a(1000, b.a.b());
      return;
    }
    an.a().a(new y(this, str, localDisplayMetrics, paramInt2, paramInt1, paramString1, paramInt3, paramString2, paramString3, paramam));
  }
  
  private void a(int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, am<AdModel> paramam, String paramString4)
  {
    paramam.a();
    String str = ag.b(g);
    paramString3 = paramString3 + str + "_" + paramString1 + "_" + paramInt1 + "_" + paramInt2;
    if (!ap.a(g))
    {
      paramam.a(1000, b.a.b());
      return;
    }
    an.a().a(new u(this, str, paramString4, paramInt2, paramInt1, paramString1, paramString2, paramString3, paramam));
  }
  
  public static void a(String paramString)
  {
    if ("prod".equals(paramString))
    {
      b = "http://api.mobula.sdk.duapps.com/adunion/slot/getDlAd?";
      c = "http://api.mobula.sdk.duapps.com/adunion/rtb/getInmobiAd?";
      d = "http://api.mobula.sdk.duapps.com/adunion/slot/getTPC?";
      e = "http://api.mobula.sd.duapps.com/adunion/slot/coinswall?";
      f = "http://api.mobula.sdk.duapps.com/adunion/rtb/fetchAd?";
    }
    while ((!"dev".equals(paramString)) && (!"test".equals(paramString))) {
      return;
    }
    b = "http://sandbox.duapps.com:8124/adunion/slot/getDlAd?";
    c = "http://sandbox.duapps.com:8124/adunion/rtb/getInmobiAd?";
    d = "http://sandbox.duapps.com:8124/adunion/slot/getTPC?";
    e = "http://sandbox.duapps.com:8124/adunion/slot/coinswall?";
    f = "http://sandbox.duapps.com:8124/adunion/rtb/fetchAd?";
  }
  
  private void b(Context paramContext)
  {
    try
    {
      long l = System.currentTimeMillis();
      g.getContentResolver().delete(DuAdCacheProvider.a(g, 3), "ts<?", new String[] { String.valueOf(l - 7200000L) });
      return;
    }
    catch (Exception paramContext)
    {
      l.a("ToolboxCacheManager", "mDatabase initCacheDatabase() del exception: ", paramContext);
    }
  }
  
  /* Error */
  public java.util.List<p> a()
  {
    // Byte code:
    //   0: new 208	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 209	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: iconst_1
    //   10: invokestatic 214	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   13: astore_1
    //   14: aload_0
    //   15: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   18: invokevirtual 177	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   21: aload_0
    //   22: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   25: iconst_2
    //   26: invokestatic 182	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   29: iconst_2
    //   30: anewarray 147	java/lang/String
    //   33: dup
    //   34: iconst_0
    //   35: ldc -40
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: ldc -38
    //   42: aastore
    //   43: ldc -36
    //   45: iconst_1
    //   46: anewarray 147	java/lang/String
    //   49: dup
    //   50: iconst_0
    //   51: aload_1
    //   52: aastore
    //   53: aconst_null
    //   54: invokevirtual 224	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   57: astore_2
    //   58: aload_2
    //   59: ifnull +85 -> 144
    //   62: aload_2
    //   63: astore_1
    //   64: aload_2
    //   65: invokeinterface 230 1 0
    //   70: ifeq +74 -> 144
    //   73: aload_2
    //   74: astore_1
    //   75: aload 4
    //   77: new 232	org/json/JSONObject
    //   80: dup
    //   81: aload_2
    //   82: iconst_0
    //   83: invokeinterface 235 2 0
    //   88: invokespecial 237	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   91: invokestatic 242	com/duapps/ad/stats/p:a	(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/p;
    //   94: invokeinterface 247 2 0
    //   99: pop
    //   100: goto -42 -> 58
    //   103: astore_3
    //   104: aload_2
    //   105: astore_1
    //   106: invokestatic 249	com/duapps/ad/base/l:a	()Z
    //   109: ifeq +13 -> 122
    //   112: aload_2
    //   113: astore_1
    //   114: ldc -58
    //   116: ldc -5
    //   118: aload_3
    //   119: invokestatic 205	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   122: aload_2
    //   123: ifnull +18 -> 141
    //   126: aload_2
    //   127: invokeinterface 254 1 0
    //   132: ifne +9 -> 141
    //   135: aload_2
    //   136: invokeinterface 257 1 0
    //   141: aload 4
    //   143: areturn
    //   144: aload_2
    //   145: ifnull -4 -> 141
    //   148: aload_2
    //   149: invokeinterface 254 1 0
    //   154: ifne -13 -> 141
    //   157: aload_2
    //   158: invokeinterface 257 1 0
    //   163: aload 4
    //   165: areturn
    //   166: astore_2
    //   167: aconst_null
    //   168: astore_1
    //   169: aload_1
    //   170: ifnull +18 -> 188
    //   173: aload_1
    //   174: invokeinterface 254 1 0
    //   179: ifne +9 -> 188
    //   182: aload_1
    //   183: invokeinterface 257 1 0
    //   188: aload_2
    //   189: athrow
    //   190: astore_2
    //   191: goto -22 -> 169
    //   194: astore_3
    //   195: aconst_null
    //   196: astore_2
    //   197: goto -93 -> 104
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	t
    //   13	170	1	localObject1	Object
    //   57	101	2	localCursor	android.database.Cursor
    //   166	23	2	localObject2	Object
    //   190	1	2	localObject3	Object
    //   196	1	2	localObject4	Object
    //   103	16	3	localException1	Exception
    //   194	1	3	localException2	Exception
    //   7	157	4	localArrayList	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   64	73	103	java/lang/Exception
    //   75	100	103	java/lang/Exception
    //   14	58	166	finally
    //   64	73	190	finally
    //   75	100	190	finally
    //   106	112	190	finally
    //   114	122	190	finally
    //   14	58	194	java/lang/Exception
  }
  
  public void a(int paramInt1, int paramInt2, am<AdModel> paramam)
  {
    a(paramInt1, "native", paramInt2, b, "native_", paramam);
  }
  
  public void a(int paramInt1, int paramInt2, am<AdModel> paramam, int paramInt3)
  {
    a(paramInt1, "online", paramInt2, f, "online_", paramam, paramInt3);
  }
  
  public void a(int paramInt, String paramString1, String paramString2, am<IMDataModel> paramam)
  {
    paramam.a();
    if (!r.a(c + paramInt, g))
    {
      paramam.a(1002, "This url is request too frequently.");
      l.c("ToolboxCacheManager", "This url is request too frequently.");
      return;
    }
    String str = ag.b(g);
    if (!ap.a(g))
    {
      paramam.a(1000, b.a.b());
      return;
    }
    an.a().a(new aa(this, str, paramInt, paramString1, paramString2, paramam));
  }
  
  void a(ad paramad)
  {
    ContentValues localContentValues = new ContentValues(4);
    localContentValues.put("key", a);
    localContentValues.put("data", b);
    localContentValues.put("ts", Long.valueOf(c));
    paramad = a;
    try
    {
      if (g.getContentResolver().update(DuAdCacheProvider.a(g, 3), localContentValues, "key=?", new String[] { paramad }) < 1) {
        g.getContentResolver().insert(DuAdCacheProvider.a(g, 3), localContentValues);
      }
      return;
    }
    catch (Exception paramad)
    {
      l.a("ToolboxCacheManager", "cacheDabase saveCacheEntry() exception: ", paramad);
    }
  }
  
  public void a(AdModel paramAdModel)
  {
    an.a().a(new ac(this, paramAdModel));
  }
  
  public void a(p paramp)
  {
    if ((paramp == null) || (TextUtils.isEmpty(paramp.a()))) {}
    for (;;)
    {
      return;
      try
      {
        ContentValues localContentValues = new ContentValues(5);
        localContentValues.put("pkgName", paramp.a());
        localContentValues.put("ctime", Long.valueOf(System.currentTimeMillis()));
        localContentValues.put("cdata", p.a(paramp).toString());
        paramp = paramp.a();
        if (g.getContentResolver().update(DuAdCacheProvider.a(g, 2), localContentValues, "pkgName=?", new String[] { paramp }) == 0)
        {
          localContentValues.put("status", Integer.valueOf(0));
          g.getContentResolver().insert(DuAdCacheProvider.a(g, 2), localContentValues);
          return;
        }
      }
      catch (Exception paramp)
      {
        l.a("ToolboxCacheManager", "updateOrInsertValidClickTime() exception: ", paramp);
      }
    }
  }
  
  /* Error */
  ad b(String paramString)
  {
    // Byte code:
    //   0: new 301	com/duapps/ad/base/ad
    //   3: dup
    //   4: invokespecial 368	com/duapps/ad/base/ad:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: aload_1
    //   12: putfield 302	com/duapps/ad/base/ad:a	Ljava/lang/String;
    //   15: aload_0
    //   16: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   19: invokevirtual 177	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   22: aload_0
    //   23: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   26: iconst_3
    //   27: invokestatic 182	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   30: iconst_2
    //   31: anewarray 147	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc_w 307
    //   39: aastore
    //   40: dup
    //   41: iconst_1
    //   42: ldc_w 310
    //   45: aastore
    //   46: ldc_w 323
    //   49: iconst_1
    //   50: anewarray 147	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: aload_1
    //   56: aastore
    //   57: aconst_null
    //   58: invokevirtual 224	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore_2
    //   62: aload_2
    //   63: ifnull +42 -> 105
    //   66: aload_2
    //   67: astore_1
    //   68: aload_2
    //   69: invokeinterface 371 1 0
    //   74: ifeq +31 -> 105
    //   77: aload_2
    //   78: astore_1
    //   79: aload 4
    //   81: aload_2
    //   82: iconst_0
    //   83: invokeinterface 235 2 0
    //   88: putfield 308	com/duapps/ad/base/ad:b	Ljava/lang/String;
    //   91: aload_2
    //   92: astore_1
    //   93: aload 4
    //   95: aload_2
    //   96: iconst_1
    //   97: invokeinterface 375 2 0
    //   102: putfield 313	com/duapps/ad/base/ad:c	J
    //   105: aload_2
    //   106: ifnull +18 -> 124
    //   109: aload_2
    //   110: invokeinterface 254 1 0
    //   115: ifne +9 -> 124
    //   118: aload_2
    //   119: invokeinterface 257 1 0
    //   124: aload 4
    //   126: areturn
    //   127: astore_3
    //   128: aconst_null
    //   129: astore_2
    //   130: aload_2
    //   131: astore_1
    //   132: ldc -58
    //   134: ldc_w 377
    //   137: aload_3
    //   138: invokestatic 205	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   141: aload_2
    //   142: ifnull -18 -> 124
    //   145: aload_2
    //   146: invokeinterface 254 1 0
    //   151: ifne -27 -> 124
    //   154: aload_2
    //   155: invokeinterface 257 1 0
    //   160: aload 4
    //   162: areturn
    //   163: astore_2
    //   164: aconst_null
    //   165: astore_1
    //   166: aload_1
    //   167: ifnull +18 -> 185
    //   170: aload_1
    //   171: invokeinterface 254 1 0
    //   176: ifne +9 -> 185
    //   179: aload_1
    //   180: invokeinterface 257 1 0
    //   185: aload_2
    //   186: athrow
    //   187: astore_2
    //   188: goto -22 -> 166
    //   191: astore_3
    //   192: goto -62 -> 130
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	195	0	this	t
    //   0	195	1	paramString	String
    //   61	94	2	localCursor	android.database.Cursor
    //   163	23	2	localObject1	Object
    //   187	1	2	localObject2	Object
    //   127	11	3	localException1	Exception
    //   191	1	3	localException2	Exception
    //   7	154	4	localad	ad
    // Exception table:
    //   from	to	target	type
    //   15	62	127	java/lang/Exception
    //   15	62	163	finally
    //   68	77	187	finally
    //   79	91	187	finally
    //   93	105	187	finally
    //   132	141	187	finally
    //   68	77	191	java/lang/Exception
    //   79	91	191	java/lang/Exception
    //   93	105	191	java/lang/Exception
  }
  
  public void b()
  {
    String str = Long.toString(System.currentTimeMillis() - 86400000L);
    try
    {
      g.getContentResolver().delete(DuAdCacheProvider.a(g, 7), "ctime<?", new String[] { str });
      return;
    }
    catch (Exception localException)
    {
      l.a("ToolboxCacheManager", "clearTriggerPreParseData error: ", localException);
    }
  }
  
  public void b(int paramInt1, int paramInt2, am<AdModel> paramam, int paramInt3)
  {
    a(paramInt1, "offerwall", paramInt2, b, "native_", paramam, String.valueOf(paramInt3));
  }
  
  public void b(p paramp)
  {
    if ((paramp == null) || (TextUtils.isEmpty(paramp.a()))) {}
    do
    {
      for (;;)
      {
        return;
        try
        {
          ContentValues localContentValues = new ContentValues(5);
          localContentValues.put("ad_id", Long.valueOf(ga));
          localContentValues.put("pkgName", paramp.a());
          localContentValues.put("data", p.a(paramp).toString());
          localContentValues.put("ctime", Long.valueOf(System.currentTimeMillis()));
          paramp = paramp.a();
          if (g.getContentResolver().update(DuAdCacheProvider.a(g, 7), localContentValues, "pkgName=?", new String[] { paramp }) == 0)
          {
            g.getContentResolver().insert(DuAdCacheProvider.a(g, 7), localContentValues);
            l.c("ToolboxCacheManager", "update or insert triggerPreParse data success");
            return;
          }
        }
        catch (JSONException paramp) {}
      }
    } while (!l.a());
    l.a("ToolboxCacheManager", "update or insert triggerPreParse data error: ", paramp);
  }
  
  /* Error */
  public p c(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 348	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: invokestatic 173	java/lang/System:currentTimeMillis	()J
    //   12: lstore_2
    //   13: aload_0
    //   14: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   17: invokevirtual 177	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   20: aload_0
    //   21: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   24: iconst_2
    //   25: invokestatic 182	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   28: iconst_2
    //   29: anewarray 147	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: ldc -40
    //   36: aastore
    //   37: dup
    //   38: iconst_1
    //   39: ldc -38
    //   41: aastore
    //   42: ldc_w 409
    //   45: iconst_2
    //   46: anewarray 147	java/lang/String
    //   49: dup
    //   50: iconst_0
    //   51: aload_1
    //   52: aastore
    //   53: dup
    //   54: iconst_1
    //   55: lload_2
    //   56: ldc2_w 378
    //   59: lsub
    //   60: invokestatic 190	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   63: aastore
    //   64: aconst_null
    //   65: invokevirtual 224	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   68: astore_1
    //   69: aload_1
    //   70: ifnull +160 -> 230
    //   73: aload_1
    //   74: astore 4
    //   76: aload_1
    //   77: invokeinterface 371 1 0
    //   82: ifeq +148 -> 230
    //   85: aload_1
    //   86: astore 4
    //   88: new 232	org/json/JSONObject
    //   91: dup
    //   92: aload_1
    //   93: iconst_0
    //   94: invokeinterface 235 2 0
    //   99: invokespecial 237	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   102: invokestatic 242	com/duapps/ad/stats/p:a	(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/p;
    //   105: astore 5
    //   107: aload 5
    //   109: astore 4
    //   111: aload 4
    //   113: astore 5
    //   115: aload_1
    //   116: ifnull +26 -> 142
    //   119: aload 4
    //   121: astore 5
    //   123: aload_1
    //   124: invokeinterface 254 1 0
    //   129: ifne +13 -> 142
    //   132: aload_1
    //   133: invokeinterface 257 1 0
    //   138: aload 4
    //   140: astore 5
    //   142: aload 5
    //   144: areturn
    //   145: astore 5
    //   147: aconst_null
    //   148: astore_1
    //   149: aload_1
    //   150: astore 4
    //   152: ldc -58
    //   154: ldc_w 411
    //   157: aload 5
    //   159: invokestatic 205	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   162: aload_1
    //   163: ifnull +61 -> 224
    //   166: aload_1
    //   167: invokeinterface 254 1 0
    //   172: ifne +52 -> 224
    //   175: aload_1
    //   176: invokeinterface 257 1 0
    //   181: aconst_null
    //   182: astore 5
    //   184: goto -42 -> 142
    //   187: astore_1
    //   188: aconst_null
    //   189: astore 4
    //   191: aload 4
    //   193: ifnull +20 -> 213
    //   196: aload 4
    //   198: invokeinterface 254 1 0
    //   203: ifne +10 -> 213
    //   206: aload 4
    //   208: invokeinterface 257 1 0
    //   213: aload_1
    //   214: athrow
    //   215: astore_1
    //   216: goto -25 -> 191
    //   219: astore 5
    //   221: goto -72 -> 149
    //   224: aconst_null
    //   225: astore 5
    //   227: goto -85 -> 142
    //   230: aconst_null
    //   231: astore 4
    //   233: goto -122 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	this	t
    //   0	236	1	paramString	String
    //   12	44	2	l	long
    //   74	158	4	localObject1	Object
    //   105	38	5	localObject2	Object
    //   145	13	5	localException1	Exception
    //   182	1	5	localObject3	Object
    //   219	1	5	localException2	Exception
    //   225	1	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   13	69	145	java/lang/Exception
    //   13	69	187	finally
    //   76	85	215	finally
    //   88	107	215	finally
    //   152	162	215	finally
    //   76	85	219	java/lang/Exception
    //   88	107	219	java/lang/Exception
  }
  
  public void d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      g.getContentResolver().delete(DuAdCacheProvider.a(g, 2), "pkgName=?", new String[] { paramString });
      return;
    }
    catch (Exception paramString)
    {
      l.a("ToolboxCacheManager", "mDatabase removeValidClickRecord() del exception: ", paramString);
    }
  }
  
  public void e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("status", Integer.valueOf(1));
    try
    {
      g.getContentResolver().update(DuAdCacheProvider.a(g, 2), localContentValues, "pkgName=?", new String[] { paramString });
      return;
    }
    catch (Exception paramString)
    {
      l.a("ToolboxCacheManager", "mDatabase removeValidClickRecord() exception: ", paramString);
    }
  }
  
  /* Error */
  public p f(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 348	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   13: invokevirtual 177	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   16: aload_0
    //   17: getfield 48	com/duapps/ad/base/t:g	Landroid/content/Context;
    //   20: bipush 7
    //   22: invokestatic 182	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   25: iconst_2
    //   26: anewarray 147	java/lang/String
    //   29: dup
    //   30: iconst_0
    //   31: ldc_w 350
    //   34: aastore
    //   35: dup
    //   36: iconst_1
    //   37: ldc_w 307
    //   40: aastore
    //   41: ldc_w 417
    //   44: iconst_1
    //   45: anewarray 147	java/lang/String
    //   48: dup
    //   49: iconst_0
    //   50: aload_1
    //   51: aastore
    //   52: aconst_null
    //   53: invokevirtual 224	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   56: astore_1
    //   57: aload_1
    //   58: ifnull +146 -> 204
    //   61: aload_1
    //   62: astore_2
    //   63: aload_1
    //   64: invokeinterface 371 1 0
    //   69: ifeq +135 -> 204
    //   72: aload_1
    //   73: astore_2
    //   74: new 232	org/json/JSONObject
    //   77: dup
    //   78: aload_1
    //   79: iconst_1
    //   80: invokeinterface 235 2 0
    //   85: invokespecial 237	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   88: invokestatic 242	com/duapps/ad/stats/p:a	(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/p;
    //   91: astore_3
    //   92: aload_3
    //   93: astore_2
    //   94: aload_2
    //   95: astore_3
    //   96: aload_1
    //   97: ifnull +22 -> 119
    //   100: aload_2
    //   101: astore_3
    //   102: aload_1
    //   103: invokeinterface 254 1 0
    //   108: ifne +11 -> 119
    //   111: aload_1
    //   112: invokeinterface 257 1 0
    //   117: aload_2
    //   118: astore_3
    //   119: aload_3
    //   120: areturn
    //   121: astore_3
    //   122: aconst_null
    //   123: astore_1
    //   124: aload_1
    //   125: astore_2
    //   126: invokestatic 249	com/duapps/ad/base/l:a	()Z
    //   129: ifeq +14 -> 143
    //   132: aload_1
    //   133: astore_2
    //   134: ldc -58
    //   136: ldc_w 419
    //   139: aload_3
    //   140: invokestatic 205	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   143: aload_1
    //   144: ifnull +55 -> 199
    //   147: aload_1
    //   148: invokeinterface 254 1 0
    //   153: ifne +46 -> 199
    //   156: aload_1
    //   157: invokeinterface 257 1 0
    //   162: aconst_null
    //   163: astore_3
    //   164: goto -45 -> 119
    //   167: astore_1
    //   168: aconst_null
    //   169: astore_2
    //   170: aload_2
    //   171: ifnull +18 -> 189
    //   174: aload_2
    //   175: invokeinterface 254 1 0
    //   180: ifne +9 -> 189
    //   183: aload_2
    //   184: invokeinterface 257 1 0
    //   189: aload_1
    //   190: athrow
    //   191: astore_1
    //   192: goto -22 -> 170
    //   195: astore_3
    //   196: goto -72 -> 124
    //   199: aconst_null
    //   200: astore_3
    //   201: goto -82 -> 119
    //   204: aconst_null
    //   205: astore_2
    //   206: goto -112 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	this	t
    //   0	209	1	paramString	String
    //   62	144	2	localObject1	Object
    //   91	29	3	localObject2	Object
    //   121	19	3	localException1	Exception
    //   163	1	3	localObject3	Object
    //   195	1	3	localException2	Exception
    //   200	1	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   9	57	121	java/lang/Exception
    //   9	57	167	finally
    //   63	72	191	finally
    //   74	92	191	finally
    //   126	132	191	finally
    //   134	143	191	finally
    //   63	72	195	java/lang/Exception
    //   74	92	195	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */