package com.dianxinos.dxservice.stat;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.provider.Settings.System;
import android.util.Log;
import com.dianxinos.DXStatService.stat.d;
import com.dianxinos.dxservice.a.b;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.core.a;
import java.sql.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class ao
  implements Runnable
{
  private static final Long a = Long.valueOf(86400000L);
  private Context b;
  private ContentResolver c;
  private String d;
  private String e;
  private String f;
  private String g;
  private ap h;
  private ap i;
  private ap j;
  private ap k;
  
  public ao(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = b.getContentResolver();
    d = b.getPackageName();
    e = (d + "fi");
    f = (d + "vc");
    g = (d + "rt");
  }
  
  private Long a(PackageInfo paramPackageInfo)
  {
    Object localObject1;
    for (;;)
    {
      try
      {
        localObject1 = b.getPackageName();
        str = (String)localObject1 + "fakeFi";
        long l = b.getSharedPreferences("utils", 1).getLong(str, 0L);
        localObject2 = Long.valueOf(l);
        localObject1 = localObject2;
      }
      catch (Exception paramPackageInfo)
      {
        String str;
        Object localObject2;
        localObject1 = null;
        continue;
      }
      try
      {
        if (((Long)localObject2).longValue() != 0L) {
          return (Long)localObject2;
        }
        localObject1 = localObject2;
        paramPackageInfo = b.a(paramPackageInfo, "firstInstallTime");
        localObject1 = paramPackageInfo;
        localObject2 = b.getSharedPreferences("utils", 2).edit();
        localObject1 = paramPackageInfo;
        ((SharedPreferences.Editor)localObject2).putLong(str, paramPackageInfo.longValue());
        localObject1 = paramPackageInfo;
        ((SharedPreferences.Editor)localObject2).commit();
        return paramPackageInfo;
      }
      catch (Exception paramPackageInfo)
      {
        if (!c.e) {
          break label160;
        }
      }
    }
    Log.e("stat.UserReturnStatService", "Failed to getFirstInstallTime!", paramPackageInfo);
    return (Long)localObject1;
    label160:
    return (Long)localObject1;
  }
  
  private void a(ap paramap)
  {
    b(paramap);
    c(paramap);
    d(paramap);
  }
  
  private void a(String paramString, ap paramap)
  {
    a.a(b).a(paramString, 0, b(paramString, paramap));
  }
  
  private JSONObject b(String paramString, ap paramap)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if ("INS-UR-LC".equals(paramString))
      {
        localJSONObject.put(paramap.a(), 1);
        return localJSONObject;
      }
      localJSONObject.put(String.valueOf(paramap.b()), c.a(new Date(paramap.c().longValue())));
      return localJSONObject;
    }
    catch (JSONException paramString)
    {
      if (c.e)
      {
        Log.e("stat.UserReturnStatService", "Failed to get Json!", paramString);
        return localJSONObject;
      }
    }
    catch (Exception paramString)
    {
      if (c.e) {
        Log.e("stat.UserReturnStatService", "Failed to get Json!", paramString);
      }
    }
    return localJSONObject;
  }
  
  private void b()
  {
    if ((h.d()) && (j.d()) && (k.d())) {
      a("INS-FI", i);
    }
    for (;;)
    {
      return;
      if ((h.d()) && (k.d()) && (!j.d())) {
        a("INS-CDASD", i);
      }
      if ((h.d()) && (j.d()) && (!k.d())) {
        a("INS-WD", i);
      }
      if ((h.d()) && (!j.d()) && (!k.d())) {
        a("INS-CD", i);
      }
      ap localap = null;
      if (!h.d()) {
        localap = h;
      }
      while (!i.a(localap))
      {
        a("INS-PU", localap);
        a("INS-UR", i);
        a("INS-UR-LC", i);
        return;
        if (!j.d()) {
          localap = j;
        } else if (!k.d()) {
          localap = k;
        }
      }
    }
  }
  
  private void b(ap paramap)
  {
    try
    {
      SharedPreferences.Editor localEditor = b.getSharedPreferences("utils", 2).edit();
      localEditor.putLong(e, ap.b(paramap).longValue());
      localEditor.putInt(f, ap.c(paramap).intValue());
      localEditor.commit();
      return;
    }
    catch (Exception paramap)
    {
      while (!c.e) {}
      Log.e("stat.UserReturnStatService", "Failed to updateSharedPerferencedInfo!", paramap);
    }
  }
  
  private ap c()
  {
    ap localap = new ap(this);
    try
    {
      PackageInfo localPackageInfo = b.getPackageManager().getPackageInfo(d, 0);
      localap.a(a(localPackageInfo));
      localap.a(Integer.valueOf(versionCode));
      localap.a(d.a(b));
      if (c.d) {
        Log.i("stat.UserReturnStatService", "AppUserReturnStat:" + localap.toString());
      }
      return localap;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (!c.e) {}
      Log.e("stat.UserReturnStatService", "Failed to processAppUserReturnStat!", localNameNotFoundException);
      return localap;
    }
    catch (Exception localException)
    {
      while (!c.e) {}
      Log.e("stat.UserReturnStatService", "Failed to processAppUserReturnStat!", localException);
    }
    return localap;
  }
  
  private void c(ap paramap)
  {
    try
    {
      Settings.System.putLong(c, g, System.currentTimeMillis());
      Settings.System.putLong(c, e, ap.b(paramap).longValue());
      Settings.System.putInt(c, f, ap.c(paramap).intValue());
      return;
    }
    catch (Exception paramap)
    {
      while (!c.e) {}
      Log.e("stat.UserReturnStatService", "Failed to updateSettingsInfo!", paramap);
    }
  }
  
  private ap d()
  {
    ap localap = new ap(this);
    try
    {
      SharedPreferences localSharedPreferences = b.getSharedPreferences("utils", 1);
      long l = localSharedPreferences.getLong(e, 0L);
      int m = localSharedPreferences.getInt(f, 0);
      localap.a(Long.valueOf(l));
      localap.a(Integer.valueOf(m));
      if (c.d) {
        Log.i("stat.UserReturnStatService", "SharePrefrenceUserReturnStat:" + localap.toString());
      }
      return localap;
    }
    catch (Exception localException)
    {
      while (!c.e) {}
      Log.e("stat.UserReturnStatService", "Failed to processSharedPrefrenceUserReturnStat!", localException);
    }
    return localap;
  }
  
  /* Error */
  private void d(ap paramap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload 4
    //   7: astore_2
    //   8: ldc_w 321
    //   11: invokestatic 326	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   14: invokevirtual 169	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +342 -> 359
    //   20: aload 4
    //   22: astore_2
    //   23: new 328	java/io/File
    //   26: dup
    //   27: ldc_w 330
    //   30: invokespecial 332	java/io/File:<init>	(Ljava/lang/String;)V
    //   33: astore 6
    //   35: aload 4
    //   37: astore_2
    //   38: aload 6
    //   40: invokevirtual 335	java/io/File:exists	()Z
    //   43: ifne +12 -> 55
    //   46: aload 4
    //   48: astore_2
    //   49: aload 6
    //   51: invokevirtual 338	java/io/File:createNewFile	()Z
    //   54: pop
    //   55: aload 4
    //   57: astore_2
    //   58: new 61	java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   65: astore 5
    //   67: aload 4
    //   69: astore_2
    //   70: aload 5
    //   72: aload_0
    //   73: getfield 73	com/dianxinos/dxservice/stat/ao:e	Ljava/lang/String;
    //   76: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: aload 4
    //   82: astore_2
    //   83: aload 5
    //   85: ldc_w 340
    //   88: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: pop
    //   92: aload 4
    //   94: astore_2
    //   95: aload 5
    //   97: aload_1
    //   98: invokestatic 229	com/dianxinos/dxservice/stat/ap:b	(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Long;
    //   101: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   104: pop
    //   105: aload 4
    //   107: astore_2
    //   108: aload 5
    //   110: ldc_w 345
    //   113: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: pop
    //   117: aload 4
    //   119: astore_2
    //   120: aload 5
    //   122: aload_0
    //   123: getfield 77	com/dianxinos/dxservice/stat/ao:f	Ljava/lang/String;
    //   126: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: pop
    //   130: aload 4
    //   132: astore_2
    //   133: aload 5
    //   135: ldc_w 340
    //   138: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: pop
    //   142: aload 4
    //   144: astore_2
    //   145: aload 5
    //   147: aload_1
    //   148: invokestatic 232	com/dianxinos/dxservice/stat/ap:c	(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Integer;
    //   151: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload 4
    //   157: astore_2
    //   158: aload 5
    //   160: ldc_w 345
    //   163: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: pop
    //   167: aload 4
    //   169: astore_2
    //   170: new 347	java/io/FileOutputStream
    //   173: dup
    //   174: aload 6
    //   176: iconst_0
    //   177: invokespecial 350	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   180: astore_1
    //   181: aload_1
    //   182: aload 5
    //   184: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokevirtual 354	java/lang/String:getBytes	()[B
    //   190: invokevirtual 358	java/io/FileOutputStream:write	([B)V
    //   193: aload_1
    //   194: invokevirtual 361	java/io/FileOutputStream:flush	()V
    //   197: aload_1
    //   198: ifnull +7 -> 205
    //   201: aload_1
    //   202: invokevirtual 364	java/io/FileOutputStream:close	()V
    //   205: return
    //   206: astore_2
    //   207: aload_3
    //   208: astore_1
    //   209: aload_2
    //   210: astore_3
    //   211: aload_1
    //   212: astore_2
    //   213: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   216: ifeq +15 -> 231
    //   219: aload_1
    //   220: astore_2
    //   221: ldc -126
    //   223: ldc_w 366
    //   226: aload_3
    //   227: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   230: pop
    //   231: aload_1
    //   232: ifnull -27 -> 205
    //   235: aload_1
    //   236: invokevirtual 364	java/io/FileOutputStream:close	()V
    //   239: return
    //   240: astore_1
    //   241: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   244: ifeq -39 -> 205
    //   247: ldc -126
    //   249: ldc_w 368
    //   252: aload_1
    //   253: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   256: pop
    //   257: return
    //   258: astore_1
    //   259: aload_2
    //   260: ifnull +7 -> 267
    //   263: aload_2
    //   264: invokevirtual 364	java/io/FileOutputStream:close	()V
    //   267: aload_1
    //   268: athrow
    //   269: astore_2
    //   270: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   273: ifeq -6 -> 267
    //   276: ldc -126
    //   278: ldc_w 368
    //   281: aload_2
    //   282: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   285: pop
    //   286: goto -19 -> 267
    //   289: astore_2
    //   290: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   293: ifeq -26 -> 267
    //   296: ldc -126
    //   298: ldc_w 370
    //   301: aload_2
    //   302: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   305: pop
    //   306: goto -39 -> 267
    //   309: astore_1
    //   310: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   313: ifeq -108 -> 205
    //   316: ldc -126
    //   318: ldc_w 370
    //   321: aload_1
    //   322: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   325: pop
    //   326: return
    //   327: astore_1
    //   328: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   331: ifeq -126 -> 205
    //   334: goto -87 -> 247
    //   337: astore_1
    //   338: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   341: ifeq -136 -> 205
    //   344: goto -28 -> 316
    //   347: astore_3
    //   348: aload_1
    //   349: astore_2
    //   350: aload_3
    //   351: astore_1
    //   352: goto -93 -> 259
    //   355: astore_3
    //   356: goto -145 -> 211
    //   359: aconst_null
    //   360: astore_1
    //   361: goto -164 -> 197
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	364	0	this	ao
    //   0	364	1	paramap	ap
    //   7	163	2	localObject1	Object
    //   206	4	2	localException1	Exception
    //   212	52	2	localap1	ap
    //   269	13	2	localIOException	java.io.IOException
    //   289	13	2	localException2	Exception
    //   349	1	2	localap2	ap
    //   4	223	3	localObject2	Object
    //   347	4	3	localObject3	Object
    //   355	1	3	localException3	Exception
    //   1	167	4	localObject4	Object
    //   65	118	5	localStringBuilder	StringBuilder
    //   33	142	6	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   8	20	206	java/lang/Exception
    //   23	35	206	java/lang/Exception
    //   38	46	206	java/lang/Exception
    //   49	55	206	java/lang/Exception
    //   58	67	206	java/lang/Exception
    //   70	80	206	java/lang/Exception
    //   83	92	206	java/lang/Exception
    //   95	105	206	java/lang/Exception
    //   108	117	206	java/lang/Exception
    //   120	130	206	java/lang/Exception
    //   133	142	206	java/lang/Exception
    //   145	155	206	java/lang/Exception
    //   158	167	206	java/lang/Exception
    //   170	181	206	java/lang/Exception
    //   235	239	240	java/io/IOException
    //   8	20	258	finally
    //   23	35	258	finally
    //   38	46	258	finally
    //   49	55	258	finally
    //   58	67	258	finally
    //   70	80	258	finally
    //   83	92	258	finally
    //   95	105	258	finally
    //   108	117	258	finally
    //   120	130	258	finally
    //   133	142	258	finally
    //   145	155	258	finally
    //   158	167	258	finally
    //   170	181	258	finally
    //   213	219	258	finally
    //   221	231	258	finally
    //   263	267	269	java/io/IOException
    //   263	267	289	java/lang/Exception
    //   235	239	309	java/lang/Exception
    //   201	205	327	java/io/IOException
    //   201	205	337	java/lang/Exception
    //   181	197	347	finally
    //   181	197	355	java/lang/Exception
  }
  
  private ap e()
  {
    ap localap = new ap(this);
    try
    {
      long l = Settings.System.getLong(c, e, 0L);
      int m = Settings.System.getInt(c, f, 0);
      localap.a(Long.valueOf(l));
      localap.a(Integer.valueOf(m));
      if (c.d) {
        Log.i("stat.UserReturnStatService", "SettingsUserReturnStat:" + localap.toString());
      }
      return localap;
    }
    catch (Exception localException)
    {
      while (!c.e) {}
      Log.e("stat.UserReturnStatService", "Failed to processSettingsUserReturnStat!", localException);
    }
    return localap;
  }
  
  /* Error */
  private ap f()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 171	com/dianxinos/dxservice/stat/ap
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 249	com/dianxinos/dxservice/stat/ap:<init>	(Lcom/dianxinos/dxservice/stat/ao;)V
    //   11: astore 8
    //   13: ldc_w 321
    //   16: invokestatic 326	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   19: invokevirtual 169	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   22: ifeq +805 -> 827
    //   25: new 328	java/io/File
    //   28: dup
    //   29: ldc_w 330
    //   32: invokespecial 332	java/io/File:<init>	(Ljava/lang/String;)V
    //   35: astore_2
    //   36: aload_2
    //   37: invokevirtual 335	java/io/File:exists	()Z
    //   40: istore_1
    //   41: iload_1
    //   42: ifne +30 -> 72
    //   45: iconst_0
    //   46: ifeq +11 -> 57
    //   49: new 382	java/lang/NullPointerException
    //   52: dup
    //   53: invokespecial 383	java/lang/NullPointerException:<init>	()V
    //   56: athrow
    //   57: iconst_0
    //   58: ifeq +11 -> 69
    //   61: new 382	java/lang/NullPointerException
    //   64: dup
    //   65: invokespecial 383	java/lang/NullPointerException:<init>	()V
    //   68: athrow
    //   69: aload 8
    //   71: areturn
    //   72: new 385	java/io/FileInputStream
    //   75: dup
    //   76: aload_2
    //   77: invokespecial 388	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   80: astore_2
    //   81: new 390	java/io/BufferedReader
    //   84: dup
    //   85: new 392	java/io/InputStreamReader
    //   88: dup
    //   89: aload_2
    //   90: invokespecial 395	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   93: invokespecial 398	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   96: astore_3
    //   97: aload_3
    //   98: astore 4
    //   100: aload_2
    //   101: astore 5
    //   103: aload_3
    //   104: invokevirtual 401	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   107: astore 6
    //   109: aload 6
    //   111: ifnull +234 -> 345
    //   114: aload_3
    //   115: astore 4
    //   117: aload_2
    //   118: astore 5
    //   120: aload 6
    //   122: ldc_w 340
    //   125: invokevirtual 405	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   128: astore 6
    //   130: aload_3
    //   131: astore 4
    //   133: aload_2
    //   134: astore 5
    //   136: aload_0
    //   137: getfield 73	com/dianxinos/dxservice/stat/ao:e	Ljava/lang/String;
    //   140: aload 6
    //   142: iconst_0
    //   143: aaload
    //   144: invokevirtual 169	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   147: ifeq +94 -> 241
    //   150: aload_3
    //   151: astore 4
    //   153: aload_2
    //   154: astore 5
    //   156: aload 8
    //   158: aload 6
    //   160: iconst_1
    //   161: aaload
    //   162: invokestatic 409	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   165: invokestatic 32	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   168: invokevirtual 264	com/dianxinos/dxservice/stat/ap:a	(Ljava/lang/Long;)V
    //   171: goto -74 -> 97
    //   174: astore 5
    //   176: aload_2
    //   177: astore 4
    //   179: aload_3
    //   180: astore_2
    //   181: aload 5
    //   183: astore_3
    //   184: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   187: ifeq +13 -> 200
    //   190: ldc -126
    //   192: ldc_w 411
    //   195: aload_3
    //   196: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   199: pop
    //   200: aload 4
    //   202: ifnull +8 -> 210
    //   205: aload 4
    //   207: invokevirtual 412	java/io/FileInputStream:close	()V
    //   210: aload_2
    //   211: ifnull -142 -> 69
    //   214: aload_2
    //   215: invokevirtual 413	java/io/BufferedReader:close	()V
    //   218: aload 8
    //   220: areturn
    //   221: astore_2
    //   222: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   225: ifeq -156 -> 69
    //   228: ldc -126
    //   230: ldc_w 415
    //   233: aload_2
    //   234: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   237: pop
    //   238: aload 8
    //   240: areturn
    //   241: aload_3
    //   242: astore 4
    //   244: aload_2
    //   245: astore 5
    //   247: aload_0
    //   248: getfield 77	com/dianxinos/dxservice/stat/ao:f	Ljava/lang/String;
    //   251: aload 6
    //   253: iconst_0
    //   254: aaload
    //   255: invokevirtual 169	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   258: ifeq -161 -> 97
    //   261: aload_3
    //   262: astore 4
    //   264: aload_2
    //   265: astore 5
    //   267: aload 8
    //   269: aload 6
    //   271: iconst_1
    //   272: aaload
    //   273: invokestatic 419	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   276: invokestatic 273	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   279: invokevirtual 276	com/dianxinos/dxservice/stat/ap:a	(Ljava/lang/Integer;)V
    //   282: goto -185 -> 97
    //   285: astore 6
    //   287: aload_3
    //   288: astore 4
    //   290: aload_2
    //   291: astore 5
    //   293: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   296: ifeq +20 -> 316
    //   299: aload_3
    //   300: astore 4
    //   302: aload_2
    //   303: astore 5
    //   305: ldc -126
    //   307: ldc_w 411
    //   310: aload 6
    //   312: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   315: pop
    //   316: aload_2
    //   317: ifnull +7 -> 324
    //   320: aload_2
    //   321: invokevirtual 412	java/io/FileInputStream:close	()V
    //   324: aload_3
    //   325: ifnull -256 -> 69
    //   328: aload_3
    //   329: invokevirtual 413	java/io/BufferedReader:close	()V
    //   332: aload 8
    //   334: areturn
    //   335: astore_2
    //   336: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   339: ifeq -270 -> 69
    //   342: goto -114 -> 228
    //   345: aload_3
    //   346: astore 6
    //   348: aload_2
    //   349: astore 7
    //   351: aload_3
    //   352: astore 4
    //   354: aload_2
    //   355: astore 5
    //   357: getstatic 286	com/dianxinos/dxservice/a/c:d	Z
    //   360: ifeq +45 -> 405
    //   363: aload_3
    //   364: astore 4
    //   366: aload_2
    //   367: astore 5
    //   369: ldc -126
    //   371: new 61	java/lang/StringBuilder
    //   374: dup
    //   375: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   378: ldc_w 421
    //   381: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: aload 8
    //   386: invokevirtual 289	com/dianxinos/dxservice/stat/ap:toString	()Ljava/lang/String;
    //   389: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: invokestatic 292	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   398: pop
    //   399: aload_2
    //   400: astore 7
    //   402: aload_3
    //   403: astore 6
    //   405: aload 7
    //   407: ifnull +8 -> 415
    //   410: aload 7
    //   412: invokevirtual 412	java/io/FileInputStream:close	()V
    //   415: aload 6
    //   417: ifnull -348 -> 69
    //   420: aload 6
    //   422: invokevirtual 413	java/io/BufferedReader:close	()V
    //   425: aload 8
    //   427: areturn
    //   428: astore_2
    //   429: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   432: ifeq -363 -> 69
    //   435: goto -207 -> 228
    //   438: astore_3
    //   439: aconst_null
    //   440: astore 4
    //   442: aconst_null
    //   443: astore_2
    //   444: aload_2
    //   445: ifnull +7 -> 452
    //   448: aload_2
    //   449: invokevirtual 412	java/io/FileInputStream:close	()V
    //   452: aload 4
    //   454: ifnull +8 -> 462
    //   457: aload 4
    //   459: invokevirtual 413	java/io/BufferedReader:close	()V
    //   462: aload_3
    //   463: athrow
    //   464: astore_2
    //   465: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   468: ifeq -16 -> 452
    //   471: ldc -126
    //   473: ldc_w 423
    //   476: aload_2
    //   477: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   480: pop
    //   481: goto -29 -> 452
    //   484: astore_2
    //   485: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   488: ifeq -36 -> 452
    //   491: ldc -126
    //   493: ldc_w 425
    //   496: aload_2
    //   497: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   500: pop
    //   501: goto -49 -> 452
    //   504: astore_2
    //   505: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   508: ifeq -46 -> 462
    //   511: ldc -126
    //   513: ldc_w 415
    //   516: aload_2
    //   517: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   520: pop
    //   521: goto -59 -> 462
    //   524: astore_2
    //   525: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   528: ifeq -66 -> 462
    //   531: ldc -126
    //   533: ldc_w 427
    //   536: aload_2
    //   537: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   540: pop
    //   541: goto -79 -> 462
    //   544: astore_3
    //   545: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   548: ifeq -338 -> 210
    //   551: ldc -126
    //   553: ldc_w 423
    //   556: aload_3
    //   557: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   560: pop
    //   561: goto -351 -> 210
    //   564: astore_3
    //   565: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   568: ifeq -358 -> 210
    //   571: ldc -126
    //   573: ldc_w 425
    //   576: aload_3
    //   577: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   580: pop
    //   581: goto -371 -> 210
    //   584: astore_2
    //   585: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   588: ifeq -519 -> 69
    //   591: ldc -126
    //   593: ldc_w 427
    //   596: aload_2
    //   597: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   600: pop
    //   601: aload 8
    //   603: areturn
    //   604: astore_2
    //   605: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   608: ifeq -284 -> 324
    //   611: ldc -126
    //   613: ldc_w 423
    //   616: aload_2
    //   617: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   620: pop
    //   621: goto -297 -> 324
    //   624: astore_2
    //   625: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   628: ifeq -304 -> 324
    //   631: ldc -126
    //   633: ldc_w 425
    //   636: aload_2
    //   637: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   640: pop
    //   641: goto -317 -> 324
    //   644: astore_2
    //   645: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   648: ifeq -579 -> 69
    //   651: goto -60 -> 591
    //   654: astore_2
    //   655: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   658: ifeq -601 -> 57
    //   661: ldc -126
    //   663: ldc_w 423
    //   666: aload_2
    //   667: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   670: pop
    //   671: goto -614 -> 57
    //   674: astore_2
    //   675: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   678: ifeq -621 -> 57
    //   681: ldc -126
    //   683: ldc_w 425
    //   686: aload_2
    //   687: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   690: pop
    //   691: goto -634 -> 57
    //   694: astore_2
    //   695: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   698: ifeq -629 -> 69
    //   701: goto -473 -> 228
    //   704: astore_2
    //   705: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   708: ifeq -639 -> 69
    //   711: goto -120 -> 591
    //   714: astore_2
    //   715: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   718: ifeq -303 -> 415
    //   721: ldc -126
    //   723: ldc_w 423
    //   726: aload_2
    //   727: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   730: pop
    //   731: goto -316 -> 415
    //   734: astore_2
    //   735: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   738: ifeq -323 -> 415
    //   741: ldc -126
    //   743: ldc_w 425
    //   746: aload_2
    //   747: invokestatic 137	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   750: pop
    //   751: goto -336 -> 415
    //   754: astore_2
    //   755: getstatic 128	com/dianxinos/dxservice/a/c:e	Z
    //   758: ifeq -689 -> 69
    //   761: goto -170 -> 591
    //   764: astore_3
    //   765: aconst_null
    //   766: astore 4
    //   768: goto -324 -> 444
    //   771: astore_3
    //   772: aload 5
    //   774: astore_2
    //   775: goto -331 -> 444
    //   778: astore_3
    //   779: aload 4
    //   781: astore 5
    //   783: aload_2
    //   784: astore 4
    //   786: aload 5
    //   788: astore_2
    //   789: goto -345 -> 444
    //   792: astore 6
    //   794: aconst_null
    //   795: astore_3
    //   796: aconst_null
    //   797: astore_2
    //   798: goto -511 -> 287
    //   801: astore 6
    //   803: aconst_null
    //   804: astore_3
    //   805: goto -518 -> 287
    //   808: astore_3
    //   809: aconst_null
    //   810: astore_2
    //   811: goto -627 -> 184
    //   814: astore_3
    //   815: aconst_null
    //   816: astore 5
    //   818: aload_2
    //   819: astore 4
    //   821: aload 5
    //   823: astore_2
    //   824: goto -640 -> 184
    //   827: aconst_null
    //   828: astore 6
    //   830: aconst_null
    //   831: astore 7
    //   833: goto -428 -> 405
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	836	0	this	ao
    //   40	2	1	bool	boolean
    //   35	180	2	localObject1	Object
    //   221	100	2	localIOException1	java.io.IOException
    //   335	65	2	localIOException2	java.io.IOException
    //   428	1	2	localIOException3	java.io.IOException
    //   443	6	2	localObject2	Object
    //   464	13	2	localIOException4	java.io.IOException
    //   484	13	2	localException1	Exception
    //   504	13	2	localIOException5	java.io.IOException
    //   524	13	2	localException2	Exception
    //   584	13	2	localException3	Exception
    //   604	13	2	localIOException6	java.io.IOException
    //   624	13	2	localException4	Exception
    //   644	1	2	localException5	Exception
    //   654	13	2	localIOException7	java.io.IOException
    //   674	13	2	localException6	Exception
    //   694	1	2	localIOException8	java.io.IOException
    //   704	1	2	localException7	Exception
    //   714	13	2	localIOException9	java.io.IOException
    //   734	13	2	localException8	Exception
    //   754	1	2	localException9	Exception
    //   774	50	2	localObject3	Object
    //   96	307	3	localObject4	Object
    //   438	25	3	localObject5	Object
    //   544	13	3	localIOException10	java.io.IOException
    //   564	13	3	localException10	Exception
    //   764	1	3	localObject6	Object
    //   771	1	3	localObject7	Object
    //   778	1	3	localObject8	Object
    //   795	10	3	localObject9	Object
    //   808	1	3	localIOException11	java.io.IOException
    //   814	1	3	localIOException12	java.io.IOException
    //   1	819	4	localObject10	Object
    //   101	54	5	localObject11	Object
    //   174	8	5	localIOException13	java.io.IOException
    //   245	577	5	localObject12	Object
    //   107	163	6	localObject13	Object
    //   285	26	6	localException11	Exception
    //   346	75	6	localObject14	Object
    //   792	1	6	localException12	Exception
    //   801	1	6	localException13	Exception
    //   828	1	6	localObject15	Object
    //   349	483	7	localIOException14	java.io.IOException
    //   11	591	8	localap	ap
    // Exception table:
    //   from	to	target	type
    //   103	109	174	java/io/IOException
    //   120	130	174	java/io/IOException
    //   136	150	174	java/io/IOException
    //   156	171	174	java/io/IOException
    //   247	261	174	java/io/IOException
    //   267	282	174	java/io/IOException
    //   357	363	174	java/io/IOException
    //   369	399	174	java/io/IOException
    //   214	218	221	java/io/IOException
    //   103	109	285	java/lang/Exception
    //   120	130	285	java/lang/Exception
    //   136	150	285	java/lang/Exception
    //   156	171	285	java/lang/Exception
    //   247	261	285	java/lang/Exception
    //   267	282	285	java/lang/Exception
    //   357	363	285	java/lang/Exception
    //   369	399	285	java/lang/Exception
    //   328	332	335	java/io/IOException
    //   420	425	428	java/io/IOException
    //   13	41	438	finally
    //   72	81	438	finally
    //   448	452	464	java/io/IOException
    //   448	452	484	java/lang/Exception
    //   457	462	504	java/io/IOException
    //   457	462	524	java/lang/Exception
    //   205	210	544	java/io/IOException
    //   205	210	564	java/lang/Exception
    //   214	218	584	java/lang/Exception
    //   320	324	604	java/io/IOException
    //   320	324	624	java/lang/Exception
    //   328	332	644	java/lang/Exception
    //   49	57	654	java/io/IOException
    //   49	57	674	java/lang/Exception
    //   61	69	694	java/io/IOException
    //   61	69	704	java/lang/Exception
    //   410	415	714	java/io/IOException
    //   410	415	734	java/lang/Exception
    //   420	425	754	java/lang/Exception
    //   81	97	764	finally
    //   103	109	771	finally
    //   120	130	771	finally
    //   136	150	771	finally
    //   156	171	771	finally
    //   247	261	771	finally
    //   267	282	771	finally
    //   293	299	771	finally
    //   305	316	771	finally
    //   357	363	771	finally
    //   369	399	771	finally
    //   184	200	778	finally
    //   13	41	792	java/lang/Exception
    //   72	81	792	java/lang/Exception
    //   81	97	801	java/lang/Exception
    //   13	41	808	java/io/IOException
    //   72	81	808	java/io/IOException
    //   81	97	814	java/io/IOException
  }
  
  public boolean a()
  {
    boolean bool = false;
    try
    {
      Long localLong = Long.valueOf(Settings.System.getLong(c, g, 0L));
      if (c.d) {
        Log.i("stat.UserReturnStatService", "Last reportTime:" + localLong + " and now:" + System.currentTimeMillis());
      }
      long l1 = System.currentTimeMillis();
      long l2 = localLong.longValue();
      long l3 = a.longValue();
      if (l1 - l2 > l3) {
        bool = true;
      }
    }
    catch (Exception localException)
    {
      while (!c.e) {}
      Log.e("stat.UserReturnStatService", "Failed to get user return reportTime");
    }
    return bool;
    return false;
  }
  
  public void run()
  {
    if (a())
    {
      i = c();
      h = d();
      j = e();
      k = f();
      b();
      a(i);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */