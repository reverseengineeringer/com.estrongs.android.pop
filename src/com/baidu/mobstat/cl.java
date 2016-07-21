package com.baidu.mobstat;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;

public final class cl
{
  private static final Proxy a = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.172", 80));
  private static final Proxy b = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80));
  
  public static File a(String paramString)
  {
    if (!"mounted".equals(a())) {
      return null;
    }
    return new File(Environment.getExternalStorageDirectory(), paramString);
  }
  
  public static String a()
  {
    try
    {
      String str = Environment.getExternalStorageState();
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
  
  /* Error */
  public static String a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual 70	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   7: astore_0
    //   8: aload_0
    //   9: invokestatic 73	com/baidu/mobstat/cl:a	(Ljava/io/InputStream;)[B
    //   12: astore_1
    //   13: aload_1
    //   14: ifnull +20 -> 34
    //   17: new 43	java/lang/String
    //   20: dup
    //   21: aload_1
    //   22: ldc 75
    //   24: invokespecial 78	java/lang/String:<init>	([BLjava/lang/String;)V
    //   27: astore_1
    //   28: aload_0
    //   29: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   32: aload_1
    //   33: areturn
    //   34: aload_0
    //   35: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   38: ldc 85
    //   40: areturn
    //   41: astore_0
    //   42: aload_2
    //   43: astore_0
    //   44: aload_0
    //   45: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   48: goto -10 -> 38
    //   51: astore_0
    //   52: aconst_null
    //   53: astore_2
    //   54: aload_0
    //   55: astore_1
    //   56: aload_2
    //   57: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   60: aload_1
    //   61: athrow
    //   62: astore_1
    //   63: aload_0
    //   64: astore_2
    //   65: goto -9 -> 56
    //   68: astore_1
    //   69: goto -25 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	paramContext	Context
    //   0	72	1	paramString	String
    //   1	64	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	8	41	java/lang/Exception
    //   2	8	51	finally
    //   8	13	62	finally
    //   17	28	62	finally
    //   8	13	68	java/lang/Exception
    //   17	28	68	java/lang/Exception
  }
  
  @SuppressLint({"DefaultLocale"})
  public static HttpURLConnection a(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    URL localURL = new URL(paramString);
    paramString = (ConnectivityManager)paramContext.getSystemService("connectivity");
    paramContext = paramString.getNetworkInfo(0);
    paramString = paramString.getNetworkInfo(1);
    if ((paramString != null) && (paramString.isAvailable()))
    {
      cr.a("WIFI is available");
      paramContext = (HttpURLConnection)localURL.openConnection();
    }
    for (;;)
    {
      paramString = paramContext;
      if (paramContext == null) {
        paramString = (HttpURLConnection)localURL.openConnection();
      }
      paramString.setConnectTimeout(paramInt1);
      paramString.setReadTimeout(paramInt2);
      return paramString;
      if ((paramContext != null) && (paramContext.isAvailable()))
      {
        paramContext = paramContext.getExtraInfo();
        if (paramContext != null) {}
        for (paramContext = paramContext.toLowerCase();; paramContext = "")
        {
          cr.a(paramContext);
          if ((!paramContext.startsWith("cmwap")) && (!paramContext.startsWith("uniwap")) && (!paramContext.startsWith("3gwap"))) {
            break label161;
          }
          paramContext = (HttpURLConnection)localURL.openConnection(a);
          break;
        }
        label161:
        if (paramContext.startsWith("ctwap"))
        {
          paramContext = (HttpURLConnection)localURL.openConnection(b);
          continue;
        }
      }
      paramContext = null;
    }
  }
  
  /* Error */
  public static void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: aconst_null
    //   6: astore 5
    //   8: iload_3
    //   9: ifeq +41 -> 50
    //   12: ldc -101
    //   14: istore 4
    //   16: aload_0
    //   17: aload_1
    //   18: iload 4
    //   20: invokevirtual 159	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   23: astore_0
    //   24: aload_0
    //   25: astore 5
    //   27: new 161	java/io/ByteArrayInputStream
    //   30: dup
    //   31: aload_2
    //   32: ldc 75
    //   34: invokevirtual 165	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   37: invokespecial 168	java/io/ByteArrayInputStream:<init>	([B)V
    //   40: aload_0
    //   41: invokestatic 171	com/baidu/mobstat/cq:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    //   44: pop
    //   45: aload_0
    //   46: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   49: return
    //   50: iconst_0
    //   51: istore 4
    //   53: goto -37 -> 16
    //   56: astore_0
    //   57: aload 5
    //   59: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   62: return
    //   63: astore_0
    //   64: aconst_null
    //   65: astore_2
    //   66: aload_0
    //   67: astore_1
    //   68: aload_2
    //   69: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   72: aload_1
    //   73: athrow
    //   74: astore_1
    //   75: aload_0
    //   76: astore_2
    //   77: goto -9 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	paramContext	Context
    //   0	80	1	paramString1	String
    //   0	80	2	paramString2	String
    //   0	80	3	paramBoolean	boolean
    //   14	38	4	i	int
    //   6	52	5	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   16	24	56	java/lang/Exception
    //   27	45	56	java/lang/Exception
    //   16	24	63	finally
    //   27	45	74	finally
  }
  
  /* Error */
  public static void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: invokestatic 174	com/baidu/mobstat/cl:a	(Ljava/lang/String;)Ljava/io/File;
    //   9: astore_0
    //   10: aload_0
    //   11: ifnull +86 -> 97
    //   14: aload_0
    //   15: invokevirtual 177	java/io/File:exists	()Z
    //   18: ifne +20 -> 38
    //   21: aload_0
    //   22: invokevirtual 180	java/io/File:getParentFile	()Ljava/io/File;
    //   25: astore 5
    //   27: aload 5
    //   29: ifnull +9 -> 38
    //   32: aload 5
    //   34: invokevirtual 183	java/io/File:mkdirs	()Z
    //   37: pop
    //   38: new 185	java/io/FileOutputStream
    //   41: dup
    //   42: aload_0
    //   43: iload_2
    //   44: invokespecial 188	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   47: astore_0
    //   48: new 161	java/io/ByteArrayInputStream
    //   51: dup
    //   52: aload_1
    //   53: ldc 75
    //   55: invokevirtual 165	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   58: invokespecial 168	java/io/ByteArrayInputStream:<init>	([B)V
    //   61: aload_0
    //   62: invokestatic 171	com/baidu/mobstat/cq:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    //   65: pop
    //   66: aload_0
    //   67: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   70: return
    //   71: astore_0
    //   72: aload_3
    //   73: astore_0
    //   74: aload_0
    //   75: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   78: return
    //   79: astore_1
    //   80: aload 4
    //   82: astore_0
    //   83: aload_0
    //   84: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   87: aload_1
    //   88: athrow
    //   89: astore_1
    //   90: goto -7 -> 83
    //   93: astore_1
    //   94: goto -20 -> 74
    //   97: aconst_null
    //   98: astore_0
    //   99: goto -33 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	paramString1	String
    //   0	102	1	paramString2	String
    //   0	102	2	paramBoolean	boolean
    //   4	69	3	localObject1	Object
    //   1	80	4	localObject2	Object
    //   25	8	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   5	10	71	java/lang/Exception
    //   14	27	71	java/lang/Exception
    //   32	38	71	java/lang/Exception
    //   38	48	71	java/lang/Exception
    //   5	10	79	finally
    //   14	27	79	finally
    //   32	38	79	finally
    //   38	48	79	finally
    //   48	66	89	finally
    //   48	66	93	java/lang/Exception
  }
  
  private static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if (cq.a(paramInputStream, localByteArrayOutputStream)) {
      return localByteArrayOutputStream.toByteArray();
    }
    return null;
  }
  
  /* Error */
  public static String b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 174	com/baidu/mobstat/cl:a	(Ljava/lang/String;)Ljava/io/File;
    //   4: astore_0
    //   5: aload_0
    //   6: ifnull +51 -> 57
    //   9: aload_0
    //   10: invokevirtual 177	java/io/File:exists	()Z
    //   13: ifeq +44 -> 57
    //   16: aconst_null
    //   17: astore_1
    //   18: new 199	java/io/FileInputStream
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 202	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   26: astore_0
    //   27: aload_0
    //   28: invokestatic 73	com/baidu/mobstat/cl:a	(Ljava/io/InputStream;)[B
    //   31: astore_1
    //   32: aload_1
    //   33: ifnull +20 -> 53
    //   36: new 43	java/lang/String
    //   39: dup
    //   40: aload_1
    //   41: ldc 75
    //   43: invokespecial 78	java/lang/String:<init>	([BLjava/lang/String;)V
    //   46: astore_1
    //   47: aload_0
    //   48: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   51: aload_1
    //   52: areturn
    //   53: aload_0
    //   54: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   57: ldc 85
    //   59: areturn
    //   60: astore_0
    //   61: aload_1
    //   62: astore_0
    //   63: aload_0
    //   64: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   67: goto -10 -> 57
    //   70: astore_0
    //   71: aconst_null
    //   72: astore_2
    //   73: aload_0
    //   74: astore_1
    //   75: aload_2
    //   76: invokestatic 83	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   79: aload_1
    //   80: athrow
    //   81: astore_1
    //   82: aload_0
    //   83: astore_2
    //   84: goto -9 -> 75
    //   87: astore_1
    //   88: goto -25 -> 63
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	paramString	String
    //   17	63	1	localObject1	Object
    //   81	1	1	localObject2	Object
    //   87	1	1	localException	Exception
    //   72	12	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   18	27	60	java/lang/Exception
    //   18	27	70	finally
    //   27	32	81	finally
    //   36	47	81	finally
    //   27	32	87	java/lang/Exception
    //   36	47	87	java/lang/Exception
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    return paramContext.deleteFile(paramString);
  }
  
  public static boolean c(Context paramContext, String paramString)
  {
    return paramContext.getFileStreamPath(paramString).exists();
  }
  
  public static boolean c(String paramString)
  {
    paramString = a(paramString);
    if ((paramString != null) && (paramString.isFile())) {
      return paramString.delete();
    }
    return false;
  }
  
  public static HttpURLConnection d(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, 50000, 50000);
  }
  
  public static boolean e(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      int i = paramContext.checkCallingOrSelfPermission(paramString);
      if (i != -1) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramContext)
    {
      cr.b("Check permission failed.");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */