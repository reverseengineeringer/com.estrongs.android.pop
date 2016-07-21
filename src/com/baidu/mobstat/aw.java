package com.baidu.mobstat;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

class aw
  extends Thread
{
  private Context a;
  private k b;
  
  public aw(Context paramContext, k paramk)
  {
    a = paramContext;
    b = paramk;
  }
  
  /* Error */
  private void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: monitorenter
    //   7: ldc 22
    //   9: invokestatic 27	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 15	com/baidu/mobstat/aw:a	Landroid/content/Context;
    //   16: astore 7
    //   18: aload_0
    //   19: getfield 17	com/baidu/mobstat/aw:b	Lcom/baidu/mobstat/k;
    //   22: astore 8
    //   24: aload_0
    //   25: aload 7
    //   27: invokespecial 30	com/baidu/mobstat/aw:b	(Landroid/content/Context;)Ljava/lang/String;
    //   30: astore 5
    //   32: new 32	java/lang/StringBuilder
    //   35: dup
    //   36: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   39: ldc 35
    //   41: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload 5
    //   46: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokestatic 46	com/baidu/mobstat/bb:c	(Ljava/lang/String;)V
    //   55: aload 7
    //   57: aload 5
    //   59: invokestatic 52	com/baidu/mobstat/cl:d	(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   62: astore 6
    //   64: aload 6
    //   66: invokevirtual 57	java/net/HttpURLConnection:connect	()V
    //   69: aload 6
    //   71: ldc 59
    //   73: invokevirtual 63	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   76: astore 9
    //   78: new 32	java/lang/StringBuilder
    //   81: dup
    //   82: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   85: ldc 65
    //   87: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: aload 9
    //   92: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 27	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   101: aload 6
    //   103: ldc 67
    //   105: invokevirtual 63	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   108: astore 10
    //   110: new 32	java/lang/StringBuilder
    //   113: dup
    //   114: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   117: ldc 69
    //   119: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: aload 10
    //   124: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokestatic 27	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   133: aload 6
    //   135: invokevirtual 73	java/net/HttpURLConnection:getResponseCode	()I
    //   138: istore_1
    //   139: new 32	java/lang/StringBuilder
    //   142: dup
    //   143: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   146: ldc 75
    //   148: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: iload_1
    //   152: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   155: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokestatic 27	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   161: aload 6
    //   163: invokevirtual 81	java/net/HttpURLConnection:getContentLength	()I
    //   166: istore_2
    //   167: new 32	java/lang/StringBuilder
    //   170: dup
    //   171: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   174: ldc 83
    //   176: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: iload_2
    //   180: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   183: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 27	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   189: iload_1
    //   190: sipush 200
    //   193: if_icmpne +54 -> 247
    //   196: iload_2
    //   197: ifle +50 -> 247
    //   200: aload 7
    //   202: ldc 85
    //   204: iconst_0
    //   205: invokevirtual 91	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   208: astore 5
    //   210: aload 5
    //   212: astore_3
    //   213: aload 5
    //   215: astore 4
    //   217: aload 6
    //   219: invokevirtual 95	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   222: aload 5
    //   224: invokestatic 100	com/baidu/mobstat/cq:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    //   227: ifeq +15 -> 242
    //   230: aload 5
    //   232: astore_3
    //   233: aload 5
    //   235: astore 4
    //   237: ldc 102
    //   239: invokestatic 27	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   242: aload 5
    //   244: invokestatic 105	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   247: aconst_null
    //   248: invokestatic 110	com/baidu/mobstat/av:a	(Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;
    //   251: pop
    //   252: invokestatic 114	com/baidu/mobstat/as:a	()V
    //   255: aload 9
    //   257: invokestatic 120	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   260: ifne +14 -> 274
    //   263: aload 8
    //   265: aload 7
    //   267: aload 9
    //   269: invokeinterface 125 3 0
    //   274: aload 10
    //   276: invokestatic 120	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   279: ifne +14 -> 293
    //   282: aload 8
    //   284: aload 7
    //   286: aload 10
    //   288: invokeinterface 127 3 0
    //   293: aload 6
    //   295: invokevirtual 130	java/net/HttpURLConnection:disconnect	()V
    //   298: ldc -124
    //   300: invokestatic 27	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   303: aload_0
    //   304: monitorexit
    //   305: return
    //   306: astore 5
    //   308: aload_3
    //   309: astore 4
    //   311: aload 5
    //   313: invokestatic 135	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   316: aload_3
    //   317: invokestatic 105	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   320: goto -73 -> 247
    //   323: astore_3
    //   324: aload 6
    //   326: invokevirtual 130	java/net/HttpURLConnection:disconnect	()V
    //   329: aload_3
    //   330: athrow
    //   331: astore_3
    //   332: aload_0
    //   333: monitorexit
    //   334: aload_3
    //   335: athrow
    //   336: astore_3
    //   337: aload 4
    //   339: invokestatic 105	com/baidu/mobstat/cq:a	(Ljava/io/Closeable;)V
    //   342: aload_3
    //   343: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	344	0	this	aw
    //   138	56	1	i	int
    //   166	31	2	j	int
    //   4	313	3	localObject1	Object
    //   323	7	3	localObject2	Object
    //   331	4	3	localObject3	Object
    //   336	7	3	localObject4	Object
    //   1	337	4	localObject5	Object
    //   30	213	5	localObject6	Object
    //   306	6	5	localIOException	java.io.IOException
    //   62	263	6	localHttpURLConnection	java.net.HttpURLConnection
    //   16	269	7	localContext	Context
    //   22	261	8	localk	k
    //   76	192	9	str1	String
    //   108	179	10	str2	String
    // Exception table:
    //   from	to	target	type
    //   200	210	306	java/io/IOException
    //   217	230	306	java/io/IOException
    //   237	242	306	java/io/IOException
    //   64	189	323	finally
    //   242	247	323	finally
    //   247	274	323	finally
    //   274	293	323	finally
    //   316	320	323	finally
    //   337	344	323	finally
    //   7	64	331	finally
    //   293	303	331	finally
    //   324	331	331	finally
    //   200	210	336	finally
    //   217	230	336	finally
    //   237	242	336	finally
    //   311	316	336	finally
  }
  
  private void a(Context paramContext)
  {
    b.a(paramContext, System.currentTimeMillis());
  }
  
  private String b(Context paramContext)
  {
    Object localObject = paramContext.getFileStreamPath(".remote.jar");
    if ((localObject != null) && (((File)localObject).exists()))
    {
      localObject = paramContext.getFileStreamPath(".remote.jar");
      if (localObject != null)
      {
        localObject = av.a(((File)localObject).getAbsolutePath());
        bb.a("startDownload remote jar file version = " + (String)localObject);
        if (TextUtils.isEmpty((CharSequence)localObject)) {}
      }
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("dynamicVersion", "" + (String)localObject));
      localArrayList.add(new BasicNameValuePair("packageName", cu.o(paramContext)));
      localArrayList.add(new BasicNameValuePair("appVersion", cu.f(paramContext)));
      localArrayList.add(new BasicNameValuePair("cuid", cu.a(paramContext)));
      localArrayList.add(new BasicNameValuePair("platform", "Android"));
      localArrayList.add(new BasicNameValuePair("m", Build.MODEL));
      localArrayList.add(new BasicNameValuePair("s", Build.VERSION.SDK_INT + ""));
      localArrayList.add(new BasicNameValuePair("o", Build.VERSION.RELEASE));
      localArrayList.add(new BasicNameValuePair("i", "7"));
      paramContext = URLEncodedUtils.format(localArrayList, "utf-8");
      return "https://dxp.baidu.com/upgrade?" + paramContext;
      localObject = "7";
    }
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        if (!az.a) {
          continue;
        }
        i = 3;
        bb.a("start version check in " + i + "s");
        sleep(i * 1000);
        a();
        a(a);
      }
      catch (Exception localException)
      {
        int i;
        bb.a(localException);
        continue;
      }
      av.a(false);
      return;
      i = 10;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */