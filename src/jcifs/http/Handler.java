package jcifs.http;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.HashMap;
import java.util.Map;

public class Handler
  extends URLStreamHandler
{
  public static final int DEFAULT_HTTP_PORT = 80;
  private static final String HANDLER_PKGS_PROPERTY = "java.protocol.handler.pkgs";
  private static final String[] JVM_VENDOR_DEFAULT_PKGS = { "sun.net.www.protocol" };
  private static final Map PROTOCOL_HANDLERS = new HashMap();
  private static URLStreamHandlerFactory factory;
  
  /* Error */
  private static URLStreamHandler getDefaultStreamHandler(String paramString)
  {
    // Byte code:
    //   0: getstatic 26	jcifs/http/Handler:PROTOCOL_HANDLERS	Ljava/util/Map;
    //   3: astore 5
    //   5: aload 5
    //   7: monitorenter
    //   8: getstatic 26	jcifs/http/Handler:PROTOCOL_HANDLERS	Ljava/util/Map;
    //   11: aload_0
    //   12: invokeinterface 44 2 0
    //   17: checkcast 4	java/net/URLStreamHandler
    //   20: astore_2
    //   21: aload_2
    //   22: ifnull +8 -> 30
    //   25: aload 5
    //   27: monitorexit
    //   28: aload_2
    //   29: areturn
    //   30: getstatic 46	jcifs/http/Handler:factory	Ljava/net/URLStreamHandlerFactory;
    //   33: ifnull +301 -> 334
    //   36: getstatic 46	jcifs/http/Handler:factory	Ljava/net/URLStreamHandlerFactory;
    //   39: aload_0
    //   40: invokeinterface 51 2 0
    //   45: astore_2
    //   46: aload_2
    //   47: ifnonnull +284 -> 331
    //   50: new 53	java/util/StringTokenizer
    //   53: dup
    //   54: ldc 11
    //   56: invokestatic 59	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   59: ldc 61
    //   61: invokespecial 64	java/util/StringTokenizer:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: astore 6
    //   66: aload 6
    //   68: invokevirtual 68	java/util/StringTokenizer:hasMoreTokens	()Z
    //   71: ifeq +260 -> 331
    //   74: aload 6
    //   76: invokevirtual 72	java/util/StringTokenizer:nextToken	()Ljava/lang/String;
    //   79: invokevirtual 75	java/lang/String:trim	()Ljava/lang/String;
    //   82: astore_3
    //   83: aload_3
    //   84: ldc 77
    //   86: invokevirtual 81	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   89: ifne -23 -> 66
    //   92: new 83	java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   99: aload_3
    //   100: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc 90
    //   105: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: aload_0
    //   109: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: ldc 92
    //   114: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: astore 7
    //   122: aload 7
    //   124: invokestatic 101	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   127: astore_3
    //   128: aload_3
    //   129: astore 4
    //   131: aload_3
    //   132: ifnonnull +13 -> 145
    //   135: invokestatic 107	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
    //   138: aload 7
    //   140: invokevirtual 110	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   143: astore 4
    //   145: aload 4
    //   147: invokevirtual 114	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   150: checkcast 4	java/net/URLStreamHandler
    //   153: astore_3
    //   154: aload_3
    //   155: astore_2
    //   156: aload_2
    //   157: astore_3
    //   158: aload_2
    //   159: ifnonnull +87 -> 246
    //   162: iconst_0
    //   163: istore_1
    //   164: iload_1
    //   165: getstatic 32	jcifs/http/Handler:JVM_VENDOR_DEFAULT_PKGS	[Ljava/lang/String;
    //   168: arraylength
    //   169: if_icmpge +157 -> 326
    //   172: new 83	java/lang/StringBuilder
    //   175: dup
    //   176: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   179: getstatic 32	jcifs/http/Handler:JVM_VENDOR_DEFAULT_PKGS	[Ljava/lang/String;
    //   182: iload_1
    //   183: aaload
    //   184: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: ldc 90
    //   189: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: aload_0
    //   193: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc 92
    //   198: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: astore 6
    //   206: aload 6
    //   208: invokestatic 101	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   211: astore_3
    //   212: aload_3
    //   213: astore 4
    //   215: aload_3
    //   216: ifnonnull +13 -> 229
    //   219: invokestatic 107	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
    //   222: aload 6
    //   224: invokevirtual 110	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   227: astore 4
    //   229: aload 4
    //   231: invokevirtual 114	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   234: checkcast 4	java/net/URLStreamHandler
    //   237: astore_3
    //   238: aload_3
    //   239: astore_2
    //   240: aload_2
    //   241: ifnull +58 -> 299
    //   244: aload_2
    //   245: astore_3
    //   246: aload_3
    //   247: ifnonnull +59 -> 306
    //   250: new 116	java/io/IOException
    //   253: dup
    //   254: new 83	java/lang/StringBuilder
    //   257: dup
    //   258: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   261: ldc 118
    //   263: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: aload_0
    //   267: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokespecial 121	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   276: athrow
    //   277: astore_0
    //   278: aload 5
    //   280: monitorexit
    //   281: aload_0
    //   282: athrow
    //   283: astore_3
    //   284: aconst_null
    //   285: astore_3
    //   286: goto -158 -> 128
    //   289: astore_3
    //   290: aconst_null
    //   291: astore_3
    //   292: goto -80 -> 212
    //   295: astore_3
    //   296: goto -56 -> 240
    //   299: iload_1
    //   300: iconst_1
    //   301: iadd
    //   302: istore_1
    //   303: goto -139 -> 164
    //   306: getstatic 26	jcifs/http/Handler:PROTOCOL_HANDLERS	Ljava/util/Map;
    //   309: aload_0
    //   310: aload_3
    //   311: invokeinterface 125 3 0
    //   316: pop
    //   317: aload 5
    //   319: monitorexit
    //   320: aload_3
    //   321: areturn
    //   322: astore_3
    //   323: goto -257 -> 66
    //   326: aload_2
    //   327: astore_3
    //   328: goto -82 -> 246
    //   331: goto -175 -> 156
    //   334: goto -288 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	337	0	paramString	String
    //   163	140	1	i	int
    //   20	307	2	localObject1	Object
    //   82	165	3	localObject2	Object
    //   283	1	3	localException1	Exception
    //   285	1	3	localObject3	Object
    //   289	1	3	localException2	Exception
    //   291	1	3	localObject4	Object
    //   295	26	3	localException3	Exception
    //   322	1	3	localException4	Exception
    //   327	1	3	localObject5	Object
    //   129	101	4	localObject6	Object
    //   3	315	5	localMap	Map
    //   64	159	6	localObject7	Object
    //   120	19	7	str	String
    // Exception table:
    //   from	to	target	type
    //   8	21	277	finally
    //   25	28	277	finally
    //   30	46	277	finally
    //   50	66	277	finally
    //   66	122	277	finally
    //   122	128	277	finally
    //   135	145	277	finally
    //   145	154	277	finally
    //   164	206	277	finally
    //   206	212	277	finally
    //   219	229	277	finally
    //   229	238	277	finally
    //   250	277	277	finally
    //   278	281	277	finally
    //   306	320	277	finally
    //   122	128	283	java/lang/Exception
    //   206	212	289	java/lang/Exception
    //   219	229	295	java/lang/Exception
    //   229	238	295	java/lang/Exception
    //   135	145	322	java/lang/Exception
    //   145	154	322	java/lang/Exception
  }
  
  public static void setURLStreamHandlerFactory(URLStreamHandlerFactory paramURLStreamHandlerFactory)
  {
    synchronized (PROTOCOL_HANDLERS)
    {
      if (factory != null) {
        throw new IllegalStateException("URLStreamHandlerFactory already set.");
      }
    }
    PROTOCOL_HANDLERS.clear();
    factory = paramURLStreamHandlerFactory;
  }
  
  protected int getDefaultPort()
  {
    return 80;
  }
  
  protected URLConnection openConnection(URL paramURL)
  {
    return new NtlmHttpURLConnection((HttpURLConnection)new URL(paramURL, paramURL.toExternalForm(), getDefaultStreamHandler(paramURL.getProtocol())).openConnection());
  }
}

/* Location:
 * Qualified Name:     jcifs.http.Handler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */