package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.a;
import com.baidu.mobstat.util.e;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.jar.Attributes;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import org.json.JSONException;
import org.json.JSONObject;

class ak
{
  public static DexClassLoader a = null;
  
  private static DexClassLoader a(Context paramContext)
  {
    Object localObject1 = null;
    for (;;)
    {
      Object localObject2;
      try
      {
        localObject2 = new StringBuilder().append("AdUtil.getRemoteClassLoader  ");
        boolean bool;
        if (a == null)
        {
          bool = true;
          e.a(bool + " thread: " + Thread.currentThread());
          if (a != null)
          {
            paramContext = a;
            return paramContext;
          }
        }
        else
        {
          bool = false;
          continue;
        }
        String str = paramContext.getFilesDir().getAbsolutePath() + "/" + "remote.jar";
        localObject2 = new File(str);
        if (!b(paramContext, str))
        {
          e.a("sdkstat", "remote jar md5 is not right, need delete");
          paramContext = (Context)localObject1;
          if (!((File)localObject2).exists()) {
            continue;
          }
          ((File)localObject2).delete();
          paramContext = (Context)localObject1;
          continue;
        }
        b(paramContext);
      }
      finally {}
      try
      {
        a = new DexClassLoader(((File)localObject2).getAbsolutePath(), paramContext.getFilesDir().getAbsolutePath(), null, ClassLoader.getSystemClassLoader());
        paramContext = a;
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          e.a(paramContext);
        }
      }
    }
  }
  
  public static Class<?> a(Context paramContext, String paramString)
  {
    return a(paramContext).loadClass(paramString);
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = new JarFile(paramString).getManifest().getMainAttributes().getValue("Implementation-Version");
      return paramString;
    }
    catch (Exception paramString)
    {
      e.a("baidu remote sdk is not ready");
    }
    return null;
  }
  
  private static void a(Context paramContext, String paramString, int paramInt)
  {
    Object localObject = r.a().getString(paramContext, "remotemd5s", null);
    if (localObject == null) {
      return;
    }
    try
    {
      localObject = new JSONObject((String)localObject);
      ((JSONObject)localObject).put(paramInt + "", paramString);
      ((JSONObject)localObject).toString();
      r.a().putString(paramContext, "remotemd5s", ((JSONObject)localObject).toString());
      return;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
  {
    a(paramContext, paramString3, paramInt1);
  }
  
  /* Error */
  private static void b(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 183	com/baidu/mobstat/ak:c	(Landroid/content/Context;)Z
    //   7: istore_1
    //   8: iload_1
    //   9: ifeq +7 -> 16
    //   12: ldc 2
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: invokestatic 186	com/baidu/mobstat/ak:d	(Landroid/content/Context;)Z
    //   20: ifeq -8 -> 12
    //   23: aload_0
    //   24: iconst_1
    //   25: invokestatic 179	com/baidu/mobstat/ak:b	(Landroid/content/Context;Z)V
    //   28: new 188	com/baidu/mobstat/al
    //   31: dup
    //   32: aload_0
    //   33: new 56	java/io/File
    //   36: dup
    //   37: new 16	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 19	java/lang/StringBuilder:<init>	()V
    //   44: aload_0
    //   45: invokevirtual 54	android/content/Context:getFilesDir	()Ljava/io/File;
    //   48: invokevirtual 59	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   51: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: ldc 61
    //   56: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: ldc 63
    //   61: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokespecial 66	java/io/File:<init>	(Ljava/lang/String;)V
    //   70: invokespecial 190	com/baidu/mobstat/al:<init>	(Landroid/content/Context;Ljava/io/File;)V
    //   73: invokevirtual 193	com/baidu/mobstat/al:start	()V
    //   76: goto -64 -> 12
    //   79: astore_0
    //   80: ldc 2
    //   82: monitorexit
    //   83: aload_0
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramContext	Context
    //   7	2	1	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	8	79	finally
    //   16	76	79	finally
  }
  
  private static void b(Context paramContext, long paramLong)
  {
    r.a().putLong(paramContext, "remoteUpdateTime", paramLong);
  }
  
  /* Error */
  private static void b(Context paramContext, File paramFile)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc -55
    //   5: invokestatic 48	com/baidu/mobstat/util/e:a	(Ljava/lang/String;)I
    //   8: pop
    //   9: aload_1
    //   10: invokevirtual 81	java/io/File:exists	()Z
    //   13: ifne +266 -> 279
    //   16: dconst_1
    //   17: dstore_2
    //   18: new 203	java/util/ArrayList
    //   21: dup
    //   22: invokespecial 204	java/util/ArrayList:<init>	()V
    //   25: astore 5
    //   27: aload 5
    //   29: new 206	org/apache/http/message/BasicNameValuePair
    //   32: dup
    //   33: ldc -48
    //   35: new 16	java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial 19	java/lang/StringBuilder:<init>	()V
    //   42: ldc -95
    //   44: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: dload_2
    //   48: invokevirtual 211	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   51: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokespecial 214	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   57: invokeinterface 220 2 0
    //   62: pop
    //   63: aload 5
    //   65: new 206	org/apache/http/message/BasicNameValuePair
    //   68: dup
    //   69: ldc -34
    //   71: getstatic 228	android/os/Build:MODEL	Ljava/lang/String;
    //   74: invokespecial 214	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   77: invokeinterface 220 2 0
    //   82: pop
    //   83: aload 5
    //   85: new 206	org/apache/http/message/BasicNameValuePair
    //   88: dup
    //   89: ldc -26
    //   91: ldc -24
    //   93: invokespecial 214	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   96: invokeinterface 220 2 0
    //   101: pop
    //   102: aload 5
    //   104: new 206	org/apache/http/message/BasicNameValuePair
    //   107: dup
    //   108: ldc -22
    //   110: getstatic 239	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   113: invokespecial 214	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   116: invokeinterface 220 2 0
    //   121: pop
    //   122: aload 5
    //   124: new 206	org/apache/http/message/BasicNameValuePair
    //   127: dup
    //   128: ldc -15
    //   130: ldc -13
    //   132: invokespecial 214	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   135: invokeinterface 220 2 0
    //   140: pop
    //   141: aload 5
    //   143: ldc -11
    //   145: invokestatic 251	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   148: astore 5
    //   150: new 16	java/lang/StringBuilder
    //   153: dup
    //   154: invokespecial 19	java/lang/StringBuilder:<init>	()V
    //   157: ldc -3
    //   159: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload 5
    //   164: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: astore 5
    //   172: ldc -1
    //   174: aload 5
    //   176: invokestatic 77	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   179: pop
    //   180: aload_0
    //   181: aload 5
    //   183: invokestatic 260	com/baidu/mobstat/util/c:d	(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   186: astore 5
    //   188: aload 5
    //   190: invokevirtual 265	java/net/HttpURLConnection:connect	()V
    //   193: aload 5
    //   195: ldc_w 267
    //   198: invokevirtual 270	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   201: astore 6
    //   203: aload 5
    //   205: ldc_w 272
    //   208: invokevirtual 270	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   211: astore 7
    //   213: aload 5
    //   215: ldc_w 274
    //   218: invokevirtual 270	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   221: astore 8
    //   223: aload 5
    //   225: ldc_w 276
    //   228: iconst_0
    //   229: invokevirtual 280	java/net/HttpURLConnection:getHeaderFieldInt	(Ljava/lang/String;I)I
    //   232: istore 4
    //   234: aload_0
    //   235: aload 6
    //   237: aload 7
    //   239: aload 8
    //   241: iload 4
    //   243: aload 5
    //   245: ldc_w 282
    //   248: iconst_0
    //   249: invokevirtual 280	java/net/HttpURLConnection:getHeaderFieldInt	(Ljava/lang/String;I)I
    //   252: invokestatic 284	com/baidu/mobstat/ak:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    //   255: aload 7
    //   257: ldc_w 286
    //   260: invokevirtual 291	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   263: ifne +55 -> 318
    //   266: ldc 72
    //   268: ldc_w 293
    //   271: invokestatic 77	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   274: pop
    //   275: ldc 2
    //   277: monitorexit
    //   278: return
    //   279: new 113	java/util/jar/JarFile
    //   282: dup
    //   283: aload_1
    //   284: invokespecial 296	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   287: invokevirtual 118	java/util/jar/JarFile:getManifest	()Ljava/util/jar/Manifest;
    //   290: invokevirtual 124	java/util/jar/Manifest:getMainAttributes	()Ljava/util/jar/Attributes;
    //   293: ldc 126
    //   295: invokevirtual 131	java/util/jar/Attributes:getValue	(Ljava/lang/String;)Ljava/lang/String;
    //   298: invokestatic 302	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   301: dstore_2
    //   302: goto -284 -> 18
    //   305: astore 5
    //   307: ldc -123
    //   309: invokestatic 48	com/baidu/mobstat/util/e:a	(Ljava/lang/String;)I
    //   312: pop
    //   313: dconst_0
    //   314: dstore_2
    //   315: goto -297 -> 18
    //   318: iload 4
    //   320: i2d
    //   321: dload_2
    //   322: dcmpl
    //   323: ifle -48 -> 275
    //   326: ldc 72
    //   328: ldc_w 304
    //   331: invokestatic 77	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   334: pop
    //   335: iconst_0
    //   336: aload_0
    //   337: aload_1
    //   338: invokevirtual 307	java/io/File:getName	()Ljava/lang/String;
    //   341: aload 5
    //   343: invokestatic 310	com/baidu/mobstat/util/c:a	(ZLandroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;)Z
    //   346: pop
    //   347: goto -72 -> 275
    //   350: astore_0
    //   351: ldc 2
    //   353: monitorexit
    //   354: aload_0
    //   355: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	356	0	paramContext	Context
    //   0	356	1	paramFile	File
    //   17	305	2	d	double
    //   232	87	4	i	int
    //   25	219	5	localObject	Object
    //   305	37	5	localException	Exception
    //   201	35	6	str1	String
    //   211	45	7	str2	String
    //   221	19	8	str3	String
    // Exception table:
    //   from	to	target	type
    //   279	302	305	java/lang/Exception
    //   3	16	350	finally
    //   18	275	350	finally
    //   279	302	350	finally
    //   307	313	350	finally
    //   326	347	350	finally
  }
  
  private static void b(Context paramContext, boolean paramBoolean)
  {
    r.a().putBoolean(paramContext, "remoteUpdateStarted", paramBoolean);
  }
  
  private static boolean b(Context paramContext, String paramString)
  {
    String str = a.a(paramString);
    if (str == null) {
      e.a("sdkstat", "remote jar file md5 value fail");
    }
    do
    {
      do
      {
        return false;
        paramString = a(paramString);
      } while (paramString == null);
      paramContext = c(paramContext, paramString);
      if (paramContext == null)
      {
        e.a("sdkstat", "remote jar file md5 value lost");
        return false;
      }
    } while (!str.equals(paramContext));
    return true;
  }
  
  private static String c(Context paramContext, String paramString)
  {
    Object localObject = null;
    String str = r.a().getString(paramContext, "remotemd5s", null);
    paramContext = (Context)localObject;
    if (str != null) {}
    try
    {
      paramContext = new JSONObject(str).getString(paramString);
      return paramContext;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private static boolean c(Context paramContext)
  {
    return r.a().getSharedBoolean(paramContext, "remoteUpdateStarted", false);
  }
  
  private static boolean d(Context paramContext)
  {
    long l = r.a().getLong(paramContext, "remoteUpdateTime", 0L);
    return System.currentTimeMillis() - l > 30000L;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */