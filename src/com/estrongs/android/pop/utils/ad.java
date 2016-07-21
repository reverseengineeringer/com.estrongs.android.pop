package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.impl.media.e;
import com.estrongs.fs.impl.n.d;
import com.estrongs.fs.w;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ad
{
  public static String a = com.estrongs.android.pop.a.b + "/hide2.txt";
  public static Set<al> c = new HashSet();
  public static Object d = new Object();
  public static boolean e = false;
  public static ad f = new ad();
  private static volatile int g = 0;
  private static String h = null;
  public ai b = new ai("root", false, true);
  private ArrayList<String> i = new ArrayList();
  private ArrayList<String> j = new ArrayList();
  
  private String a(InputStream paramInputStream, int paramInt)
  {
    byte[] arrayOfByte = new byte['Ȁ'];
    paramInputStream.read(arrayOfByte, 0, paramInt);
    arrayOfByte[paramInt] = 0;
    return new String(arrayOfByte, 0, paramInt);
  }
  
  public static String a(String paramString)
  {
    if ((paramString == null) || ((!paramString.startsWith("/")) && (!paramString.startsWith("file:///")) && (!paramString.startsWith("FILE:///")))) {
      return paramString;
    }
    synchronized (f)
    {
      if ((paramString.startsWith("file://")) || (paramString.startsWith("FILE://")))
      {
        paramString = fnsubstring7a;
        return paramString;
      }
    }
    paramString = fna;
    return paramString;
  }
  
  /* Error */
  public static List<h> a(List<h> paramList)
  {
    // Byte code:
    //   0: new 76	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 77	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: new 124	java/util/LinkedList
    //   12: dup
    //   13: invokespecial 125	java/util/LinkedList:<init>	()V
    //   16: astore 5
    //   18: getstatic 62	com/estrongs/android/pop/utils/ad:f	Lcom/estrongs/android/pop/utils/ad;
    //   21: astore_3
    //   22: aload_3
    //   23: monitorenter
    //   24: iconst_0
    //   25: istore_1
    //   26: iload_1
    //   27: aload_0
    //   28: invokeinterface 131 1 0
    //   33: if_icmpge +64 -> 97
    //   36: aload_0
    //   37: iload_1
    //   38: invokeinterface 135 2 0
    //   43: checkcast 137	com/estrongs/fs/h
    //   46: astore 6
    //   48: aload 6
    //   50: invokestatic 140	com/estrongs/android/pop/utils/ad:a	(Lcom/estrongs/fs/h;)Z
    //   53: istore_2
    //   54: getstatic 62	com/estrongs/android/pop/utils/ad:f	Lcom/estrongs/android/pop/utils/ad;
    //   57: aload 6
    //   59: invokeinterface 143 1 0
    //   64: aload 6
    //   66: invokeinterface 147 1 0
    //   71: invokevirtual 152	com/estrongs/fs/w:a	()Z
    //   74: aload 4
    //   76: iload_2
    //   77: invokevirtual 155	com/estrongs/android/pop/utils/ad:a	(Ljava/lang/String;ZLjava/util/List;Z)V
    //   80: aload 5
    //   82: aload 6
    //   84: invokeinterface 159 2 0
    //   89: pop
    //   90: iload_1
    //   91: iconst_1
    //   92: iadd
    //   93: istore_1
    //   94: goto -68 -> 26
    //   97: invokestatic 161	com/estrongs/android/pop/utils/ad:b	()V
    //   100: iconst_0
    //   101: putstatic 57	com/estrongs/android/pop/utils/ad:e	Z
    //   104: aload_3
    //   105: monitorexit
    //   106: aload 4
    //   108: invokeinterface 131 1 0
    //   113: ifle +22 -> 135
    //   116: new 163	java/lang/Thread
    //   119: dup
    //   120: new 165	com/estrongs/android/pop/utils/af
    //   123: dup
    //   124: aload 4
    //   126: invokespecial 168	com/estrongs/android/pop/utils/af:<init>	(Ljava/util/List;)V
    //   129: invokespecial 171	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   132: invokevirtual 174	java/lang/Thread:start	()V
    //   135: aload 5
    //   137: areturn
    //   138: astore_0
    //   139: aload_3
    //   140: monitorexit
    //   141: aload_0
    //   142: athrow
    //   143: astore_0
    //   144: goto -40 -> 104
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	paramList	List<h>
    //   25	69	1	k	int
    //   53	24	2	bool	boolean
    //   21	119	3	localad	ad
    //   7	118	4	localArrayList	ArrayList
    //   16	120	5	localLinkedList	java.util.LinkedList
    //   46	37	6	localh	h
    // Exception table:
    //   from	to	target	type
    //   26	90	138	finally
    //   97	104	138	finally
    //   104	106	138	finally
    //   139	141	138	finally
    //   97	104	143	java/lang/Exception
  }
  
  public static void a()
  {
    synchronized (c)
    {
      c.clear();
      return;
    }
  }
  
  private void a(ai paramai, ArrayList<aj> paramArrayList, String paramString1, String paramString2, int paramInt)
  {
    String str;
    if (paramString1 == null)
    {
      str = a;
      paramString1 = null;
      if ((paramInt != 1) || (a.equals("local"))) {
        break label163;
      }
      paramString1 = a + "://";
      label53:
      if (b) {
        paramArrayList.add(new aj(str, c, paramString1));
      }
      if ((d != null) && (d.size() != 0)) {
        break label312;
      }
    }
    for (;;)
    {
      return;
      if (paramString1.equals("/"))
      {
        str = paramString1 + a;
        break;
      }
      str = paramString1 + "/" + a;
      break;
      label163:
      if (paramInt == 2)
      {
        if (paramString2 != null)
        {
          k = a.lastIndexOf('@');
          if (k > 0) {}
          for (paramString1 = paramString2 + a.substring(k + 1);; paramString1 = paramString2 + a) {
            break;
          }
        }
        paramString1 = "/" + a;
        break label53;
      }
      if (paramInt <= 2) {
        break label53;
      }
      paramString1 = paramString2 + "/" + a;
      break label53;
      label312:
      int k = 0;
      while (k < d.size())
      {
        a((ai)d.get(k), paramArrayList, str, paramString1, paramInt + 1);
        k += 1;
      }
    }
  }
  
  private void a(File paramFile, List<String> paramList)
  {
    if (paramFile.isDirectory())
    {
      paramFile = paramFile.listFiles();
      if (paramFile != null)
      {
        int m = paramFile.length;
        int k = 0;
        while (k < m)
        {
          a(paramFile[k], paramList);
          k += 1;
        }
      }
    }
    else
    {
      paramList.add(paramFile.getAbsolutePath());
    }
  }
  
  public static void a(String arg0, int paramInt)
  {
    String str = a(???);
    synchronized (c)
    {
      c.add(new al(str, paramInt));
      return;
    }
  }
  
  public static boolean a(ai paramai, h paramh, int paramInt)
  {
    if ((paramai == null) || (d == null)) {
      return false;
    }
    Object localObject1 = paramh.getName();
    Object localObject2 = paramh.getAbsolutePath();
    paramh = (h)localObject1;
    if (((String)localObject1).endsWith("/")) {
      paramh = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
    }
    if ((ap.bl((String)localObject2)) && ((!ap.bC((String)localObject2)) || (ap.bE((String)localObject2))))
    {
      localObject2 = f.n((String)localObject2);
      if (b)
      {
        localObject1 = d(ap.bB(a), paramInt);
        if ((localObject1 != null) && (d != null))
        {
          paramh = ap.d(a);
          paramai = (ai)localObject1;
        }
      }
    }
    for (;;)
    {
      paramInt = 0;
      while (paramInt < d.size())
      {
        localObject1 = (ai)d.get(paramInt);
        if ((b) && (a.equals(paramh))) {
          return true;
        }
        paramInt += 1;
      }
      break;
    }
  }
  
  protected static boolean a(h paramh)
  {
    if ((!(paramh instanceof f)) || (!paramh.getFileType().a())) {
      return true;
    }
    return a(paramh.getName(), paramh.getAbsolutePath());
  }
  
  private boolean a(InputStream paramInputStream)
  {
    return paramInputStream.read() != 48;
  }
  
  protected static boolean a(String paramString1, String paramString2)
  {
    if ((paramString1.equals("Android")) || (paramString1.equalsIgnoreCase("DCIM")))
    {
      paramString1 = new File(paramString2).getParent();
      if (paramString1 == null) {
        return true;
      }
      paramString2 = ap.bV(paramString1);
      paramString1 = paramString2;
      if (!paramString2.endsWith("/")) {
        paramString1 = paramString2 + "/";
      }
      String str = b.b();
      paramString2 = str;
      if (!str.endsWith("/")) {
        paramString2 = str + "/";
      }
      if (paramString1.equals(paramString2)) {
        return false;
      }
    }
    return true;
  }
  
  public static String[] a(aj[] paramArrayOfaj)
  {
    String[] arrayOfString = new String[paramArrayOfaj.length];
    int k = 0;
    while (k < paramArrayOfaj.length)
    {
      arrayOfString[k] = d(b);
      k += 1;
    }
    return arrayOfString;
  }
  
  private int b(InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte['Ȁ'];
    int k = 0;
    for (;;)
    {
      arrayOfByte[k] = ((byte)(paramInputStream.read() & 0xFF));
      if (arrayOfByte[k] == 32)
      {
        arrayOfByte[k] = 0;
        paramInputStream = new String(arrayOfByte, 0, k);
      }
      try
      {
        k = Integer.parseInt(paramInputStream);
        return k;
      }
      catch (Exception paramInputStream) {}
      k += 1;
    }
    return 0;
  }
  
  public static void b()
  {
    synchronized (f)
    {
      new File(a).delete();
      try
      {
        OutputStream localOutputStream = i.f(a);
        ad localad2 = f;
        ad localad3 = f;
        localad3.getClass();
        localad2.a(null, localOutputStream, new am(localad3, true, 0));
        localOutputStream.flush();
        localOutputStream.close();
        return;
      }
      catch (Exception localException) {}
    }
  }
  
  public static void b(String paramString, List<String> paramList)
  {
    synchronized (f)
    {
      boolean bool = b(d(paramString));
      f.a(paramString, paramList, bool);
      return;
    }
  }
  
  protected static boolean b(String paramString)
  {
    if (!ap.bl(paramString)) {}
    do
    {
      return true;
      paramString = new File(paramString);
    } while ((!paramString.exists()) || (!paramString.isDirectory()));
    return a(paramString.getName(), paramString.getAbsolutePath());
  }
  
  public static boolean b(String paramString, int paramInt)
  {
    for (;;)
    {
      Object localObject3;
      synchronized (c)
      {
        if (c.size() == 0) {
          return false;
        }
        localObject1 = null;
        Iterator localIterator = c.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        al localal = (al)localIterator.next();
        localObject3 = localObject1;
        if (paramInt == b)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = a(paramString);
          }
          localObject3 = localObject2;
          if (((String)localObject2).startsWith(a)) {
            return true;
          }
        }
      }
      Object localObject1 = localObject3;
    }
    return false;
  }
  
  public static void c()
  {
    a = com.estrongs.android.pop.a.b + "/hide2.txt";
    if ((h != null) && (!h.equalsIgnoreCase(a))) {
      g = 0;
    }
  }
  
  public static void c(String paramString)
  {
    b(paramString, null);
  }
  
  public static void c(String paramString, int paramInt)
  {
    ArrayList localArrayList;
    synchronized (c)
    {
      if (c.size() == 0) {
        return;
      }
      paramString = a(paramString);
      localArrayList = new ArrayList();
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        al localal = (al)localIterator.next();
        if ((b == paramInt) && (a.length() - 1 > paramString.length()) && (a.startsWith(paramString))) {
          localArrayList.add(localal);
        }
      }
    }
    paramInt = 0;
    while (paramInt < localArrayList.size())
    {
      c.remove(localArrayList.get(paramInt));
      paramInt += 1;
    }
  }
  
  public static ai d(String paramString, int paramInt)
  {
    synchronized (f)
    {
      paramString = f.a(paramString, false, paramInt);
      return paramString;
    }
  }
  
  public static String d(String paramString)
  {
    try
    {
      int k = paramString.indexOf('/');
      int m = paramString.indexOf('/', k + 1);
      String str = paramString.substring(m);
      paramString = paramString.substring(k + 1, m);
      if (paramString.equals("local")) {
        return str;
      }
      paramString = paramString + ":/" + str;
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static void d()
  {
    synchronized (f)
    {
      if (h == null) {
        h = a;
      }
      if (g == 1) {
        return;
      }
      h = a;
    }
    try
    {
      Object localObject1 = i.a(null, a);
      if (localObject1 != null)
      {
        localObject4 = f;
        localObject5 = f;
        localObject5.getClass();
        ((ad)localObject4).a(null, (InputStream)localObject1, new ak((ad)localObject5, false, 0));
        ((InputStream)localObject1).close();
      }
      g = 1;
      if (z.l != null)
      {
        localObject1 = z.l.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject4 = (String)((Iterator)localObject1).next();
          localObject5 = new File((String)localObject4);
          f.a((String)localObject4, ((File)localObject5).isDirectory(), null, false);
          localObject4 = f;
          e = true;
          continue;
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
      }
    }
    catch (Exception localException)
    {
      g = 2;
      if (z.l != null)
      {
        Iterator localIterator = z.l.iterator();
        while (localIterator.hasNext())
        {
          localObject4 = (String)localIterator.next();
          localObject5 = new File((String)localObject4);
          f.a((String)localObject4, ((File)localObject5).isDirectory(), null, false);
          localObject4 = f;
          e = true;
        }
      }
      return;
    }
    finally
    {
      Object localObject4;
      Object localObject5;
      if (z.l != null)
      {
        localObject4 = z.l.iterator();
        while (((Iterator)localObject4).hasNext())
        {
          localObject5 = (String)((Iterator)localObject4).next();
          File localFile = new File((String)localObject5);
          f.a((String)localObject5, localFile.isDirectory(), null, false);
          localObject5 = f;
          e = true;
        }
      }
    }
  }
  
  public static void e()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (f)
    {
      f.a(z.l, localArrayList);
      if (localArrayList.size() > 0) {
        new Thread(new ag(localArrayList)).start();
      }
      return;
    }
  }
  
  public static aj[] f()
  {
    if (g == 0) {
      d();
    }
    synchronized (f)
    {
      aj[] arrayOfaj = f.b(z.l);
      return arrayOfaj;
    }
  }
  
  private String g(String paramString)
  {
    if (paramString.startsWith("/")) {
      return "local";
    }
    int k = paramString.indexOf("://");
    if (k >= 0) {
      return paramString.substring(0, k);
    }
    return null;
  }
  
  private String h(String paramString)
  {
    if (paramString.startsWith("/")) {
      return paramString.substring(1);
    }
    int k = paramString.indexOf("://");
    if (k >= 0) {
      return paramString.substring(k + 3);
    }
    return null;
  }
  
  private ai i(String paramString)
  {
    if (b.d == null) {
      b.d = new ArrayList();
    }
    int k = 0;
    while (k < b.d.size())
    {
      ai localai = (ai)b.d.get(k);
      if (a.equals(paramString)) {
        return localai;
      }
      k += 1;
    }
    paramString = new ai(paramString, false, true);
    b.d.add(paramString);
    return paramString;
  }
  
  private boolean j(String paramString)
  {
    paramString = ap.bW(paramString);
    return new File(paramString + ".nomedia").exists();
  }
  
  /* Error */
  private boolean k(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_1
    //   3: invokestatic 422	com/estrongs/android/util/ap:bW	(Ljava/lang/String;)Ljava/lang/String;
    //   6: astore_3
    //   7: new 217	java/io/File
    //   10: dup
    //   11: new 28	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   18: aload_3
    //   19: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: ldc_w 424
    //   25: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 45	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokespecial 289	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: astore 5
    //   36: aload 5
    //   38: invokevirtual 347	java/io/File:exists	()Z
    //   41: ifeq +5 -> 46
    //   44: iload_2
    //   45: ireturn
    //   46: aconst_null
    //   47: astore_1
    //   48: new 428	java/io/FileOutputStream
    //   51: dup
    //   52: new 28	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   59: aload_3
    //   60: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc_w 424
    //   66: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 45	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: invokespecial 429	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   75: astore_3
    //   76: aload_3
    //   77: astore_1
    //   78: aload_3
    //   79: ldc_w 431
    //   82: invokevirtual 435	java/lang/String:getBytes	()[B
    //   85: invokevirtual 439	java/io/FileOutputStream:write	([B)V
    //   88: aload_3
    //   89: ifnull -45 -> 44
    //   92: aload_3
    //   93: invokevirtual 440	java/io/FileOutputStream:close	()V
    //   96: iconst_1
    //   97: ireturn
    //   98: astore_1
    //   99: aload_1
    //   100: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   103: iconst_1
    //   104: ireturn
    //   105: astore 4
    //   107: aconst_null
    //   108: astore_3
    //   109: aload_3
    //   110: astore_1
    //   111: aload 4
    //   113: invokevirtual 444	java/lang/Exception:printStackTrace	()V
    //   116: aload_3
    //   117: astore_1
    //   118: aload 5
    //   120: invokevirtual 312	java/io/File:delete	()Z
    //   123: pop
    //   124: iconst_0
    //   125: istore_2
    //   126: aload_3
    //   127: ifnull -83 -> 44
    //   130: aload_3
    //   131: invokevirtual 440	java/io/FileOutputStream:close	()V
    //   134: iconst_0
    //   135: ireturn
    //   136: astore_1
    //   137: aload_1
    //   138: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   141: iconst_0
    //   142: ireturn
    //   143: astore 4
    //   145: aload_1
    //   146: astore_3
    //   147: aload 4
    //   149: astore_1
    //   150: aload_3
    //   151: ifnull +7 -> 158
    //   154: aload_3
    //   155: invokevirtual 440	java/io/FileOutputStream:close	()V
    //   158: aload_1
    //   159: athrow
    //   160: astore_3
    //   161: aload_3
    //   162: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   165: goto -7 -> 158
    //   168: astore 4
    //   170: aload_1
    //   171: astore_3
    //   172: aload 4
    //   174: astore_1
    //   175: goto -25 -> 150
    //   178: astore 4
    //   180: goto -71 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	ad
    //   0	183	1	paramString	String
    //   1	125	2	bool	boolean
    //   6	149	3	localObject1	Object
    //   160	2	3	localIOException	java.io.IOException
    //   171	1	3	str	String
    //   105	7	4	localException1	Exception
    //   143	5	4	localObject2	Object
    //   168	5	4	localObject3	Object
    //   178	1	4	localException2	Exception
    //   34	85	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   92	96	98	java/io/IOException
    //   48	76	105	java/lang/Exception
    //   130	134	136	java/io/IOException
    //   48	76	143	finally
    //   154	158	160	java/io/IOException
    //   78	88	168	finally
    //   111	116	168	finally
    //   118	124	168	finally
    //   78	88	178	java/lang/Exception
  }
  
  /* Error */
  private static boolean l(String paramString)
  {
    // Byte code:
    //   0: new 446	java/io/FileInputStream
    //   3: dup
    //   4: new 28	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   11: aload_0
    //   12: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: ldc_w 424
    //   18: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 45	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: invokespecial 447	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   27: astore_3
    //   28: aload_3
    //   29: astore_2
    //   30: iconst_2
    //   31: newarray <illegal type>
    //   33: astore 4
    //   35: aload_3
    //   36: astore_2
    //   37: aload_3
    //   38: aload 4
    //   40: invokevirtual 450	java/io/FileInputStream:read	([B)I
    //   43: pop
    //   44: aload_3
    //   45: astore_2
    //   46: new 90	java/lang/String
    //   49: dup
    //   50: aload 4
    //   52: invokespecial 452	java/lang/String:<init>	([B)V
    //   55: ldc_w 431
    //   58: invokevirtual 192	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   61: ifeq +53 -> 114
    //   64: aload_3
    //   65: astore_2
    //   66: new 217	java/io/File
    //   69: dup
    //   70: new 28	java/lang/StringBuilder
    //   73: dup
    //   74: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   77: aload_0
    //   78: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: ldc_w 424
    //   84: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 45	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokespecial 289	java/io/File:<init>	(Ljava/lang/String;)V
    //   93: invokevirtual 312	java/io/File:delete	()Z
    //   96: istore_1
    //   97: aload_3
    //   98: ifnull +7 -> 105
    //   101: aload_3
    //   102: invokevirtual 453	java/io/FileInputStream:close	()V
    //   105: iload_1
    //   106: ireturn
    //   107: astore_0
    //   108: aload_0
    //   109: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   112: iload_1
    //   113: ireturn
    //   114: aload_3
    //   115: ifnull +7 -> 122
    //   118: aload_3
    //   119: invokevirtual 453	java/io/FileInputStream:close	()V
    //   122: iconst_0
    //   123: ireturn
    //   124: astore_0
    //   125: aload_0
    //   126: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   129: goto -7 -> 122
    //   132: astore 4
    //   134: aconst_null
    //   135: astore_0
    //   136: aload_0
    //   137: astore_2
    //   138: aload 4
    //   140: invokevirtual 444	java/lang/Exception:printStackTrace	()V
    //   143: aload_0
    //   144: ifnull -22 -> 122
    //   147: aload_0
    //   148: invokevirtual 453	java/io/FileInputStream:close	()V
    //   151: goto -29 -> 122
    //   154: astore_0
    //   155: aload_0
    //   156: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   159: goto -37 -> 122
    //   162: astore_0
    //   163: aconst_null
    //   164: astore_2
    //   165: aload_2
    //   166: ifnull +7 -> 173
    //   169: aload_2
    //   170: invokevirtual 453	java/io/FileInputStream:close	()V
    //   173: aload_0
    //   174: athrow
    //   175: astore_2
    //   176: aload_2
    //   177: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   180: goto -7 -> 173
    //   183: astore_0
    //   184: goto -19 -> 165
    //   187: astore 4
    //   189: aload_3
    //   190: astore_0
    //   191: goto -55 -> 136
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	194	0	paramString	String
    //   96	17	1	bool	boolean
    //   29	141	2	localObject	Object
    //   175	2	2	localIOException	java.io.IOException
    //   27	163	3	localFileInputStream	java.io.FileInputStream
    //   33	18	4	arrayOfByte	byte[]
    //   132	7	4	localException1	Exception
    //   187	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   101	105	107	java/io/IOException
    //   118	122	124	java/io/IOException
    //   0	28	132	java/lang/Exception
    //   147	151	154	java/io/IOException
    //   0	28	162	finally
    //   169	173	175	java/io/IOException
    //   30	35	183	finally
    //   37	44	183	finally
    //   46	64	183	finally
    //   66	97	183	finally
    //   138	143	183	finally
    //   30	35	187	java/lang/Exception
    //   37	44	187	java/lang/Exception
    //   46	64	187	java/lang/Exception
    //   66	97	187	java/lang/Exception
  }
  
  private static void m(String paramString)
  {
    if (bk.f())
    {
      e.g(paramString);
      return;
    }
    com.estrongs.fs.impl.p.c.b().c(paramString);
    com.estrongs.fs.impl.v.c.b().c(paramString);
    d.b().c(paramString);
  }
  
  private ah n(String paramString)
  {
    Object localObject = paramString;
    try
    {
      if (!paramString.equals("/")) {
        break label786;
      }
      localObject = paramString;
      return new ah(this, paramString, false);
    }
    catch (Exception paramString)
    {
      return new ah(this, (String)localObject, false);
    }
    localObject = paramString;
    int k;
    String str1;
    label273:
    int i1;
    int i2;
    int n;
    int m;
    if (k < i.size())
    {
      localObject = paramString;
      if (paramString.startsWith((String)i.get(k)))
      {
        localObject = paramString;
        if (paramString.length() != ((String)i.get(k)).length())
        {
          localObject = paramString;
          if (paramString.charAt(((String)i.get(k)).length()) != '/') {}
        }
        else
        {
          localObject = paramString;
          return new ah(this, paramString.replace((CharSequence)i.get(k), (CharSequence)j.get(k)), true);
        }
      }
    }
    else
    {
      str1 = paramString;
      localObject = paramString;
      if (paramString.endsWith("/"))
      {
        localObject = paramString;
        str1 = paramString.substring(0, paramString.length() - 1);
      }
      localObject = str1;
      paramString = new File(str1).getCanonicalPath();
      localObject = str1;
      if (!paramString.equals("/storage/emulated/legacy"))
      {
        localObject = str1;
        if (!paramString.startsWith("/storage/emulated/legacy/")) {}
      }
      else
      {
        localObject = str1;
        paramString = paramString.replaceFirst("/storage/emulated/legacy", b.b());
        localObject = str1;
        i.add("/storage/emulated/legacy");
        localObject = str1;
        j.add(b.b());
      }
      for (k = 1;; k = 1)
      {
        localObject = str1;
        if (!str1.equalsIgnoreCase(paramString)) {
          break;
        }
        localObject = str1;
        paramString = new ah(this, paramString, false);
        return paramString;
        localObject = str1;
        if (!paramString.equals("/mnt/shell/sdcard0"))
        {
          localObject = str1;
          if (!paramString.startsWith("/mnt/shell/sdcard0/")) {
            break label781;
          }
        }
        localObject = str1;
        paramString = paramString.replaceFirst("/mnt/shell/sdcard0", b.b());
        localObject = str1;
        i.add("/mnt/shell/sdcard0");
        localObject = str1;
        j.add(b.b());
      }
      localObject = str1;
      i1 = str1.length() - 1;
      localObject = str1;
      i2 = paramString.length() - 1;
      n = i2;
      m = i1;
    }
    for (;;)
    {
      if ((m >= 0) && (n >= 0))
      {
        localObject = str1;
        if (str1.charAt(m) != paramString.charAt(n))
        {
          if (m >= i1) {
            break label771;
          }
          localObject = str1;
          i3 = i2;
          i4 = i1;
          if (str1.charAt(m + 1) == '/')
          {
            localObject = str1;
            if (paramString.charAt(n + 1) == '/') {
              break label771;
            }
            i4 = i1;
            i3 = i2;
          }
        }
      }
      for (;;)
      {
        if (i4 < 0)
        {
          localObject = str1;
          i.add(str1);
          localObject = str1;
          j.add(paramString.substring(0, i3 + str1.length() + 1));
        }
        for (;;)
        {
          localObject = str1;
          return new ah(this, paramString, true);
          localObject = str1;
          i4 = i2;
          i3 = i1;
          if (str1.charAt(m) != '/') {
            break label809;
          }
          i4 = i2;
          i3 = i1;
          if (k != 0) {
            break label809;
          }
          localObject = str1;
          String str2 = str1.substring(0, m);
          localObject = str1;
          String str3 = paramString.substring(0, n);
          if ((str2 == null) || (str3 == null)) {
            break label798;
          }
          localObject = str1;
          i3 = i2;
          i4 = i1;
          if (!new File(str2).getCanonicalPath().equals(str3)) {
            break;
          }
          break label798;
          if (i3 < 0)
          {
            localObject = str1;
            i.add(str1.substring(0, i4 + paramString.length() + 1));
            localObject = str1;
            j.add(paramString);
          }
          else
          {
            localObject = str1;
            i.add(str1.substring(0, i4 + 1));
            localObject = str1;
            j.add(paramString.substring(0, i3 + 1));
          }
        }
        label771:
        i3 = n;
        i4 = m;
      }
      label781:
      k = 0;
      break label273;
      label786:
      k = 0;
      break;
      k += 1;
      break;
      label798:
      int i3 = m - 1;
      int i4 = n - 1;
      label809:
      m -= 1;
      n -= 1;
      i2 = i4;
      i1 = i3;
    }
  }
  
  private String o(String paramString)
  {
    int k = paramString.lastIndexOf("@");
    if (k < 0) {}
    String str1;
    int m;
    do
    {
      return paramString;
      str1 = paramString.substring(k);
      m = paramString.indexOf(':');
    } while (m < 0);
    String str2 = paramString.substring(0, m);
    paramString = paramString.substring(m + 1, k);
    return str2 + ":" + bk.c(paramString) + str1;
  }
  
  private String p(String paramString)
  {
    int k = paramString.lastIndexOf("@");
    if (k < 0) {}
    String str1;
    int m;
    do
    {
      return paramString;
      str1 = paramString.substring(k);
      m = paramString.indexOf(':');
    } while (m < 0);
    String str2 = paramString.substring(0, m);
    paramString = paramString.substring(m + 1, k);
    return str2 + ":" + bk.d(paramString) + str1;
  }
  
  public ai a(String paramString, boolean paramBoolean, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    Object localObject1;
    Object localObject2;
    String[] arrayOfString;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return null;
              localObject1 = paramString;
              if (paramString.charAt(0) == '/') {
                localObject1 = na;
              }
            } while (b((String)localObject1, paramInt));
            paramString = g((String)localObject1);
          } while (paramString == null);
          localObject2 = i(paramString);
        } while (localObject2 == null);
        if ((((String)localObject1).equals("/")) || (ap.br((String)localObject1))) {
          return (ai)localObject2;
        }
        localObject1 = h((String)localObject1);
      } while (localObject1 == null);
      arrayOfString = ((String)localObject1).split("/");
    } while ((arrayOfString == null) || (arrayOfString.length == 0));
    if ((arrayOfString[0] == null) || (arrayOfString[0].length() == 0))
    {
      paramInt = 1;
      label141:
      localObject1 = i(paramString);
      localObject2 = null;
    }
    for (;;)
    {
      if (paramInt >= arrayOfString.length) {
        break label315;
      }
      if (b) {
        paramBoolean = true;
      }
      if (d == null)
      {
        if (!paramBoolean) {
          break;
        }
        return new ai("", true, true);
        paramInt = 0;
        break label141;
      }
      int m = d.size();
      int k = 0;
      for (;;)
      {
        paramString = (String)localObject1;
        if (k < d.size())
        {
          paramString = d.get(k)).a;
          if (arrayOfString[paramInt].equals(paramString)) {
            paramString = (ai)d.get(k);
          }
        }
        else
        {
          if (k < m) {
            break label302;
          }
          if (!paramBoolean) {
            break;
          }
          return new ai("", true, true);
        }
        k += 1;
      }
      label302:
      paramInt += 1;
      localObject2 = paramString;
      localObject1 = paramString;
    }
    label315:
    if (localObject2 != null) {
      e = paramBoolean;
    }
    while (!paramBoolean) {
      return (ai)localObject2;
    }
    return new ai("", true, true);
  }
  
  public void a(ai paramai, InputStream paramInputStream, ak paramak)
  {
    int k = 1;
    int n = 0;
    if (paramai == null) {}
    for (;;)
    {
      ai localai1;
      ai localai2;
      if (paramai == null)
      {
        localai1 = paramai;
        localai2 = paramai;
      }
      for (;;)
      {
        try
        {
          paramai = new ai("root", false, true);
          Object localObject = paramai;
          localai1 = paramai;
          localai2 = paramai;
          int i1 = b(paramInputStream);
          int m = i1;
          if (localObject != null)
          {
            m = i1;
            localai1 = paramai;
            localai2 = paramai;
            if (paramai.equals(localObject))
            {
              if (paramak != null)
              {
                localai1 = paramai;
                localai2 = paramai;
                b = 0;
              }
              if (i1 != -1) {
                continue;
              }
              localai1 = paramai;
              localai2 = paramai;
              i1 = b(paramInputStream);
              m = i1;
              if (paramak != null)
              {
                localai1 = paramai;
                localai2 = paramai;
                a = true;
                m = i1;
              }
            }
          }
          localai1 = paramai;
          localai2 = paramai;
          String str = a(paramInputStream, m);
          localai1 = paramai;
          localai2 = paramai;
          boolean bool1 = a(paramInputStream);
          localai1 = paramai;
          localai2 = paramai;
          boolean bool2 = a(paramInputStream);
          localai1 = paramai;
          localai2 = paramai;
          i1 = b(paramInputStream);
          localObject = str;
          if (paramak != null)
          {
            localObject = str;
            localai1 = paramai;
            localai2 = paramai;
            if (a)
            {
              localObject = str;
              localai1 = paramai;
              localai2 = paramai;
              if (b == 2)
              {
                localai1 = paramai;
                localai2 = paramai;
                localObject = p(str);
              }
            }
          }
          localai1 = paramai;
          localai2 = paramai;
          a = ((String)localObject);
          localai1 = paramai;
          localai2 = paramai;
          b = bool1;
          localai1 = paramai;
          localai2 = paramai;
          c = bool2;
          if (i1 > 0)
          {
            localai1 = paramai;
            localai2 = paramai;
            if (d == null)
            {
              localai1 = paramai;
              localai2 = paramai;
              d = new ArrayList();
            }
          }
          m = n;
          if (paramak != null)
          {
            localai1 = paramai;
            localai2 = paramai;
            b += 1;
            m = n;
          }
          if (m < i1)
          {
            localai1 = paramai;
            localai2 = paramai;
            localObject = new ai("", false, bool2);
            localai1 = paramai;
            localai2 = paramai;
            a((ai)localObject, paramInputStream, paramak);
            localai1 = paramai;
            localai2 = paramai;
            d.add(localObject);
            m += 1;
            continue;
            localai1 = paramai;
            localai2 = paramai;
            e = true;
            m = i1;
          }
          else
          {
            localObject = null;
          }
        }
        catch (Exception paramai)
        {
          localai2 = localai1;
          paramai.printStackTrace();
          return;
          if (paramak != null)
          {
            localai1 = paramai;
            localai2 = paramai;
            b -= 1;
          }
          return;
        }
        finally
        {
          if (k != 0) {
            b = localai2;
          }
        }
      }
      k = 0;
    }
  }
  
  public void a(ai paramai, OutputStream paramOutputStream, am paramam)
  {
    ai localai = paramai;
    if (paramai == null) {}
    for (;;)
    {
      try
      {
        paramai = b;
        localai = paramai;
        if (paramam != null)
        {
          b = 0;
          localai = paramai;
        }
        if (localai.equals(b)) {
          paramOutputStream.write("-1 ".getBytes());
        }
        int k;
        if (d == null)
        {
          k = 0;
          Object localObject = a;
          paramai = (ai)localObject;
          if (paramam != null)
          {
            paramai = (ai)localObject;
            if (a)
            {
              paramai = (ai)localObject;
              if (b == 2) {
                paramai = o((String)localObject);
              }
            }
          }
          localObject = new StringBuilder().append(paramai.getBytes().length).append(" ").append(paramai).append("");
          if (!b) {
            break label286;
          }
          paramai = "1";
          localObject = ((StringBuilder)localObject).append(paramai);
          if (!c) {
            break label293;
          }
          paramai = "1";
          paramOutputStream.write((paramai + k + " ").getBytes());
          if (paramam == null) {
            break label280;
          }
          b += 1;
          break label280;
          if (m < k)
          {
            a((ai)d.get(m), paramOutputStream, paramam);
            m += 1;
            continue;
          }
        }
        else
        {
          k = d.size();
          continue;
        }
        if (paramam != null) {
          b -= 1;
        }
        return;
      }
      catch (Exception paramai)
      {
        paramai.printStackTrace();
        return;
      }
      label280:
      int m = 0;
      continue;
      label286:
      paramai = "0";
      continue;
      label293:
      paramai = "0";
    }
  }
  
  public void a(String paramString, List<String> paramList)
  {
    if ((paramString == null) || (paramString.equals("/")) || (ap.br(paramString)) || (!paramString.startsWith("/"))) {}
    label29:
    String str;
    do
    {
      do
      {
        do
        {
          do
          {
            break label29;
            break label29;
            do
            {
              return;
            } while (!new File(paramString).isDirectory());
            str = paramString;
            if (!paramString.endsWith("/")) {
              str = paramString + "/";
            }
            paramString = new File(str + ".nomedia");
          } while ((!paramString.exists()) || (paramString.length() != com.estrongs.android.pop.a.v));
          if (paramList != null)
          {
            paramList.add(str);
            return;
          }
        } while (!l(str));
        paramString = str.substring(0, str.length() - 1) + "_" + System.currentTimeMillis();
      } while (!new File(str).renameTo(new File(paramString)));
      m(str);
      new File(paramString).renameTo(new File(str));
    } while (!bk.f());
    new ae(this, str).execute(true);
  }
  
  public void a(String paramString, List<String> paramList, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(d(paramString), paramList);
    }
    String[] arrayOfString = paramString.split("/");
    paramString = b;
    int k = 1;
    if ((k >= arrayOfString.length) || (d == null)) {
      label44:
      return;
    }
    int n = d.size();
    int m = 0;
    for (;;)
    {
      paramList = paramString;
      if (m < d.size())
      {
        paramList = (ai)d.get(m);
        if (!arrayOfString[k].equals(a)) {
          break label184;
        }
        if (k != arrayOfString.length - 1) {
          break label168;
        }
        if ((d != null) && (d.size() != 0)) {
          break label160;
        }
        d.remove(m);
        label136:
        e = true;
      }
      label160:
      label168:
      for (paramList = paramString;; paramList = (ai)d.get(m))
      {
        if (m >= n) {
          break label182;
        }
        k += 1;
        paramString = paramList;
        break;
        b = false;
        break label136;
      }
      label182:
      break label44;
      label184:
      m += 1;
    }
  }
  
  public void a(String paramString, boolean paramBoolean, List<String> paramList)
  {
    if ((paramString == null) || (paramString.equals("/")) || (ap.br(paramString)) || (!paramString.startsWith("/")) || (!paramBoolean)) {}
    String str;
    do
    {
      return;
      str = paramString;
      if (!paramString.endsWith("/")) {
        str = paramString + "/";
      }
    } while ((j(str)) || (paramList == null));
    paramList.add(str);
  }
  
  protected void a(String paramString, boolean paramBoolean1, List<String> paramList, boolean paramBoolean2)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramString.equals("/")) || (ap.br(paramString))) {
      return;
    }
    Object localObject2;
    Object localObject1;
    boolean bool1;
    if (paramString.charAt(0) == '/')
    {
      localObject2 = n(paramString);
      localObject1 = a;
      bool1 = b;
    }
    for (;;)
    {
      if (paramBoolean2) {
        a((String)localObject1, paramBoolean1, paramList);
      }
      int m = 0;
      if (m >= 2) {
        break;
      }
      if (m == 1) {}
      for (;;)
      {
        try
        {
          if (com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Market")) {
            break;
          }
          paramList = paramString;
          if (paramString.endsWith("/")) {
            paramList = paramString.substring(0, paramString.length() - 1);
          }
          if (!bool1) {
            break;
          }
          paramBoolean2 = ap.bC(paramList);
          if (paramBoolean2) {
            break;
          }
          localObject1 = paramList;
          paramString = g(paramList);
          if (paramString == null) {
            break;
          }
          localObject2 = h(paramList);
          if (localObject2 == null) {
            break;
          }
          String[] arrayOfString = ((String)localObject2).split("/");
          int k;
          int n;
          if ((arrayOfString[0] == null) || (arrayOfString[0].length() == 0))
          {
            k = 1;
            paramString = i(paramString);
            if (k >= arrayOfString.length) {
              continue;
            }
            if (d == null) {
              d = new ArrayList();
            }
            int i1 = d.size();
            n = 0;
            if (n >= d.size()) {
              break label437;
            }
            if (arrayOfString[k].equals(d.get(n)).a))
            {
              paramString = (ai)d.get(n);
              if (k != arrayOfString.length - 1) {
                break label434;
              }
              b = true;
              e = true;
              if (n < i1) {
                break label431;
              }
              localObject2 = arrayOfString[k];
              if (k != arrayOfString.length - 1) {
                continue;
              }
              paramBoolean2 = true;
              if (k != arrayOfString.length - 1) {
                continue;
              }
              bool2 = paramBoolean1;
              localObject2 = new ai((String)localObject2, paramBoolean2, bool2);
              d.add(localObject2);
              e = true;
              paramString = (String)localObject2;
              k += 1;
              continue;
            }
          }
          else
          {
            k = 0;
            continue;
          }
          n += 1;
          continue;
          paramBoolean2 = false;
          continue;
          boolean bool2 = true;
          continue;
          m += 1;
          paramString = (String)localObject1;
          localObject1 = paramList;
        }
        catch (Exception paramString)
        {
          return;
        }
        label431:
        continue;
        label434:
        continue;
        label437:
        continue;
        paramList = (List<String>)localObject1;
        localObject1 = paramString;
      }
      bool1 = false;
      localObject1 = paramString;
    }
  }
  
  public void a(List<String> paramList1, List<String> paramList2)
  {
    paramList1 = b(paramList1);
    int k = 0;
    while (k < paramList1.length)
    {
      b(b, paramList2);
      k += 1;
    }
  }
  
  public aj[] a(ArrayList<aj> paramArrayList, List<String> paramList)
  {
    int n = 0;
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    aj localaj;
    if (k < paramArrayList.size())
    {
      localaj = (aj)paramArrayList.get(k);
      if ((b.startsWith("root/local")) && (!ap.aJ(b)) && (!new File(c).exists())) {
        c(b);
      }
    }
    label253:
    for (;;)
    {
      k += 1;
      break;
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        String str1;
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          String str2 = (String)localIterator.next();
          str1 = str2;
          if (str2.endsWith("/")) {
            str1 = str2.substring(0, str2.length() - 1);
          }
        } while (!na.equals(c));
      }
      for (int m = 1;; m = 0)
      {
        if (m != 0) {
          break label253;
        }
        localArrayList.add(localaj);
        break;
        if (paramArrayList.size() != localArrayList.size()) {
          b();
        }
        paramArrayList = new aj[localArrayList.size()];
        k = n;
        while (k < localArrayList.size())
        {
          paramArrayList[k] = ((aj)localArrayList.get(k));
          k += 1;
        }
        return paramArrayList;
      }
    }
  }
  
  public aj[] b(List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    a(b, localArrayList, null, null, 0);
    return a(localArrayList, paramList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */