package com.baidu.mobstat.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class c
{
  private static final Proxy a = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.172", 80));
  private static final Proxy b = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80));
  
  public static String a(Context paramContext, String paramString)
  {
    e.a("MoUtil.read", paramString);
    try
    {
      paramContext = b(paramContext, paramString);
      if (paramContext != null)
      {
        paramContext = new String(paramContext, "utf-8");
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      Log.w("sdkstat", "MoUtil.read", paramContext);
    }
    return "";
  }
  
  public static String a(boolean paramBoolean, Context paramContext, String paramString)
  {
    if (paramBoolean) {
      return b(paramString);
    }
    return a(paramContext, paramString);
  }
  
  public static HttpURLConnection a(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    paramString = new URL(paramString);
    Object localObject = (ConnectivityManager)paramContext.getSystemService("connectivity");
    paramContext = ((ConnectivityManager)localObject).getNetworkInfo(0);
    localObject = ((ConnectivityManager)localObject).getNetworkInfo(1);
    if ((localObject != null) && (((NetworkInfo)localObject).isAvailable()))
    {
      e.a("", "WIFI is available");
      paramContext = (HttpURLConnection)paramString.openConnection();
    }
    for (;;)
    {
      paramContext.setConnectTimeout(paramInt1);
      paramContext.setReadTimeout(paramInt2);
      return paramContext;
      if ((paramContext != null) && (paramContext.isAvailable()))
      {
        paramContext = paramContext.getExtraInfo();
        if (paramContext != null) {}
        for (paramContext = paramContext.toLowerCase();; paramContext = "")
        {
          e.a("current APN", paramContext);
          if ((!paramContext.startsWith("cmwap")) && (!paramContext.startsWith("uniwap")) && (!paramContext.startsWith("3gwap"))) {
            break label155;
          }
          paramContext = (HttpURLConnection)paramString.openConnection(a);
          break;
        }
        label155:
        if (paramContext.startsWith("ctwap")) {
          paramContext = (HttpURLConnection)paramString.openConnection(b);
        } else {
          paramContext = (HttpURLConnection)paramString.openConnection();
        }
      }
      else
      {
        e.a("", "getConnection:not wifi and mobile");
        paramContext = (HttpURLConnection)paramString.openConnection();
      }
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject = null;
    Context localContext = null;
    int i;
    if (paramBoolean) {
      i = 32768;
    }
    for (;;)
    {
      try
      {
        paramContext = paramContext.openFileOutput(paramString1, i);
        if (paramContext != null)
        {
          localContext = paramContext;
          localObject = paramContext;
          paramContext.write(paramString2.getBytes("utf-8"));
        }
      }
      catch (Exception paramContext)
      {
        localObject = localContext;
        Log.w("sdkstat", "MoUtil.write", paramContext);
        if (localContext == null) {
          continue;
        }
        try
        {
          localContext.close();
          return;
        }
        catch (Exception paramContext)
        {
          Log.w("sdkstat", "MoUtil.write", paramContext);
          return;
        }
      }
      finally
      {
        if (localObject == null) {
          break label169;
        }
      }
      try
      {
        paramContext.close();
        return;
      }
      catch (Exception paramContext)
      {
        Log.w("sdkstat", "MoUtil.write", paramContext);
        return;
      }
      i = 0;
      continue;
      localContext = paramContext;
      localObject = paramContext;
      paramString1 = new StringBuilder().append("MoUtil.write fout is null:");
      paramBoolean = bool;
      if (paramContext == null) {
        paramBoolean = true;
      }
      localContext = paramContext;
      localObject = paramContext;
      Log.w("sdkstat", paramBoolean);
    }
    try
    {
      ((FileOutputStream)localObject).close();
      label169:
      throw paramContext;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        Log.w("sdkstat", "MoUtil.write", paramString1);
      }
    }
  }
  
  /* Error */
  public static void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc -72
    //   2: invokestatic 189	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   5: invokevirtual 193	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   8: ifne +4 -> 12
    //   11: return
    //   12: aconst_null
    //   13: astore 5
    //   15: aconst_null
    //   16: astore 6
    //   18: aconst_null
    //   19: astore 4
    //   21: aload 6
    //   23: astore_3
    //   24: invokestatic 197	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   27: astore 7
    //   29: aload 6
    //   31: astore_3
    //   32: new 199	java/io/File
    //   35: dup
    //   36: new 159	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   43: aload 7
    //   45: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   48: getstatic 206	java/io/File:separator	Ljava/lang/String;
    //   51: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: aload_0
    //   55: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokespecial 207	java/io/File:<init>	(Ljava/lang/String;)V
    //   64: astore_0
    //   65: aload 6
    //   67: astore_3
    //   68: aload_0
    //   69: invokevirtual 210	java/io/File:exists	()Z
    //   72: ifne +22 -> 94
    //   75: aload 6
    //   77: astore_3
    //   78: aload_0
    //   79: invokevirtual 213	java/io/File:getParentFile	()Ljava/io/File;
    //   82: invokevirtual 216	java/io/File:mkdirs	()Z
    //   85: pop
    //   86: aload 6
    //   88: astore_3
    //   89: aload_0
    //   90: invokevirtual 219	java/io/File:createNewFile	()Z
    //   93: pop
    //   94: aload 6
    //   96: astore_3
    //   97: new 150	java/io/FileOutputStream
    //   100: dup
    //   101: aload_0
    //   102: iload_2
    //   103: invokespecial 222	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   106: astore_0
    //   107: aload_0
    //   108: aload_1
    //   109: ldc 52
    //   111: invokevirtual 148	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   114: invokevirtual 154	java/io/FileOutputStream:write	([B)V
    //   117: aload_0
    //   118: ifnull -107 -> 11
    //   121: aload_0
    //   122: invokevirtual 157	java/io/FileOutputStream:close	()V
    //   125: return
    //   126: astore_0
    //   127: ldc 57
    //   129: ldc -32
    //   131: aload_0
    //   132: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   135: pop
    //   136: return
    //   137: astore_1
    //   138: aload 4
    //   140: astore_0
    //   141: aload_0
    //   142: astore_3
    //   143: ldc 57
    //   145: ldc -32
    //   147: aload_1
    //   148: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   151: pop
    //   152: aload_0
    //   153: ifnull -142 -> 11
    //   156: aload_0
    //   157: invokevirtual 157	java/io/FileOutputStream:close	()V
    //   160: return
    //   161: astore_0
    //   162: ldc 57
    //   164: ldc -32
    //   166: aload_0
    //   167: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   170: pop
    //   171: return
    //   172: astore_1
    //   173: aload 5
    //   175: astore_0
    //   176: aload_0
    //   177: astore_3
    //   178: ldc 57
    //   180: ldc -32
    //   182: aload_1
    //   183: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   186: pop
    //   187: aload_0
    //   188: ifnull -177 -> 11
    //   191: aload_0
    //   192: invokevirtual 157	java/io/FileOutputStream:close	()V
    //   195: return
    //   196: astore_0
    //   197: ldc 57
    //   199: ldc -32
    //   201: aload_0
    //   202: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   205: pop
    //   206: return
    //   207: astore_0
    //   208: aload_3
    //   209: ifnull +7 -> 216
    //   212: aload_3
    //   213: invokevirtual 157	java/io/FileOutputStream:close	()V
    //   216: aload_0
    //   217: athrow
    //   218: astore_1
    //   219: ldc 57
    //   221: ldc -32
    //   223: aload_1
    //   224: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   227: pop
    //   228: goto -12 -> 216
    //   231: astore_1
    //   232: aload_0
    //   233: astore_3
    //   234: aload_1
    //   235: astore_0
    //   236: goto -28 -> 208
    //   239: astore_1
    //   240: goto -64 -> 176
    //   243: astore_1
    //   244: goto -103 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	247	0	paramString1	String
    //   0	247	1	paramString2	String
    //   0	247	2	paramBoolean	boolean
    //   23	211	3	localObject1	Object
    //   19	120	4	localObject2	Object
    //   13	161	5	localObject3	Object
    //   16	79	6	localObject4	Object
    //   27	17	7	localFile	File
    // Exception table:
    //   from	to	target	type
    //   121	125	126	java/io/IOException
    //   24	29	137	java/io/FileNotFoundException
    //   32	65	137	java/io/FileNotFoundException
    //   68	75	137	java/io/FileNotFoundException
    //   78	86	137	java/io/FileNotFoundException
    //   89	94	137	java/io/FileNotFoundException
    //   97	107	137	java/io/FileNotFoundException
    //   156	160	161	java/io/IOException
    //   24	29	172	java/io/IOException
    //   32	65	172	java/io/IOException
    //   68	75	172	java/io/IOException
    //   78	86	172	java/io/IOException
    //   89	94	172	java/io/IOException
    //   97	107	172	java/io/IOException
    //   191	195	196	java/io/IOException
    //   24	29	207	finally
    //   32	65	207	finally
    //   68	75	207	finally
    //   78	86	207	finally
    //   89	94	207	finally
    //   97	107	207	finally
    //   143	152	207	finally
    //   178	187	207	finally
    //   212	216	218	java/io/IOException
    //   107	117	231	finally
    //   107	117	239	java/io/IOException
    //   107	117	243	java/io/FileNotFoundException
  }
  
  public static void a(boolean paramBoolean1, Context paramContext, String paramString1, String paramString2, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      a(paramString1, paramString2, paramBoolean2);
      return;
    }
    a(paramContext, paramString1, paramString2, paramBoolean2);
  }
  
  public static boolean a(String paramString)
  {
    e.a("MoUtil.deleteExt", paramString);
    if (!"mounted".equals(Environment.getExternalStorageState())) {}
    do
    {
      return false;
      File localFile = Environment.getExternalStorageDirectory();
      paramString = new File(localFile + File.separator + paramString);
    } while (!paramString.exists());
    return paramString.delete();
  }
  
  public static boolean a(boolean paramBoolean, Context paramContext, String paramString, HttpURLConnection paramHttpURLConnection)
  {
    e.a("MoUtil.save", String.format("[%s]", new Object[] { paramString }));
    paramHttpURLConnection.connect();
    paramHttpURLConnection = new BufferedInputStream(paramHttpURLConnection.getInputStream());
    if (paramBoolean)
    {
      if (!"mounted".equals(Environment.getExternalStorageState())) {
        return false;
      }
      paramContext = Environment.getExternalStorageDirectory();
    }
    for (paramContext = new BufferedOutputStream(new FileOutputStream(paramContext + File.separator + paramString));; paramContext = new BufferedOutputStream(paramContext.openFileOutput(paramString, 0)))
    {
      paramString = new byte['᐀'];
      for (;;)
      {
        int i = paramHttpURLConnection.read(paramString);
        if (i <= 0) {
          break;
        }
        paramContext.write(paramString, 0, i);
      }
    }
    if (paramHttpURLConnection != null) {
      paramHttpURLConnection.close();
    }
    if (paramContext != null) {
      paramContext.close();
    }
    return true;
  }
  
  /* Error */
  public static String b(String paramString)
  {
    // Byte code:
    //   0: ldc_w 275
    //   3: aload_0
    //   4: invokestatic 45	com/baidu/mobstat/util/e:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: invokestatic 189	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   11: astore_1
    //   12: ldc -72
    //   14: aload_1
    //   15: invokevirtual 193	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   18: ifne +16 -> 34
    //   21: ldc_w 277
    //   24: aload_1
    //   25: invokevirtual 193	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   28: ifne +6 -> 34
    //   31: ldc 65
    //   33: areturn
    //   34: invokestatic 197	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   37: astore_1
    //   38: new 199	java/io/File
    //   41: dup
    //   42: new 159	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   49: aload_1
    //   50: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   53: getstatic 206	java/io/File:separator	Ljava/lang/String;
    //   56: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_0
    //   60: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokespecial 207	java/io/File:<init>	(Ljava/lang/String;)V
    //   69: astore_0
    //   70: aload_0
    //   71: invokevirtual 210	java/io/File:exists	()Z
    //   74: ifeq -43 -> 31
    //   77: new 279	java/io/FileInputStream
    //   80: dup
    //   81: aload_0
    //   82: invokespecial 282	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   85: astore_1
    //   86: aload_1
    //   87: astore_0
    //   88: aload_1
    //   89: invokevirtual 286	java/io/FileInputStream:available	()I
    //   92: newarray <illegal type>
    //   94: astore_2
    //   95: aload_1
    //   96: astore_0
    //   97: aload_1
    //   98: aload_2
    //   99: invokevirtual 287	java/io/FileInputStream:read	([B)I
    //   102: pop
    //   103: aload_1
    //   104: astore_0
    //   105: new 50	java/lang/String
    //   108: dup
    //   109: aload_2
    //   110: ldc 52
    //   112: invokespecial 55	java/lang/String:<init>	([BLjava/lang/String;)V
    //   115: astore_2
    //   116: aload_2
    //   117: astore_0
    //   118: aload_1
    //   119: ifnull +9 -> 128
    //   122: aload_1
    //   123: invokevirtual 288	java/io/FileInputStream:close	()V
    //   126: aload_2
    //   127: astore_0
    //   128: aload_0
    //   129: areturn
    //   130: astore_0
    //   131: ldc 57
    //   133: ldc_w 275
    //   136: aload_0
    //   137: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   140: pop
    //   141: aload_2
    //   142: astore_0
    //   143: goto -15 -> 128
    //   146: astore_2
    //   147: aconst_null
    //   148: astore_1
    //   149: aload_1
    //   150: astore_0
    //   151: ldc 57
    //   153: ldc_w 275
    //   156: aload_2
    //   157: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   160: pop
    //   161: aload_1
    //   162: ifnull +7 -> 169
    //   165: aload_1
    //   166: invokevirtual 288	java/io/FileInputStream:close	()V
    //   169: ldc 65
    //   171: astore_0
    //   172: goto -44 -> 128
    //   175: astore_0
    //   176: ldc 57
    //   178: ldc_w 275
    //   181: aload_0
    //   182: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   185: pop
    //   186: ldc 65
    //   188: astore_0
    //   189: goto -61 -> 128
    //   192: astore_2
    //   193: aconst_null
    //   194: astore_1
    //   195: aload_1
    //   196: astore_0
    //   197: ldc 57
    //   199: ldc_w 275
    //   202: aload_2
    //   203: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   206: pop
    //   207: aload_1
    //   208: ifnull +7 -> 215
    //   211: aload_1
    //   212: invokevirtual 288	java/io/FileInputStream:close	()V
    //   215: ldc 65
    //   217: astore_0
    //   218: goto -90 -> 128
    //   221: astore_0
    //   222: ldc 57
    //   224: ldc_w 275
    //   227: aload_0
    //   228: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   231: pop
    //   232: ldc 65
    //   234: astore_0
    //   235: goto -107 -> 128
    //   238: astore_1
    //   239: aconst_null
    //   240: astore_0
    //   241: aload_0
    //   242: ifnull +7 -> 249
    //   245: aload_0
    //   246: invokevirtual 288	java/io/FileInputStream:close	()V
    //   249: aload_1
    //   250: athrow
    //   251: astore_0
    //   252: ldc 57
    //   254: ldc_w 275
    //   257: aload_0
    //   258: invokestatic 63	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   261: pop
    //   262: goto -13 -> 249
    //   265: astore_1
    //   266: goto -25 -> 241
    //   269: astore_2
    //   270: goto -75 -> 195
    //   273: astore_2
    //   274: goto -125 -> 149
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	277	0	paramString	String
    //   11	201	1	localObject1	Object
    //   238	12	1	localObject2	Object
    //   265	1	1	localObject3	Object
    //   94	48	2	localObject4	Object
    //   146	11	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   192	11	2	localIOException1	java.io.IOException
    //   269	1	2	localIOException2	java.io.IOException
    //   273	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   122	126	130	java/io/IOException
    //   77	86	146	java/io/FileNotFoundException
    //   165	169	175	java/io/IOException
    //   77	86	192	java/io/IOException
    //   211	215	221	java/io/IOException
    //   77	86	238	finally
    //   245	249	251	java/io/IOException
    //   88	95	265	finally
    //   97	103	265	finally
    //   105	116	265	finally
    //   151	161	265	finally
    //   197	207	265	finally
    //   88	95	269	java/io/IOException
    //   97	103	269	java/io/IOException
    //   105	116	269	java/io/IOException
    //   88	95	273	java/io/FileNotFoundException
    //   97	103	273	java/io/FileNotFoundException
    //   105	116	273	java/io/FileNotFoundException
  }
  
  /* Error */
  static byte[] b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore_2
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_0
    //   9: aload_1
    //   10: invokevirtual 292	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   13: astore_0
    //   14: aload_0
    //   15: ifnull +202 -> 217
    //   18: aload_0
    //   19: invokevirtual 286	java/io/FileInputStream:available	()I
    //   22: newarray <illegal type>
    //   24: astore_1
    //   25: aload_0
    //   26: aload_1
    //   27: invokevirtual 287	java/io/FileInputStream:read	([B)I
    //   30: pop
    //   31: aload_1
    //   32: astore_2
    //   33: aload_0
    //   34: ifnull +9 -> 43
    //   37: aload_0
    //   38: invokevirtual 288	java/io/FileInputStream:close	()V
    //   41: aload_1
    //   42: astore_2
    //   43: aload_2
    //   44: areturn
    //   45: astore_0
    //   46: ldc 57
    //   48: ldc_w 294
    //   51: aload_0
    //   52: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   55: pop
    //   56: aload_1
    //   57: areturn
    //   58: astore_3
    //   59: aconst_null
    //   60: astore_0
    //   61: aload 4
    //   63: astore_1
    //   64: aload_1
    //   65: astore_2
    //   66: ldc 57
    //   68: ldc_w 294
    //   71: aload_3
    //   72: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   75: pop
    //   76: aload_0
    //   77: astore_2
    //   78: aload_1
    //   79: ifnull -36 -> 43
    //   82: aload_1
    //   83: invokevirtual 288	java/io/FileInputStream:close	()V
    //   86: aload_0
    //   87: areturn
    //   88: astore_1
    //   89: ldc 57
    //   91: ldc_w 294
    //   94: aload_1
    //   95: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   98: pop
    //   99: aload_0
    //   100: areturn
    //   101: astore_3
    //   102: aconst_null
    //   103: astore_0
    //   104: aload 5
    //   106: astore_1
    //   107: aload_1
    //   108: astore_2
    //   109: ldc 57
    //   111: ldc_w 294
    //   114: aload_3
    //   115: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   118: pop
    //   119: aload_0
    //   120: astore_2
    //   121: aload_1
    //   122: ifnull -79 -> 43
    //   125: aload_1
    //   126: invokevirtual 288	java/io/FileInputStream:close	()V
    //   129: aload_0
    //   130: areturn
    //   131: astore_1
    //   132: ldc 57
    //   134: ldc_w 294
    //   137: aload_1
    //   138: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   141: pop
    //   142: aload_0
    //   143: areturn
    //   144: astore_0
    //   145: aload_2
    //   146: ifnull +7 -> 153
    //   149: aload_2
    //   150: invokevirtual 288	java/io/FileInputStream:close	()V
    //   153: aload_0
    //   154: athrow
    //   155: astore_1
    //   156: ldc 57
    //   158: ldc_w 294
    //   161: aload_1
    //   162: invokestatic 227	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   165: pop
    //   166: goto -13 -> 153
    //   169: astore_1
    //   170: aload_0
    //   171: astore_2
    //   172: aload_1
    //   173: astore_0
    //   174: goto -29 -> 145
    //   177: astore_3
    //   178: aconst_null
    //   179: astore_2
    //   180: aload_0
    //   181: astore_1
    //   182: aload_2
    //   183: astore_0
    //   184: goto -77 -> 107
    //   187: astore_3
    //   188: aload_1
    //   189: astore_2
    //   190: aload_0
    //   191: astore_1
    //   192: aload_2
    //   193: astore_0
    //   194: goto -87 -> 107
    //   197: astore_3
    //   198: aconst_null
    //   199: astore_2
    //   200: aload_0
    //   201: astore_1
    //   202: aload_2
    //   203: astore_0
    //   204: goto -140 -> 64
    //   207: astore_3
    //   208: aload_1
    //   209: astore_2
    //   210: aload_0
    //   211: astore_1
    //   212: aload_2
    //   213: astore_0
    //   214: goto -150 -> 64
    //   217: aconst_null
    //   218: astore_1
    //   219: goto -188 -> 31
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	paramContext	Context
    //   0	222	1	paramString	String
    //   4	209	2	localObject1	Object
    //   58	14	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   101	14	3	localIOException1	java.io.IOException
    //   177	1	3	localIOException2	java.io.IOException
    //   187	1	3	localIOException3	java.io.IOException
    //   197	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   207	1	3	localFileNotFoundException3	java.io.FileNotFoundException
    //   6	56	4	localObject2	Object
    //   1	104	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   37	41	45	java/io/IOException
    //   8	14	58	java/io/FileNotFoundException
    //   82	86	88	java/io/IOException
    //   8	14	101	java/io/IOException
    //   125	129	131	java/io/IOException
    //   8	14	144	finally
    //   66	76	144	finally
    //   109	119	144	finally
    //   149	153	155	java/io/IOException
    //   18	25	169	finally
    //   25	31	169	finally
    //   18	25	177	java/io/IOException
    //   25	31	187	java/io/IOException
    //   18	25	197	java/io/FileNotFoundException
    //   25	31	207	java/io/FileNotFoundException
  }
  
  public static void c(String paramString)
  {
    e.c(new Object[] { "sdkstat", paramString });
    Log.e("sdkstat", "SDK install error:" + paramString);
  }
  
  public static boolean c(Context paramContext, String paramString)
  {
    boolean bool = paramContext.getFileStreamPath(paramString).exists();
    e.a("MoUtil.exists", bool + " " + paramString);
    return bool;
  }
  
  public static String d(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int i = 0;
      while (i < paramString.length)
      {
        int j = paramString[i] & 0xFF;
        if (j < 16) {
          ((StringBuffer)localObject).append("0");
        }
        ((StringBuffer)localObject).append(Integer.toHexString(j));
        i += 1;
      }
      paramString = ((StringBuffer)localObject).toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      e.b(new Object[] { "sdkstat", "MD5Utility : getMD5 error" });
      paramString.printStackTrace();
    }
    return "";
  }
  
  public static HttpURLConnection d(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, 50000, 50000);
  }
  
  public static void e(Context paramContext, String paramString)
  {
    if (!f(paramContext, paramString)) {
      c("You need the " + paramString + " permission. Open AndroidManifest.xml and just before the final </manifest> " + "tag add:  <uses-permission android:name=\"" + paramString + "\" />");
    }
  }
  
  public static boolean f(Context paramContext, String paramString)
  {
    if (paramContext.checkCallingOrSelfPermission(paramString) != -1) {}
    for (boolean bool = true;; bool = false)
    {
      e.a("hasPermission ", bool + " | " + paramString);
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */