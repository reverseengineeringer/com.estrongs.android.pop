package com.estrongs.android.g;

import com.estrongs.android.ui.notification.d;
import com.estrongs.fs.h;
import java.io.File;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;

public class f
{
  private static List<String> l = new ArrayList();
  private static ConcurrentHashMap<String, List<h>> m = new ConcurrentHashMap();
  private static Hashtable n = new Hashtable();
  private static SimpleDateFormat o;
  public int a;
  public Thread b;
  private String c = "NanoHTTPD";
  private Object d = new Object();
  private d e = null;
  private Timer f = new Timer();
  private TimerTask g = null;
  private int h = 0;
  private byte[] i;
  private boolean j = false;
  private final ServerSocket k;
  
  static
  {
    StringTokenizer localStringTokenizer = new StringTokenizer("css\t\ttext/css js\t\t\ttext/javascript htm\t\ttext/html html\t\ttext/html txt\t\ttext/plain asc\t\ttext/plain gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream ");
    while (localStringTokenizer.hasMoreTokens()) {
      n.put(localStringTokenizer.nextToken(), localStringTokenizer.nextToken());
    }
    o = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    o.setTimeZone(TimeZone.getTimeZone("GMT"));
  }
  
  public f(int paramInt)
  {
    a = paramInt;
    k = new ServerSocket(a);
    b = new Thread(new g(this));
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
  
  public static void a(String paramString, h paramh)
  {
    Object localObject = (List)m.get(paramString);
    if (localObject == null)
    {
      localObject = new ArrayList();
      ((List)localObject).add(paramh);
      m.put(paramString, localObject);
      return;
    }
    try
    {
      paramString = ((List)localObject).iterator();
      while (paramString.hasNext()) {
        if (((h)paramString.next()).equals(paramh)) {
          return;
        }
      }
    }
    finally {}
    ((List)localObject).add(paramh);
  }
  
  private boolean a()
  {
    return j;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    boolean bool2 = false;
    paramString1 = (List)m.get(paramString1);
    boolean bool1 = bool2;
    int i1;
    if (paramString1 != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < paramString1.size())
      {
        if (((h)paramString1.get(i1)).getPath().equals(paramString2)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public static void b(String paramString, h paramh)
  {
    List localList = (List)m.get(paramString);
    if (localList == null) {}
    for (;;)
    {
      return;
      try
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext()) {
          if (((h)localIterator.next()).equals(paramh)) {
            localList.remove(paramh);
          }
        }
        if (localList.size() != 0) {
          continue;
        }
        m.remove(paramString);
        return;
      }
      finally {}
    }
  }
  
  public static void c(String paramString)
  {
    List localList = l;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < l.size())
        {
          if (!((String)l.get(i1)).equals(paramString)) {}
        }
        else
        {
          l.add(paramString);
          return;
        }
      }
      finally {}
      i1 += 1;
    }
  }
  
  public static void d(String paramString)
  {
    List localList = l;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < l.size())
        {
          if (((String)l.get(i1)).equals(paramString)) {
            l.remove(i1);
          }
        }
        else {
          return;
        }
      }
      finally {}
      i1 += 1;
    }
  }
  
  public static boolean e(String paramString)
  {
    List localList = l;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < l.size())
        {
          if (((String)l.get(i1)).equals(paramString)) {
            return true;
          }
        }
        else {
          return false;
        }
      }
      finally {}
      i1 += 1;
    }
  }
  
  public static void f(String paramString)
  {
    m.remove(paramString);
  }
  
  public static void i()
  {
    m.clear();
  }
  
  public j a(String paramString1, String paramString2, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
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
  public j a(String paramString, Properties paramProperties, File paramFile, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokevirtual 304	java/io/File:isDirectory	()Z
    //   4: ifne +21 -> 25
    //   7: new 306	com/estrongs/android/g/j
    //   10: dup
    //   11: aload_0
    //   12: ldc_w 308
    //   15: ldc_w 310
    //   18: ldc_w 312
    //   21: invokespecial 315	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   24: areturn
    //   25: aload_1
    //   26: invokevirtual 318	java/lang/String:trim	()Ljava/lang/String;
    //   29: getstatic 322	java/io/File:separatorChar	C
    //   32: bipush 47
    //   34: invokevirtual 326	java/lang/String:replace	(CC)Ljava/lang/String;
    //   37: astore_1
    //   38: aload_1
    //   39: astore 8
    //   41: aload_1
    //   42: bipush 63
    //   44: invokevirtual 330	java/lang/String:indexOf	(I)I
    //   47: iflt +16 -> 63
    //   50: aload_1
    //   51: iconst_0
    //   52: aload_1
    //   53: bipush 63
    //   55: invokevirtual 330	java/lang/String:indexOf	(I)I
    //   58: invokevirtual 334	java/lang/String:substring	(II)Ljava/lang/String;
    //   61: astore 8
    //   63: aload 8
    //   65: ldc_w 336
    //   68: invokevirtual 339	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   71: ifne +25 -> 96
    //   74: aload 8
    //   76: ldc_w 336
    //   79: invokevirtual 342	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   82: ifne +14 -> 96
    //   85: aload 8
    //   87: ldc_w 344
    //   90: invokevirtual 347	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   93: iflt +21 -> 114
    //   96: new 306	com/estrongs/android/g/j
    //   99: dup
    //   100: aload_0
    //   101: ldc_w 349
    //   104: ldc_w 310
    //   107: ldc_w 351
    //   110: invokespecial 315	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   113: areturn
    //   114: new 293	java/io/File
    //   117: dup
    //   118: aload_3
    //   119: aload 8
    //   121: invokespecial 354	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   124: astore 9
    //   126: aload 9
    //   128: invokevirtual 357	java/io/File:exists	()Z
    //   131: ifne +21 -> 152
    //   134: new 306	com/estrongs/android/g/j
    //   137: dup
    //   138: aload_0
    //   139: ldc_w 359
    //   142: ldc_w 310
    //   145: ldc_w 361
    //   148: invokespecial 315	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   151: areturn
    //   152: aload 9
    //   154: invokevirtual 304	java/io/File:isDirectory	()Z
    //   157: ifeq +1107 -> 1264
    //   160: aload 8
    //   162: ldc -96
    //   164: invokevirtual 342	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   167: ifne +85 -> 252
    //   170: new 168	java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   177: aload 8
    //   179: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: ldc -96
    //   184: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: astore_1
    //   191: new 306	com/estrongs/android/g/j
    //   194: dup
    //   195: aload_0
    //   196: ldc_w 363
    //   199: ldc_w 365
    //   202: new 168	java/lang/StringBuilder
    //   205: dup
    //   206: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   209: ldc_w 367
    //   212: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: aload_1
    //   216: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: ldc_w 369
    //   222: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: aload_1
    //   226: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: ldc_w 371
    //   232: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: invokespecial 315	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   241: astore_2
    //   242: aload_2
    //   243: ldc_w 373
    //   246: aload_1
    //   247: invokevirtual 376	com/estrongs/android/g/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: aload_2
    //   251: areturn
    //   252: new 293	java/io/File
    //   255: dup
    //   256: aload 9
    //   258: ldc_w 378
    //   261: invokespecial 354	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   264: invokevirtual 357	java/io/File:exists	()Z
    //   267: ifeq +299 -> 566
    //   270: new 293	java/io/File
    //   273: dup
    //   274: aload_3
    //   275: new 168	java/lang/StringBuilder
    //   278: dup
    //   279: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   282: aload 8
    //   284: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: ldc_w 380
    //   290: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   296: invokespecial 354	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   299: astore_1
    //   300: aconst_null
    //   301: astore_3
    //   302: aload_1
    //   303: invokevirtual 383	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   306: bipush 46
    //   308: invokevirtual 386	java/lang/String:lastIndexOf	(I)I
    //   311: istore 5
    //   313: iload 5
    //   315: iflt +955 -> 1270
    //   318: getstatic 54	com/estrongs/android/g/f:n	Ljava/util/Hashtable;
    //   321: aload_1
    //   322: invokevirtual 383	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   325: iload 5
    //   327: iconst_1
    //   328: iadd
    //   329: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   332: invokevirtual 392	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   335: invokevirtual 393	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   338: checkcast 162	java/lang/String
    //   341: astore_3
    //   342: goto +928 -> 1270
    //   345: aload_2
    //   346: ldc_w 395
    //   349: invokevirtual 285	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   352: astore_2
    //   353: aload_2
    //   354: ifnull +901 -> 1255
    //   357: aload_2
    //   358: ldc_w 397
    //   361: invokevirtual 339	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   364: ifeq +891 -> 1255
    //   367: aload_2
    //   368: ldc_w 397
    //   371: invokevirtual 400	java/lang/String:length	()I
    //   374: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   377: astore 8
    //   379: aload 8
    //   381: bipush 45
    //   383: invokevirtual 330	java/lang/String:indexOf	(I)I
    //   386: istore 5
    //   388: aload 8
    //   390: astore_2
    //   391: iload 5
    //   393: ifle +12 -> 405
    //   396: aload 8
    //   398: iconst_0
    //   399: iload 5
    //   401: invokevirtual 334	java/lang/String:substring	(II)Ljava/lang/String;
    //   404: astore_2
    //   405: aload_2
    //   406: invokestatic 406	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   409: lstore 6
    //   411: new 408	java/io/FileInputStream
    //   414: dup
    //   415: aload_1
    //   416: invokespecial 411	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   419: astore_2
    //   420: aload_2
    //   421: lload 6
    //   423: invokevirtual 415	java/io/FileInputStream:skip	(J)J
    //   426: pop2
    //   427: lload 6
    //   429: lconst_0
    //   430: lcmp
    //   431: ifne +807 -> 1238
    //   434: new 306	com/estrongs/android/g/j
    //   437: dup
    //   438: aload_0
    //   439: ldc_w 417
    //   442: aload_3
    //   443: aload_2
    //   444: invokespecial 420	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   447: astore_2
    //   448: aload_2
    //   449: ldc_w 422
    //   452: new 168	java/lang/StringBuilder
    //   455: dup
    //   456: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   459: ldc -103
    //   461: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: aload_1
    //   465: invokevirtual 425	java/io/File:length	()J
    //   468: lload 6
    //   470: lsub
    //   471: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   474: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: invokevirtual 376	com/estrongs/android/g/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   480: aload_2
    //   481: ldc_w 430
    //   484: new 168	java/lang/StringBuilder
    //   487: dup
    //   488: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   491: ldc_w 432
    //   494: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: lload 6
    //   499: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   502: ldc_w 434
    //   505: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: aload_1
    //   509: invokevirtual 425	java/io/File:length	()J
    //   512: lconst_1
    //   513: lsub
    //   514: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   517: ldc -96
    //   519: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: aload_1
    //   523: invokevirtual 425	java/io/File:length	()J
    //   526: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   529: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   532: invokevirtual 376	com/estrongs/android/g/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   535: aload_2
    //   536: ldc_w 436
    //   539: ldc_w 438
    //   542: invokevirtual 376	com/estrongs/android/g/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   545: aload_2
    //   546: areturn
    //   547: astore_1
    //   548: new 306	com/estrongs/android/g/j
    //   551: dup
    //   552: aload_0
    //   553: ldc_w 349
    //   556: ldc_w 310
    //   559: ldc_w 440
    //   562: invokespecial 315	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   565: areturn
    //   566: new 293	java/io/File
    //   569: dup
    //   570: aload 9
    //   572: ldc_w 442
    //   575: invokespecial 354	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   578: invokevirtual 357	java/io/File:exists	()Z
    //   581: ifeq +36 -> 617
    //   584: new 293	java/io/File
    //   587: dup
    //   588: aload_3
    //   589: new 168	java/lang/StringBuilder
    //   592: dup
    //   593: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   596: aload 8
    //   598: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: ldc_w 444
    //   604: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   607: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   610: invokespecial 354	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   613: astore_1
    //   614: goto -314 -> 300
    //   617: iload 4
    //   619: ifeq +594 -> 1213
    //   622: aload 9
    //   624: invokevirtual 448	java/io/File:list	()[Ljava/lang/String;
    //   627: astore_3
    //   628: new 168	java/lang/StringBuilder
    //   631: dup
    //   632: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   635: ldc_w 450
    //   638: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   641: aload 8
    //   643: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   646: ldc_w 452
    //   649: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   652: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   655: astore_2
    //   656: aload_2
    //   657: astore_1
    //   658: aload 8
    //   660: invokevirtual 400	java/lang/String:length	()I
    //   663: iconst_1
    //   664: if_icmple +86 -> 750
    //   667: aload 8
    //   669: iconst_0
    //   670: aload 8
    //   672: invokevirtual 400	java/lang/String:length	()I
    //   675: iconst_1
    //   676: isub
    //   677: invokevirtual 334	java/lang/String:substring	(II)Ljava/lang/String;
    //   680: astore 10
    //   682: aload 10
    //   684: bipush 47
    //   686: invokevirtual 386	java/lang/String:lastIndexOf	(I)I
    //   689: istore 5
    //   691: aload_2
    //   692: astore_1
    //   693: iload 5
    //   695: iflt +55 -> 750
    //   698: aload_2
    //   699: astore_1
    //   700: iload 5
    //   702: aload 10
    //   704: invokevirtual 400	java/lang/String:length	()I
    //   707: if_icmpge +43 -> 750
    //   710: new 168	java/lang/StringBuilder
    //   713: dup
    //   714: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   717: aload_2
    //   718: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   721: ldc_w 454
    //   724: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   727: aload 8
    //   729: iconst_0
    //   730: iload 5
    //   732: iconst_1
    //   733: iadd
    //   734: invokevirtual 334	java/lang/String:substring	(II)Ljava/lang/String;
    //   737: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   740: ldc_w 456
    //   743: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   746: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   749: astore_1
    //   750: iconst_0
    //   751: istore 5
    //   753: iload 5
    //   755: aload_3
    //   756: arraylength
    //   757: if_icmpge +421 -> 1178
    //   760: new 293	java/io/File
    //   763: dup
    //   764: aload 9
    //   766: aload_3
    //   767: iload 5
    //   769: aaload
    //   770: invokespecial 354	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   773: astore 10
    //   775: aload 10
    //   777: invokevirtual 304	java/io/File:isDirectory	()Z
    //   780: istore 4
    //   782: aload_1
    //   783: astore_2
    //   784: iload 4
    //   786: ifeq +50 -> 836
    //   789: new 168	java/lang/StringBuilder
    //   792: dup
    //   793: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   796: aload_1
    //   797: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   800: ldc_w 458
    //   803: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   806: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   809: astore_2
    //   810: aload_3
    //   811: iload 5
    //   813: new 168	java/lang/StringBuilder
    //   816: dup
    //   817: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   820: aload_3
    //   821: iload 5
    //   823: aaload
    //   824: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   827: ldc -96
    //   829: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   832: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   835: aastore
    //   836: new 168	java/lang/StringBuilder
    //   839: dup
    //   840: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   843: aload_2
    //   844: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   847: ldc_w 460
    //   850: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   853: aload_0
    //   854: new 168	java/lang/StringBuilder
    //   857: dup
    //   858: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   861: aload 8
    //   863: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: aload_3
    //   867: iload 5
    //   869: aaload
    //   870: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   873: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   876: invokespecial 462	com/estrongs/android/g/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   879: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   882: ldc_w 369
    //   885: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   888: aload_3
    //   889: iload 5
    //   891: aaload
    //   892: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   895: ldc_w 464
    //   898: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   901: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   904: astore_2
    //   905: aload_2
    //   906: astore_1
    //   907: aload 10
    //   909: invokevirtual 467	java/io/File:isFile	()Z
    //   912: ifeq +87 -> 999
    //   915: aload 10
    //   917: invokevirtual 425	java/io/File:length	()J
    //   920: lstore 6
    //   922: new 168	java/lang/StringBuilder
    //   925: dup
    //   926: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   929: aload_2
    //   930: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   933: ldc_w 469
    //   936: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   939: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   942: astore_1
    //   943: lload 6
    //   945: ldc2_w 470
    //   948: lcmp
    //   949: ifge +108 -> 1057
    //   952: new 168	java/lang/StringBuilder
    //   955: dup
    //   956: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   959: aload_1
    //   960: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   963: lload 6
    //   965: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   968: ldc_w 473
    //   971: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   974: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   977: astore_1
    //   978: new 168	java/lang/StringBuilder
    //   981: dup
    //   982: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   985: aload_1
    //   986: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   989: ldc_w 475
    //   992: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   995: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   998: astore_1
    //   999: new 168	java/lang/StringBuilder
    //   1002: dup
    //   1003: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   1006: aload_1
    //   1007: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1010: ldc_w 477
    //   1013: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1016: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1019: astore_2
    //   1020: aload_2
    //   1021: astore_1
    //   1022: iload 4
    //   1024: ifeq +24 -> 1048
    //   1027: new 168	java/lang/StringBuilder
    //   1030: dup
    //   1031: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   1034: aload_2
    //   1035: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1038: ldc_w 479
    //   1041: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1044: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1047: astore_1
    //   1048: iload 5
    //   1050: iconst_1
    //   1051: iadd
    //   1052: istore 5
    //   1054: goto -301 -> 753
    //   1057: lload 6
    //   1059: ldc2_w 480
    //   1062: lcmp
    //   1063: ifge +59 -> 1122
    //   1066: new 168	java/lang/StringBuilder
    //   1069: dup
    //   1070: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   1073: aload_1
    //   1074: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1077: lload 6
    //   1079: ldc2_w 470
    //   1082: ldiv
    //   1083: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1086: ldc_w 483
    //   1089: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1092: lload 6
    //   1094: ldc2_w 470
    //   1097: lrem
    //   1098: ldc2_w 484
    //   1101: ldiv
    //   1102: ldc2_w 486
    //   1105: lrem
    //   1106: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1109: ldc_w 489
    //   1112: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1115: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1118: astore_1
    //   1119: goto -141 -> 978
    //   1122: new 168	java/lang/StringBuilder
    //   1125: dup
    //   1126: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   1129: aload_1
    //   1130: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1133: lload 6
    //   1135: ldc2_w 480
    //   1138: ldiv
    //   1139: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1142: ldc_w 483
    //   1145: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1148: lload 6
    //   1150: ldc2_w 480
    //   1153: lrem
    //   1154: ldc2_w 484
    //   1157: ldiv
    //   1158: ldc2_w 486
    //   1161: lrem
    //   1162: invokevirtual 428	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1165: ldc_w 491
    //   1168: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1171: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1174: astore_1
    //   1175: goto -197 -> 978
    //   1178: new 306	com/estrongs/android/g/j
    //   1181: dup
    //   1182: aload_0
    //   1183: ldc_w 417
    //   1186: ldc_w 365
    //   1189: new 168	java/lang/StringBuilder
    //   1192: dup
    //   1193: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   1196: aload_1
    //   1197: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1200: ldc_w 493
    //   1203: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1206: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1209: invokespecial 315	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1212: areturn
    //   1213: new 306	com/estrongs/android/g/j
    //   1216: dup
    //   1217: aload_0
    //   1218: ldc_w 349
    //   1221: ldc_w 310
    //   1224: ldc_w 495
    //   1227: invokespecial 315	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1230: areturn
    //   1231: astore_2
    //   1232: lconst_0
    //   1233: lstore 6
    //   1235: goto -824 -> 411
    //   1238: new 306	com/estrongs/android/g/j
    //   1241: dup
    //   1242: aload_0
    //   1243: ldc_w 497
    //   1246: aload_3
    //   1247: aload_2
    //   1248: invokespecial 420	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   1251: astore_2
    //   1252: goto -804 -> 448
    //   1255: lconst_0
    //   1256: lstore 6
    //   1258: goto -847 -> 411
    //   1261: goto -916 -> 345
    //   1264: aload 9
    //   1266: astore_1
    //   1267: goto -967 -> 300
    //   1270: aload_3
    //   1271: ifnonnull -10 -> 1261
    //   1274: ldc_w 499
    //   1277: astore_3
    //   1278: goto -933 -> 345
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1281	0	this	f
    //   0	1281	1	paramString	String
    //   0	1281	2	paramProperties	Properties
    //   0	1281	3	paramFile	File
    //   0	1281	4	paramBoolean	boolean
    //   311	742	5	i1	int
    //   409	848	6	l1	long
    //   39	823	8	str	String
    //   124	1141	9	localFile	File
    //   680	236	10	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   302	313	547	java/io/IOException
    //   318	342	547	java/io/IOException
    //   345	353	547	java/io/IOException
    //   357	388	547	java/io/IOException
    //   396	405	547	java/io/IOException
    //   405	411	547	java/io/IOException
    //   411	427	547	java/io/IOException
    //   434	448	547	java/io/IOException
    //   448	545	547	java/io/IOException
    //   1238	1252	547	java/io/IOException
    //   405	411	1231	java/lang/NumberFormatException
  }
  
  byte[] g()
  {
    return i;
  }
  
  /* Error */
  public void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 122	com/estrongs/android/g/f:j	Z
    //   5: new 504	java/net/Socket
    //   8: dup
    //   9: invokespecial 505	java/net/Socket:<init>	()V
    //   12: astore_1
    //   13: aload_1
    //   14: new 507	java/net/InetSocketAddress
    //   17: dup
    //   18: ldc_w 509
    //   21: invokestatic 515	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   24: aload_0
    //   25: getfield 124	com/estrongs/android/g/f:a	I
    //   28: invokespecial 518	java/net/InetSocketAddress:<init>	(Ljava/net/InetAddress;I)V
    //   31: invokevirtual 522	java/net/Socket:connect	(Ljava/net/SocketAddress;)V
    //   34: aload_1
    //   35: invokevirtual 525	java/net/Socket:close	()V
    //   38: aload_0
    //   39: getfield 130	com/estrongs/android/g/f:k	Ljava/net/ServerSocket;
    //   42: invokevirtual 526	java/net/ServerSocket:close	()V
    //   45: aload_0
    //   46: getfield 142	com/estrongs/android/g/f:b	Ljava/lang/Thread;
    //   49: invokevirtual 529	java/lang/Thread:join	()V
    //   52: aload_0
    //   53: getfield 109	com/estrongs/android/g/f:d	Ljava/lang/Object;
    //   56: astore_1
    //   57: aload_1
    //   58: monitorenter
    //   59: aload_0
    //   60: getfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   63: ifnull +15 -> 78
    //   66: aload_0
    //   67: getfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   70: invokevirtual 532	java/util/Timer:cancel	()V
    //   73: aload_0
    //   74: aconst_null
    //   75: putfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   78: aload_0
    //   79: getfield 111	com/estrongs/android/g/f:e	Lcom/estrongs/android/ui/notification/d;
    //   82: ifnull +15 -> 97
    //   85: aload_0
    //   86: getfield 111	com/estrongs/android/g/f:e	Lcom/estrongs/android/ui/notification/d;
    //   89: invokevirtual 536	com/estrongs/android/ui/notification/d:e	()V
    //   92: aload_0
    //   93: aconst_null
    //   94: putfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   97: aload_1
    //   98: monitorexit
    //   99: return
    //   100: astore_2
    //   101: aload_1
    //   102: monitorexit
    //   103: aload_2
    //   104: athrow
    //   105: astore_1
    //   106: aload_1
    //   107: invokevirtual 539	java/lang/Exception:printStackTrace	()V
    //   110: return
    //   111: astore_1
    //   112: aload_0
    //   113: getfield 130	com/estrongs/android/g/f:k	Ljava/net/ServerSocket;
    //   116: invokevirtual 526	java/net/ServerSocket:close	()V
    //   119: aload_0
    //   120: getfield 142	com/estrongs/android/g/f:b	Ljava/lang/Thread;
    //   123: invokevirtual 529	java/lang/Thread:join	()V
    //   126: aload_0
    //   127: getfield 109	com/estrongs/android/g/f:d	Ljava/lang/Object;
    //   130: astore_1
    //   131: aload_1
    //   132: monitorenter
    //   133: aload_0
    //   134: getfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   137: ifnull +15 -> 152
    //   140: aload_0
    //   141: getfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   144: invokevirtual 532	java/util/Timer:cancel	()V
    //   147: aload_0
    //   148: aconst_null
    //   149: putfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   152: aload_0
    //   153: getfield 111	com/estrongs/android/g/f:e	Lcom/estrongs/android/ui/notification/d;
    //   156: ifnull +15 -> 171
    //   159: aload_0
    //   160: getfield 111	com/estrongs/android/g/f:e	Lcom/estrongs/android/ui/notification/d;
    //   163: invokevirtual 536	com/estrongs/android/ui/notification/d:e	()V
    //   166: aload_0
    //   167: aconst_null
    //   168: putfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   171: aload_1
    //   172: monitorexit
    //   173: return
    //   174: astore_2
    //   175: aload_1
    //   176: monitorexit
    //   177: aload_2
    //   178: athrow
    //   179: astore_1
    //   180: aload_1
    //   181: invokevirtual 539	java/lang/Exception:printStackTrace	()V
    //   184: return
    //   185: astore_1
    //   186: aload_0
    //   187: getfield 130	com/estrongs/android/g/f:k	Ljava/net/ServerSocket;
    //   190: invokevirtual 526	java/net/ServerSocket:close	()V
    //   193: aload_0
    //   194: getfield 142	com/estrongs/android/g/f:b	Ljava/lang/Thread;
    //   197: invokevirtual 529	java/lang/Thread:join	()V
    //   200: aload_0
    //   201: getfield 109	com/estrongs/android/g/f:d	Ljava/lang/Object;
    //   204: astore_2
    //   205: aload_2
    //   206: monitorenter
    //   207: aload_0
    //   208: getfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   211: ifnull +15 -> 226
    //   214: aload_0
    //   215: getfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   218: invokevirtual 532	java/util/Timer:cancel	()V
    //   221: aload_0
    //   222: aconst_null
    //   223: putfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   226: aload_0
    //   227: getfield 111	com/estrongs/android/g/f:e	Lcom/estrongs/android/ui/notification/d;
    //   230: ifnull +15 -> 245
    //   233: aload_0
    //   234: getfield 111	com/estrongs/android/g/f:e	Lcom/estrongs/android/ui/notification/d;
    //   237: invokevirtual 536	com/estrongs/android/ui/notification/d:e	()V
    //   240: aload_0
    //   241: aconst_null
    //   242: putfield 116	com/estrongs/android/g/f:f	Ljava/util/Timer;
    //   245: aload_2
    //   246: monitorexit
    //   247: aload_1
    //   248: athrow
    //   249: astore_3
    //   250: aload_2
    //   251: monitorexit
    //   252: aload_3
    //   253: athrow
    //   254: astore_2
    //   255: aload_2
    //   256: invokevirtual 539	java/lang/Exception:printStackTrace	()V
    //   259: goto -12 -> 247
    //   262: astore_2
    //   263: goto -63 -> 200
    //   266: astore_1
    //   267: goto -141 -> 126
    //   270: astore_1
    //   271: goto -219 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	274	0	this	f
    //   12	90	1	localObject1	Object
    //   105	2	1	localException1	Exception
    //   111	1	1	localException2	Exception
    //   130	46	1	localObject2	Object
    //   179	2	1	localException3	Exception
    //   185	63	1	localObject3	Object
    //   266	1	1	localException4	Exception
    //   270	1	1	localException5	Exception
    //   100	4	2	localObject4	Object
    //   174	4	2	localObject5	Object
    //   254	2	2	localException6	Exception
    //   262	1	2	localException7	Exception
    //   249	4	3	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   59	78	100	finally
    //   78	97	100	finally
    //   97	99	100	finally
    //   101	103	100	finally
    //   52	59	105	java/lang/Exception
    //   103	105	105	java/lang/Exception
    //   0	38	111	java/lang/Exception
    //   133	152	174	finally
    //   152	171	174	finally
    //   171	173	174	finally
    //   175	177	174	finally
    //   126	133	179	java/lang/Exception
    //   177	179	179	java/lang/Exception
    //   0	38	185	finally
    //   207	226	249	finally
    //   226	245	249	finally
    //   245	247	249	finally
    //   250	252	249	finally
    //   200	207	254	java/lang/Exception
    //   252	254	254	java/lang/Exception
    //   186	200	262	java/lang/Exception
    //   112	126	266	java/lang/Exception
    //   38	52	270	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.g.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */