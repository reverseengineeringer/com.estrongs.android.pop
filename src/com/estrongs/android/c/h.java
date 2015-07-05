package com.estrongs.android.c;

import java.io.File;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;

public class h
{
  private static List<String> g = new ArrayList();
  private static Hashtable h = new Hashtable();
  private static SimpleDateFormat i;
  public int a;
  public Thread b;
  private String c = "NanoHTTPD";
  private byte[] d;
  private boolean e = false;
  private final ServerSocket f;
  
  static
  {
    StringTokenizer localStringTokenizer = new StringTokenizer("css\t\ttext/css js\t\t\ttext/javascript htm\t\ttext/html html\t\ttext/html txt\t\ttext/plain asc\t\ttext/plain gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream ");
    while (localStringTokenizer.hasMoreTokens()) {
      h.put(localStringTokenizer.nextToken(), localStringTokenizer.nextToken());
    }
    i = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    i.setTimeZone(TimeZone.getTimeZone("GMT"));
  }
  
  public h(int paramInt)
  {
    a = paramInt;
    f = new ServerSocket(a);
    b = new Thread(new i(this));
    b.setDaemon(true);
    b.start();
  }
  
  private String a(String paramString)
  {
    String str = "";
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "/ ", true);
    paramString = str;
    while (localStringTokenizer.hasMoreTokens())
    {
      str = localStringTokenizer.nextToken();
      if (str.equals("/")) {
        paramString = paramString + "/";
      } else if (str.equals(" ")) {
        paramString = paramString + "%20";
      } else {
        paramString = paramString + URLEncoder.encode(str);
      }
    }
    return paramString;
  }
  
  private boolean a()
  {
    return e;
  }
  
  public static void c(String paramString)
  {
    List localList = g;
    int j = 0;
    for (;;)
    {
      try
      {
        if (j < g.size())
        {
          if (!((String)g.get(j)).equals(paramString)) {}
        }
        else
        {
          g.add(paramString);
          return;
        }
      }
      finally {}
      j += 1;
    }
  }
  
  public static void d(String paramString)
  {
    List localList = g;
    int j = 0;
    for (;;)
    {
      try
      {
        if (j < g.size())
        {
          if (((String)g.get(j)).equals(paramString)) {
            g.remove(j);
          }
        }
        else {
          return;
        }
      }
      finally {}
      j += 1;
    }
  }
  
  public static boolean e(String paramString)
  {
    List localList = g;
    int j = 0;
    for (;;)
    {
      try
      {
        if (j < g.size())
        {
          if (((String)g.get(j)).equals(paramString)) {
            return true;
          }
        }
        else {
          return false;
        }
      }
      finally {}
      j += 1;
    }
  }
  
  public static void i()
  {
    synchronized (g)
    {
      g.clear();
      return;
    }
  }
  
  public k a(String paramString1, String paramString2, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
  {
    System.out.println(paramString2 + " '" + paramString1 + "' ");
    paramString2 = paramProperties1.propertyNames();
    String str;
    while (paramString2.hasMoreElements())
    {
      str = (String)paramString2.nextElement();
      System.out.println("  HDR: '" + str + "' = '" + paramProperties1.getProperty(str) + "'");
    }
    paramString2 = paramProperties2.propertyNames();
    while (paramString2.hasMoreElements())
    {
      str = (String)paramString2.nextElement();
      System.out.println("  PRM: '" + str + "' = '" + paramProperties2.getProperty(str) + "'");
    }
    paramString2 = paramProperties3.propertyNames();
    while (paramString2.hasMoreElements())
    {
      paramProperties2 = (String)paramString2.nextElement();
      System.out.println("  UPLOADED: '" + paramProperties2 + "' = '" + paramProperties3.getProperty(paramProperties2) + "'");
    }
    return a(paramString1, paramProperties1, new File("/"), false);
  }
  
  /* Error */
  public k a(String paramString, Properties paramProperties, File paramFile, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokevirtual 240	java/io/File:isDirectory	()Z
    //   4: ifne +18 -> 22
    //   7: new 242	com/estrongs/android/c/k
    //   10: dup
    //   11: aload_0
    //   12: ldc -12
    //   14: ldc -10
    //   16: ldc -8
    //   18: invokespecial 251	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   21: areturn
    //   22: aload_1
    //   23: invokevirtual 254	java/lang/String:trim	()Ljava/lang/String;
    //   26: getstatic 258	java/io/File:separatorChar	C
    //   29: bipush 47
    //   31: invokevirtual 262	java/lang/String:replace	(CC)Ljava/lang/String;
    //   34: astore_1
    //   35: aload_1
    //   36: astore 8
    //   38: aload_1
    //   39: bipush 63
    //   41: invokevirtual 266	java/lang/String:indexOf	(I)I
    //   44: iflt +16 -> 60
    //   47: aload_1
    //   48: iconst_0
    //   49: aload_1
    //   50: bipush 63
    //   52: invokevirtual 266	java/lang/String:indexOf	(I)I
    //   55: invokevirtual 270	java/lang/String:substring	(II)Ljava/lang/String;
    //   58: astore 8
    //   60: aload 8
    //   62: ldc_w 272
    //   65: invokevirtual 275	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   68: ifne +25 -> 93
    //   71: aload 8
    //   73: ldc_w 272
    //   76: invokevirtual 278	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   79: ifne +14 -> 93
    //   82: aload 8
    //   84: ldc_w 280
    //   87: invokevirtual 283	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   90: iflt +20 -> 110
    //   93: new 242	com/estrongs/android/c/k
    //   96: dup
    //   97: aload_0
    //   98: ldc_w 285
    //   101: ldc -10
    //   103: ldc_w 287
    //   106: invokespecial 251	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   109: areturn
    //   110: new 229	java/io/File
    //   113: dup
    //   114: aload_3
    //   115: aload 8
    //   117: invokespecial 290	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   120: astore 9
    //   122: aload 9
    //   124: invokevirtual 293	java/io/File:exists	()Z
    //   127: ifne +20 -> 147
    //   130: new 242	com/estrongs/android/c/k
    //   133: dup
    //   134: aload_0
    //   135: ldc_w 295
    //   138: ldc -10
    //   140: ldc_w 297
    //   143: invokespecial 251	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   146: areturn
    //   147: aload 9
    //   149: invokevirtual 240	java/io/File:isDirectory	()Z
    //   152: ifeq +1105 -> 1257
    //   155: aload 8
    //   157: ldc -127
    //   159: invokevirtual 278	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   162: ifne +85 -> 247
    //   165: new 137	java/lang/StringBuilder
    //   168: dup
    //   169: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   172: aload 8
    //   174: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: ldc -127
    //   179: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: astore_1
    //   186: new 242	com/estrongs/android/c/k
    //   189: dup
    //   190: aload_0
    //   191: ldc_w 299
    //   194: ldc_w 301
    //   197: new 137	java/lang/StringBuilder
    //   200: dup
    //   201: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   204: ldc_w 303
    //   207: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: aload_1
    //   211: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: ldc_w 305
    //   217: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: aload_1
    //   221: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: ldc_w 307
    //   227: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   233: invokespecial 251	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   236: astore_2
    //   237: aload_2
    //   238: ldc_w 309
    //   241: aload_1
    //   242: invokevirtual 312	com/estrongs/android/c/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   245: aload_2
    //   246: areturn
    //   247: new 229	java/io/File
    //   250: dup
    //   251: aload 9
    //   253: ldc_w 314
    //   256: invokespecial 290	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   259: invokevirtual 293	java/io/File:exists	()Z
    //   262: ifeq +298 -> 560
    //   265: new 229	java/io/File
    //   268: dup
    //   269: aload_3
    //   270: new 137	java/lang/StringBuilder
    //   273: dup
    //   274: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   277: aload 8
    //   279: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: ldc_w 316
    //   285: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   291: invokespecial 290	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   294: astore_1
    //   295: aconst_null
    //   296: astore_3
    //   297: aload_1
    //   298: invokevirtual 319	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   301: bipush 46
    //   303: invokevirtual 322	java/lang/String:lastIndexOf	(I)I
    //   306: istore 5
    //   308: iload 5
    //   310: iflt +953 -> 1263
    //   313: getstatic 37	com/estrongs/android/c/h:h	Ljava/util/Hashtable;
    //   316: aload_1
    //   317: invokevirtual 319	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   320: iload 5
    //   322: iconst_1
    //   323: iadd
    //   324: invokevirtual 325	java/lang/String:substring	(I)Ljava/lang/String;
    //   327: invokevirtual 328	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   330: invokevirtual 331	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   333: checkcast 131	java/lang/String
    //   336: astore_3
    //   337: goto +926 -> 1263
    //   340: aload_2
    //   341: ldc_w 333
    //   344: invokevirtual 221	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   347: astore_2
    //   348: aload_2
    //   349: ifnull +899 -> 1248
    //   352: aload_2
    //   353: ldc_w 335
    //   356: invokevirtual 275	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   359: ifeq +889 -> 1248
    //   362: aload_2
    //   363: ldc_w 335
    //   366: invokevirtual 338	java/lang/String:length	()I
    //   369: invokevirtual 325	java/lang/String:substring	(I)Ljava/lang/String;
    //   372: astore 8
    //   374: aload 8
    //   376: bipush 45
    //   378: invokevirtual 266	java/lang/String:indexOf	(I)I
    //   381: istore 5
    //   383: aload 8
    //   385: astore_2
    //   386: iload 5
    //   388: ifle +12 -> 400
    //   391: aload 8
    //   393: iconst_0
    //   394: iload 5
    //   396: invokevirtual 270	java/lang/String:substring	(II)Ljava/lang/String;
    //   399: astore_2
    //   400: aload_2
    //   401: invokestatic 344	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   404: lstore 6
    //   406: new 346	java/io/FileInputStream
    //   409: dup
    //   410: aload_1
    //   411: invokespecial 349	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   414: astore_2
    //   415: aload_2
    //   416: lload 6
    //   418: invokevirtual 353	java/io/FileInputStream:skip	(J)J
    //   421: pop2
    //   422: lload 6
    //   424: lconst_0
    //   425: lcmp
    //   426: ifne +805 -> 1231
    //   429: new 242	com/estrongs/android/c/k
    //   432: dup
    //   433: aload_0
    //   434: ldc_w 355
    //   437: aload_3
    //   438: aload_2
    //   439: invokespecial 358	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   442: astore_2
    //   443: aload_2
    //   444: ldc_w 360
    //   447: new 137	java/lang/StringBuilder
    //   450: dup
    //   451: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   454: ldc 122
    //   456: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: aload_1
    //   460: invokevirtual 363	java/io/File:length	()J
    //   463: lload 6
    //   465: lsub
    //   466: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   469: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   472: invokevirtual 312	com/estrongs/android/c/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   475: aload_2
    //   476: ldc_w 368
    //   479: new 137	java/lang/StringBuilder
    //   482: dup
    //   483: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   486: ldc_w 370
    //   489: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   492: lload 6
    //   494: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   497: ldc_w 372
    //   500: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: aload_1
    //   504: invokevirtual 363	java/io/File:length	()J
    //   507: lconst_1
    //   508: lsub
    //   509: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   512: ldc -127
    //   514: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: aload_1
    //   518: invokevirtual 363	java/io/File:length	()J
    //   521: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   524: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   527: invokevirtual 312	com/estrongs/android/c/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   530: aload_2
    //   531: ldc_w 374
    //   534: ldc_w 376
    //   537: invokevirtual 312	com/estrongs/android/c/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   540: aload_2
    //   541: areturn
    //   542: astore_1
    //   543: new 242	com/estrongs/android/c/k
    //   546: dup
    //   547: aload_0
    //   548: ldc_w 285
    //   551: ldc -10
    //   553: ldc_w 378
    //   556: invokespecial 251	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   559: areturn
    //   560: new 229	java/io/File
    //   563: dup
    //   564: aload 9
    //   566: ldc_w 380
    //   569: invokespecial 290	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   572: invokevirtual 293	java/io/File:exists	()Z
    //   575: ifeq +36 -> 611
    //   578: new 229	java/io/File
    //   581: dup
    //   582: aload_3
    //   583: new 137	java/lang/StringBuilder
    //   586: dup
    //   587: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   590: aload 8
    //   592: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   595: ldc_w 382
    //   598: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   604: invokespecial 290	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   607: astore_1
    //   608: goto -313 -> 295
    //   611: iload 4
    //   613: ifeq +594 -> 1207
    //   616: aload 9
    //   618: invokevirtual 386	java/io/File:list	()[Ljava/lang/String;
    //   621: astore_3
    //   622: new 137	java/lang/StringBuilder
    //   625: dup
    //   626: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   629: ldc_w 388
    //   632: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   635: aload 8
    //   637: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   640: ldc_w 390
    //   643: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   646: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   649: astore_2
    //   650: aload_2
    //   651: astore_1
    //   652: aload 8
    //   654: invokevirtual 338	java/lang/String:length	()I
    //   657: iconst_1
    //   658: if_icmple +86 -> 744
    //   661: aload 8
    //   663: iconst_0
    //   664: aload 8
    //   666: invokevirtual 338	java/lang/String:length	()I
    //   669: iconst_1
    //   670: isub
    //   671: invokevirtual 270	java/lang/String:substring	(II)Ljava/lang/String;
    //   674: astore 10
    //   676: aload 10
    //   678: bipush 47
    //   680: invokevirtual 322	java/lang/String:lastIndexOf	(I)I
    //   683: istore 5
    //   685: aload_2
    //   686: astore_1
    //   687: iload 5
    //   689: iflt +55 -> 744
    //   692: aload_2
    //   693: astore_1
    //   694: iload 5
    //   696: aload 10
    //   698: invokevirtual 338	java/lang/String:length	()I
    //   701: if_icmpge +43 -> 744
    //   704: new 137	java/lang/StringBuilder
    //   707: dup
    //   708: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   711: aload_2
    //   712: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   715: ldc_w 392
    //   718: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   721: aload 8
    //   723: iconst_0
    //   724: iload 5
    //   726: iconst_1
    //   727: iadd
    //   728: invokevirtual 270	java/lang/String:substring	(II)Ljava/lang/String;
    //   731: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   734: ldc_w 394
    //   737: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   740: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   743: astore_1
    //   744: iconst_0
    //   745: istore 5
    //   747: iload 5
    //   749: aload_3
    //   750: arraylength
    //   751: if_icmpge +421 -> 1172
    //   754: new 229	java/io/File
    //   757: dup
    //   758: aload 9
    //   760: aload_3
    //   761: iload 5
    //   763: aaload
    //   764: invokespecial 290	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   767: astore 10
    //   769: aload 10
    //   771: invokevirtual 240	java/io/File:isDirectory	()Z
    //   774: istore 4
    //   776: aload_1
    //   777: astore_2
    //   778: iload 4
    //   780: ifeq +50 -> 830
    //   783: new 137	java/lang/StringBuilder
    //   786: dup
    //   787: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   790: aload_1
    //   791: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   794: ldc_w 396
    //   797: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   800: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   803: astore_2
    //   804: aload_3
    //   805: iload 5
    //   807: new 137	java/lang/StringBuilder
    //   810: dup
    //   811: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   814: aload_3
    //   815: iload 5
    //   817: aaload
    //   818: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   821: ldc -127
    //   823: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   826: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   829: aastore
    //   830: new 137	java/lang/StringBuilder
    //   833: dup
    //   834: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   837: aload_2
    //   838: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   841: ldc_w 398
    //   844: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   847: aload_0
    //   848: new 137	java/lang/StringBuilder
    //   851: dup
    //   852: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   855: aload 8
    //   857: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   860: aload_3
    //   861: iload 5
    //   863: aaload
    //   864: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   867: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   870: invokespecial 400	com/estrongs/android/c/h:a	(Ljava/lang/String;)Ljava/lang/String;
    //   873: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   876: ldc_w 305
    //   879: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   882: aload_3
    //   883: iload 5
    //   885: aaload
    //   886: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   889: ldc_w 402
    //   892: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   895: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   898: astore_2
    //   899: aload_2
    //   900: astore_1
    //   901: aload 10
    //   903: invokevirtual 405	java/io/File:isFile	()Z
    //   906: ifeq +87 -> 993
    //   909: aload 10
    //   911: invokevirtual 363	java/io/File:length	()J
    //   914: lstore 6
    //   916: new 137	java/lang/StringBuilder
    //   919: dup
    //   920: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   923: aload_2
    //   924: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   927: ldc_w 407
    //   930: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   933: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   936: astore_1
    //   937: lload 6
    //   939: ldc2_w 408
    //   942: lcmp
    //   943: ifge +108 -> 1051
    //   946: new 137	java/lang/StringBuilder
    //   949: dup
    //   950: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   953: aload_1
    //   954: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   957: lload 6
    //   959: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   962: ldc_w 411
    //   965: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   968: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   971: astore_1
    //   972: new 137	java/lang/StringBuilder
    //   975: dup
    //   976: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   979: aload_1
    //   980: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   983: ldc_w 413
    //   986: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   989: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   992: astore_1
    //   993: new 137	java/lang/StringBuilder
    //   996: dup
    //   997: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   1000: aload_1
    //   1001: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1004: ldc_w 415
    //   1007: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1010: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1013: astore_2
    //   1014: aload_2
    //   1015: astore_1
    //   1016: iload 4
    //   1018: ifeq +24 -> 1042
    //   1021: new 137	java/lang/StringBuilder
    //   1024: dup
    //   1025: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   1028: aload_2
    //   1029: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1032: ldc_w 417
    //   1035: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1038: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1041: astore_1
    //   1042: iload 5
    //   1044: iconst_1
    //   1045: iadd
    //   1046: istore 5
    //   1048: goto -301 -> 747
    //   1051: lload 6
    //   1053: ldc2_w 418
    //   1056: lcmp
    //   1057: ifge +59 -> 1116
    //   1060: new 137	java/lang/StringBuilder
    //   1063: dup
    //   1064: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   1067: aload_1
    //   1068: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1071: lload 6
    //   1073: ldc2_w 408
    //   1076: ldiv
    //   1077: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1080: ldc_w 421
    //   1083: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1086: lload 6
    //   1088: ldc2_w 408
    //   1091: lrem
    //   1092: ldc2_w 422
    //   1095: ldiv
    //   1096: ldc2_w 424
    //   1099: lrem
    //   1100: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1103: ldc_w 427
    //   1106: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1109: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1112: astore_1
    //   1113: goto -141 -> 972
    //   1116: new 137	java/lang/StringBuilder
    //   1119: dup
    //   1120: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   1123: aload_1
    //   1124: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1127: lload 6
    //   1129: ldc2_w 418
    //   1132: ldiv
    //   1133: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1136: ldc_w 421
    //   1139: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1142: lload 6
    //   1144: ldc2_w 418
    //   1147: lrem
    //   1148: ldc2_w 422
    //   1151: ldiv
    //   1152: ldc2_w 424
    //   1155: lrem
    //   1156: invokevirtual 366	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1159: ldc_w 429
    //   1162: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1165: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1168: astore_1
    //   1169: goto -197 -> 972
    //   1172: new 242	com/estrongs/android/c/k
    //   1175: dup
    //   1176: aload_0
    //   1177: ldc_w 355
    //   1180: ldc_w 301
    //   1183: new 137	java/lang/StringBuilder
    //   1186: dup
    //   1187: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   1190: aload_1
    //   1191: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1194: ldc_w 431
    //   1197: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1200: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1203: invokespecial 251	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1206: areturn
    //   1207: new 242	com/estrongs/android/c/k
    //   1210: dup
    //   1211: aload_0
    //   1212: ldc_w 285
    //   1215: ldc -10
    //   1217: ldc_w 433
    //   1220: invokespecial 251	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1223: areturn
    //   1224: astore_2
    //   1225: lconst_0
    //   1226: lstore 6
    //   1228: goto -822 -> 406
    //   1231: new 242	com/estrongs/android/c/k
    //   1234: dup
    //   1235: aload_0
    //   1236: ldc_w 435
    //   1239: aload_3
    //   1240: aload_2
    //   1241: invokespecial 358	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   1244: astore_2
    //   1245: goto -802 -> 443
    //   1248: lconst_0
    //   1249: lstore 6
    //   1251: goto -845 -> 406
    //   1254: goto -914 -> 340
    //   1257: aload 9
    //   1259: astore_1
    //   1260: goto -965 -> 295
    //   1263: aload_3
    //   1264: ifnonnull -10 -> 1254
    //   1267: ldc_w 437
    //   1270: astore_3
    //   1271: goto -931 -> 340
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1274	0	this	h
    //   0	1274	1	paramString	String
    //   0	1274	2	paramProperties	Properties
    //   0	1274	3	paramFile	File
    //   0	1274	4	paramBoolean	boolean
    //   306	741	5	j	int
    //   404	846	6	l	long
    //   36	820	8	str	String
    //   120	1138	9	localFile	File
    //   674	236	10	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   297	308	542	java/io/IOException
    //   313	337	542	java/io/IOException
    //   340	348	542	java/io/IOException
    //   352	383	542	java/io/IOException
    //   391	400	542	java/io/IOException
    //   400	406	542	java/io/IOException
    //   406	422	542	java/io/IOException
    //   429	443	542	java/io/IOException
    //   443	540	542	java/io/IOException
    //   1231	1245	542	java/io/IOException
    //   400	406	1224	java/lang/NumberFormatException
  }
  
  byte[] g()
  {
    return d;
  }
  
  public void h()
  {
    try
    {
      e = true;
      Socket localSocket = new Socket();
      localSocket.connect(new InetSocketAddress(InetAddress.getByName("127.0.0.1"), a));
      localSocket.close();
      return;
    }
    catch (Exception localException1)
    {
      try
      {
        f.close();
        b.join();
        return;
      }
      catch (Exception localException3) {}
      localException1 = localException1;
      try
      {
        f.close();
        b.join();
        return;
      }
      catch (Exception localException2)
      {
        return;
      }
    }
    finally
    {
      localObject = finally;
      try
      {
        f.close();
        b.join();
        throw ((Throwable)localObject);
      }
      catch (Exception localException4)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */