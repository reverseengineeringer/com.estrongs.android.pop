package com.estrongs.android.i;

import com.dianxinos.DXStatService.stat.TokenManager;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

public class a
{
  static final String a = com.estrongs.android.pop.a.h + "/esf_setting";
  public static String b = "tm_facebook_update_time";
  public static String c = "ad_ignore_time";
  static JSONObject d = null;
  
  /* Error */
  public static int a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 44	com/estrongs/android/i/a:d	Lorg/json/JSONObject;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnonnull +10 -> 18
    //   11: iload_1
    //   12: istore_2
    //   13: ldc 2
    //   15: monitorexit
    //   16: iload_2
    //   17: ireturn
    //   18: aload_0
    //   19: invokestatic 51	com/estrongs/android/i/a:b	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   22: astore_3
    //   23: iload_1
    //   24: istore_2
    //   25: aload_3
    //   26: ifnull -13 -> 13
    //   29: aload_3
    //   30: aload_0
    //   31: iload_1
    //   32: invokevirtual 56	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   35: istore_2
    //   36: goto -23 -> 13
    //   39: astore_0
    //   40: iload_1
    //   41: istore_2
    //   42: goto -29 -> 13
    //   45: astore_0
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload_0
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	paramString	String
    //   0	51	1	paramInt	int
    //   12	30	2	i	int
    //   6	24	3	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   29	36	39	java/lang/Exception
    //   3	7	45	finally
    //   18	23	45	finally
    //   29	36	45	finally
  }
  
  /* Error */
  public static String a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 44	com/estrongs/android/i/a:d	Lorg/json/JSONObject;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +10 -> 18
    //   11: aload_1
    //   12: astore_2
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_2
    //   17: areturn
    //   18: aload_0
    //   19: invokestatic 51	com/estrongs/android/i/a:b	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   22: astore_3
    //   23: aload_1
    //   24: astore_2
    //   25: aload_3
    //   26: ifnull -13 -> 13
    //   29: aload_3
    //   30: aload_0
    //   31: aload_1
    //   32: invokevirtual 60	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   35: astore_2
    //   36: goto -23 -> 13
    //   39: astore_0
    //   40: ldc 2
    //   42: monitorexit
    //   43: aload_0
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	paramString1	String
    //   0	45	1	paramString2	String
    //   6	30	2	localObject	Object
    //   22	8	3	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   3	7	39	finally
    //   18	23	39	finally
    //   29	36	39	finally
  }
  
  public static void a()
  {
    try
    {
      String str = ad.a(FexApplication.a()).bc();
      if (str != null) {
        d = new JSONObject(str);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected static void a(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      if (localJSONObject.getInt("errno") == 0)
      {
        ad.a(FexApplication.a()).V(paramString);
        d = localJSONObject;
      }
      for (;;)
      {
        return;
        paramString = localJSONObject.getString("errMsg");
        l.b("EEE", "failed to get setting data from server:" + paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
    finally {}
  }
  
  /* Error */
  public static JSONObject b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc 2
    //   5: monitorenter
    //   6: getstatic 44	com/estrongs/android/i/a:d	Lorg/json/JSONObject;
    //   9: astore_3
    //   10: aload_3
    //   11: ifnonnull +11 -> 22
    //   14: aload 4
    //   16: astore_3
    //   17: ldc 2
    //   19: monitorexit
    //   20: aload_3
    //   21: areturn
    //   22: getstatic 44	com/estrongs/android/i/a:d	Lorg/json/JSONObject;
    //   25: ldc 105
    //   27: invokevirtual 108	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   30: ldc 110
    //   32: invokevirtual 114	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   35: astore 5
    //   37: aload 4
    //   39: astore_3
    //   40: aload 5
    //   42: ifnull -25 -> 17
    //   45: aload 5
    //   47: invokevirtual 120	org/json/JSONArray:length	()I
    //   50: istore_2
    //   51: iconst_0
    //   52: istore_1
    //   53: aload 4
    //   55: astore_3
    //   56: iload_1
    //   57: iload_2
    //   58: if_icmpge -41 -> 17
    //   61: aload 5
    //   63: iload_1
    //   64: invokevirtual 123	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   67: astore_3
    //   68: aload_3
    //   69: aload_0
    //   70: invokevirtual 127	org/json/JSONObject:opt	(Ljava/lang/String;)Ljava/lang/Object;
    //   73: astore 6
    //   75: aload 6
    //   77: ifnull +6 -> 83
    //   80: goto -63 -> 17
    //   83: iload_1
    //   84: iconst_1
    //   85: iadd
    //   86: istore_1
    //   87: goto -34 -> 53
    //   90: astore_0
    //   91: aload_0
    //   92: invokevirtual 79	java/lang/Exception:printStackTrace	()V
    //   95: aload 4
    //   97: astore_3
    //   98: goto -81 -> 17
    //   101: astore_0
    //   102: ldc 2
    //   104: monitorexit
    //   105: aload_0
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	paramString	String
    //   52	35	1	i	int
    //   50	9	2	j	int
    //   9	89	3	localObject1	Object
    //   1	95	4	localObject2	Object
    //   35	27	5	localJSONArray	JSONArray
    //   73	3	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   22	37	90	java/lang/Exception
    //   45	51	90	java/lang/Exception
    //   61	75	90	java/lang/Exception
    //   6	10	101	finally
    //   22	37	101	finally
    //   45	51	101	finally
    //   61	75	101	finally
    //   91	95	101	finally
  }
  
  public static void b()
  {
    long l = ad.a(FexApplication.a()).bb();
    if (System.currentTimeMillis() - l < 7200000L) {
      return;
    }
    c("http://www.estrongs.com/console/service/sample/index.php", "http://conf.international.baidu.com/index.php/Sample/getConf");
  }
  
  /* Error */
  private static String c()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 44	com/estrongs/android/i/a:d	Lorg/json/JSONObject;
    //   6: ifnull +28 -> 34
    //   9: getstatic 44	com/estrongs/android/i/a:d	Lorg/json/JSONObject;
    //   12: ldc 105
    //   14: invokevirtual 147	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   17: astore_0
    //   18: aload_0
    //   19: ifnull +15 -> 34
    //   22: aload_0
    //   23: ldc -107
    //   25: invokevirtual 151	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   28: astore_0
    //   29: ldc 2
    //   31: monitorexit
    //   32: aload_0
    //   33: areturn
    //   34: aconst_null
    //   35: astore_0
    //   36: goto -7 -> 29
    //   39: astore_0
    //   40: ldc 2
    //   42: monitorexit
    //   43: aload_0
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   17	19	0	localObject1	Object
    //   39	5	0	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	18	39	finally
    //   22	29	39	finally
  }
  
  public static ArrayList<String> c(String paramString)
  {
    try
    {
      if (d != null)
      {
        Object localObject = b(paramString);
        if (localObject != null) {
          try
          {
            ArrayList localArrayList = new ArrayList();
            localObject = ((JSONObject)localObject).optJSONArray(paramString);
            int i = 0;
            for (;;)
            {
              paramString = localArrayList;
              if (i >= ((JSONArray)localObject).length()) {
                break;
              }
              localArrayList.add(((JSONArray)localObject).getString(i));
              i += 1;
            }
            paramString = null;
          }
          catch (Exception paramString)
          {
            paramString.printStackTrace();
          }
        }
      }
      return paramString;
    }
    finally {}
  }
  
  private static void c(String paramString1, String paramString2)
  {
    String str1 = com.estrongs.android.pop.a.h + "/setting.download";
    String str2 = str1 + ".tmp";
    paramString1 = new aa(d(paramString1));
    paramString1.a(new b(paramString2, str2, str1));
    paramString1.a(paramString1);
    paramString1.a(str1 + ".tmp");
    paramString1.c();
  }
  
  private static String d()
  {
    try
    {
      String str = TokenManager.getToken(FexApplication.a());
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static String d(String paramString)
  {
    String str1 = String.format("%s?source=ESF&country=%s&unique_id=%s", new Object[] { paramString, Locale.getDefault().getCountry().toLowerCase(), d() });
    String str2 = c();
    paramString = str1;
    if (str2 != null) {
      paramString = str1 + "&check_modify=1&modify_key=" + str2;
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */