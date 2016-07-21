package com.estrongs.android.a;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.pm.ApplicationInfo;
import android.os.Debug.MemoryInfo;
import android.text.TextUtils;
import com.estrongs.android.a.b.c;
import com.estrongs.android.a.b.f;
import com.estrongs.android.a.b.g;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.w;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.a;
import com.estrongs.fs.impl.c.b;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class l
{
  private static final String a = l.class.getSimpleName();
  private static final List<String> b = l();
  private static Set<String> c = null;
  private static Set<String> d = null;
  private static Set<String> e = null;
  private final j f;
  private ArrayList<f> g;
  private Map<String, com.estrongs.fs.impl.b.d> h;
  private final Map<String, g> i;
  private final Map<String, List<b>> j;
  private long k;
  private long l;
  private long m;
  private long n;
  private volatile boolean o;
  private Comparator<h> p = new n(this);
  private Comparator<h> q = new o(this);
  private Comparator<h> r = new p(this);
  
  public l(Map<String, g> paramMap, j paramj)
  {
    f = paramj;
    i = paramMap;
    j = new HashMap();
    g = new ArrayList();
    o = false;
  }
  
  public static long a(ActivityManager paramActivityManager, List<ActivityManager.RunningServiceInfo> paramList, List<ActivityManager.RunningAppProcessInfo> paramList1, String paramString, int[] paramArrayOfInt)
  {
    paramActivityManager = paramActivityManager.getProcessMemoryInfo(paramArrayOfInt);
    long l2 = 0L;
    long l1 = l2;
    if (paramActivityManager != null)
    {
      l1 = l2;
      if (paramActivityManager.length > 0)
      {
        int i2 = paramActivityManager.length;
        l1 = 0L;
        int i1 = 0;
        while (i1 < i2)
        {
          l1 += paramActivityManager[i1].getTotalPss();
          i1 += 1;
        }
        l1 <<= 10;
      }
    }
    return l1;
  }
  
  public static final List<String> a()
  {
    return b;
  }
  
  private static List<Integer> a(List<ActivityManager.RunningServiceInfo> paramList, String paramString, List<Integer> paramList1)
  {
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        ActivityManager.RunningServiceInfo localRunningServiceInfo = (ActivityManager.RunningServiceInfo)paramList.next();
        String str1 = service.getPackageName();
        String str2 = process;
        com.estrongs.android.util.l.b("AppAnalyzer", "pk = " + str1 + ", process = " + str2 + ", pid = " + pid);
        if ((str1 != null) && (str1.equals(paramString)) && (!paramList1.contains(Integer.valueOf(pid)))) {
          paramList1.add(Integer.valueOf(pid));
        }
      }
    }
    return paramList1;
  }
  
  /* Error */
  private static final Set<String> a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: new 201	java/util/HashSet
    //   8: dup
    //   9: invokespecial 202	java/util/HashSet:<init>	()V
    //   12: astore 5
    //   14: aload_0
    //   15: invokevirtual 208	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   18: invokevirtual 214	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   21: ldc -40
    //   23: invokevirtual 222	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   26: astore_0
    //   27: new 224	java/io/InputStreamReader
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 227	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   35: astore_1
    //   36: new 229	java/io/BufferedReader
    //   39: dup
    //   40: aload_1
    //   41: invokespecial 232	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   44: astore_2
    //   45: aload_2
    //   46: invokevirtual 235	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   49: astore_3
    //   50: aload_3
    //   51: ifnull +57 -> 108
    //   54: aload_3
    //   55: invokevirtual 238	java/lang/String:trim	()Ljava/lang/String;
    //   58: astore_3
    //   59: aload_3
    //   60: invokevirtual 241	java/lang/String:isEmpty	()Z
    //   63: ifne -18 -> 45
    //   66: aload 5
    //   68: aload_3
    //   69: invokeinterface 244 2 0
    //   74: pop
    //   75: goto -30 -> 45
    //   78: astore 4
    //   80: aload_1
    //   81: astore_3
    //   82: aload_0
    //   83: astore_1
    //   84: aload_2
    //   85: astore_0
    //   86: aload 4
    //   88: astore_2
    //   89: aload_2
    //   90: invokevirtual 247	java/lang/Exception:printStackTrace	()V
    //   93: aload_1
    //   94: invokevirtual 252	java/io/InputStream:close	()V
    //   97: aload_3
    //   98: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   101: aload_0
    //   102: invokevirtual 254	java/io/BufferedReader:close	()V
    //   105: aload 5
    //   107: areturn
    //   108: aload_0
    //   109: invokevirtual 252	java/io/InputStream:close	()V
    //   112: aload_1
    //   113: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   116: aload_2
    //   117: invokevirtual 254	java/io/BufferedReader:close	()V
    //   120: aload 5
    //   122: areturn
    //   123: astore_0
    //   124: aload_0
    //   125: invokevirtual 255	java/io/IOException:printStackTrace	()V
    //   128: aload 5
    //   130: areturn
    //   131: astore_0
    //   132: aload_0
    //   133: invokevirtual 255	java/io/IOException:printStackTrace	()V
    //   136: aload 5
    //   138: areturn
    //   139: astore_0
    //   140: aconst_null
    //   141: astore_1
    //   142: aconst_null
    //   143: astore_0
    //   144: aload_3
    //   145: astore_2
    //   146: aload_0
    //   147: invokevirtual 252	java/io/InputStream:close	()V
    //   150: aload_1
    //   151: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   154: aload_2
    //   155: invokevirtual 254	java/io/BufferedReader:close	()V
    //   158: aload 5
    //   160: areturn
    //   161: astore_0
    //   162: aload_0
    //   163: invokevirtual 255	java/io/IOException:printStackTrace	()V
    //   166: aload 5
    //   168: areturn
    //   169: astore_1
    //   170: aconst_null
    //   171: astore_1
    //   172: aload_3
    //   173: astore_2
    //   174: goto -28 -> 146
    //   177: astore_2
    //   178: aload_3
    //   179: astore_2
    //   180: goto -34 -> 146
    //   183: astore_3
    //   184: goto -38 -> 146
    //   187: astore_2
    //   188: aload_1
    //   189: astore 4
    //   191: aload_3
    //   192: astore_1
    //   193: aload_0
    //   194: astore_2
    //   195: aload 4
    //   197: astore_0
    //   198: goto -52 -> 146
    //   201: astore_2
    //   202: aconst_null
    //   203: astore_0
    //   204: aconst_null
    //   205: astore_1
    //   206: aload 4
    //   208: astore_3
    //   209: goto -120 -> 89
    //   212: astore_2
    //   213: aconst_null
    //   214: astore_3
    //   215: aload_0
    //   216: astore_1
    //   217: aload_3
    //   218: astore_0
    //   219: aload 4
    //   221: astore_3
    //   222: goto -133 -> 89
    //   225: astore_2
    //   226: aconst_null
    //   227: astore_3
    //   228: aload_0
    //   229: astore 4
    //   231: aload_3
    //   232: astore_0
    //   233: aload_1
    //   234: astore_3
    //   235: aload 4
    //   237: astore_1
    //   238: goto -149 -> 89
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	241	0	paramContext	android.content.Context
    //   35	116	1	localObject1	Object
    //   169	1	1	localObject2	Object
    //   171	67	1	localObject3	Object
    //   44	130	2	localObject4	Object
    //   177	1	2	localObject5	Object
    //   179	1	2	localObject6	Object
    //   187	1	2	localObject7	Object
    //   194	1	2	localContext	android.content.Context
    //   201	1	2	localException1	Exception
    //   212	1	2	localException2	Exception
    //   225	1	2	localException3	Exception
    //   1	178	3	localObject8	Object
    //   183	9	3	localObject9	Object
    //   208	27	3	localObject10	Object
    //   3	1	4	localObject11	Object
    //   78	9	4	localException4	Exception
    //   189	47	4	localObject12	Object
    //   12	155	5	localHashSet	HashSet
    // Exception table:
    //   from	to	target	type
    //   45	50	78	java/lang/Exception
    //   54	75	78	java/lang/Exception
    //   108	120	123	java/io/IOException
    //   93	105	131	java/io/IOException
    //   14	27	139	finally
    //   146	158	161	java/io/IOException
    //   27	36	169	finally
    //   36	45	177	finally
    //   45	50	183	finally
    //   54	75	183	finally
    //   89	93	187	finally
    //   14	27	201	java/lang/Exception
    //   27	36	212	java/lang/Exception
    //   36	45	225	java/lang/Exception
  }
  
  /* Error */
  public static final boolean a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: ldc 2
    //   4: monitorenter
    //   5: aload_0
    //   6: invokestatic 264	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: istore_2
    //   10: iload_2
    //   11: ifeq +8 -> 19
    //   14: ldc 2
    //   16: monitorexit
    //   17: iload_1
    //   18: ireturn
    //   19: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   22: ifnonnull +130 -> 152
    //   25: new 201	java/util/HashSet
    //   28: dup
    //   29: invokespecial 202	java/util/HashSet:<init>	()V
    //   32: putstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   35: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   38: ldc_w 266
    //   41: invokeinterface 244 2 0
    //   46: pop
    //   47: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   50: ldc_w 268
    //   53: invokeinterface 244 2 0
    //   58: pop
    //   59: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   62: ldc_w 270
    //   65: invokeinterface 244 2 0
    //   70: pop
    //   71: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   74: ldc_w 272
    //   77: invokeinterface 244 2 0
    //   82: pop
    //   83: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   86: ldc_w 274
    //   89: invokeinterface 244 2 0
    //   94: pop
    //   95: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   98: ldc_w 276
    //   101: invokeinterface 244 2 0
    //   106: pop
    //   107: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   110: ldc_w 278
    //   113: invokeinterface 244 2 0
    //   118: pop
    //   119: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   122: ldc_w 280
    //   125: invokeinterface 244 2 0
    //   130: pop
    //   131: ldc_w 282
    //   134: invokestatic 287	com/estrongs/android/i/a:c	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   137: astore_3
    //   138: aload_3
    //   139: ifnull +13 -> 152
    //   142: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   145: aload_3
    //   146: invokeinterface 291 2 0
    //   151: pop
    //   152: getstatic 59	com/estrongs/android/a/l:e	Ljava/util/Set;
    //   155: aload_0
    //   156: invokeinterface 292 2 0
    //   161: istore_2
    //   162: iload_2
    //   163: ifeq -149 -> 14
    //   166: iconst_1
    //   167: istore_1
    //   168: goto -154 -> 14
    //   171: astore_0
    //   172: ldc 2
    //   174: monitorexit
    //   175: aload_0
    //   176: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	177	0	paramString	String
    //   1	167	1	bool1	boolean
    //   9	154	2	bool2	boolean
    //   137	9	3	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   5	10	171	finally
    //   19	138	171	finally
    //   142	152	171	finally
    //   152	162	171	finally
  }
  
  public static int[] a(List<ActivityManager.RunningServiceInfo> paramList, List<ActivityManager.RunningAppProcessInfo> paramList1, String paramString)
  {
    paramList = b(paramList1, paramString, a(paramList, paramString, new ArrayList()));
    int i2 = paramList.size();
    paramList1 = new int[i2];
    int i1 = 0;
    while (i1 < i2)
    {
      paramList1[i1] = ((Integer)paramList.get(i1)).intValue();
      i1 += 1;
    }
    return paramList1;
  }
  
  private static List<Integer> b(List<ActivityManager.RunningAppProcessInfo> paramList, String paramString, List<Integer> paramList1)
  {
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramList.next();
        String[] arrayOfString = pkgList;
        if ((arrayOfString != null) && (arrayOfString.length >= 1))
        {
          int i2 = arrayOfString.length;
          int i1 = 0;
          while (i1 < i2)
          {
            String str = arrayOfString[i1];
            com.estrongs.android.util.l.b("AppAnalyzer", "pk = " + str + ", process = " + processName + ", pid = " + pid);
            if ((str != null) && (str.equals(paramString)) && (!paramList1.contains(Integer.valueOf(pid)))) {
              paramList1.add(Integer.valueOf(pid));
            }
            i1 += 1;
          }
        }
      }
    }
    return paramList1;
  }
  
  public static final Set<String> e()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add("android.permission.ACCESS_COARSE_LOCATION");
    localHashSet.add("android.permission.ACCESS_FINE_LOCATION");
    localHashSet.add("com.android.voicemail.permission.ADD_VOICEMAIL");
    localHashSet.add("android.permission.BODY_SENSORS");
    localHashSet.add("android.permission.CALL_PHONE");
    localHashSet.add("android.permission.CAMERA");
    localHashSet.add("android.permission.GET_ACCOUNTS");
    localHashSet.add("android.permission.PROCESS_OUTGOING_CALLS");
    localHashSet.add("android.permission.READ_CALENDAR");
    localHashSet.add("android.permission.READ_CALL_LOG");
    localHashSet.add("android.permission.READ_CONTACTS");
    localHashSet.add("android.permission.WRITE_EXTERNAL_STORAGE");
    localHashSet.add("android.permission.READ_PHONE_STATE");
    localHashSet.add("android.permission.READ_SMS");
    localHashSet.add("android.permission.RECEIVE_MMS");
    localHashSet.add("android.permission.RECEIVE_SMS");
    localHashSet.add("android.permission.RECEIVE_WAP_PUSH");
    localHashSet.add("android.permission.RECORD_AUDIO");
    localHashSet.add("android.permission.SEND_SMS");
    localHashSet.add("android.permission.USE_SIP");
    localHashSet.add("android.permission.WRITE_CALENDAR");
    localHashSet.add("android.permission.WRITE_CALL_LOG");
    localHashSet.add("android.permission.WRITE_CONTACTS");
    localHashSet.add("android.permission.WRITE_EXTERNAL_STORAGE");
    localHashSet.add("android.permission.RECEIVE_BOOT_COMPLETED");
    localHashSet.add("android.permission.SYSTEM_ALERT_WINDOW");
    localHashSet.add("android.permission.CHANGE_NETWORK_STATE");
    localHashSet.add("android.permission.CHANGE_WIFI_STATE");
    localHashSet.add("android.permission.CHANGE_WIFI_MULTICAST_STATE");
    localHashSet.add("android.permission.BLUETOOTH_ADMIN");
    localHashSet.add("android.permission.NFC");
    localHashSet.add("android.permission.VIBRATE");
    localHashSet.add("android.permission.FLASHLIGHT");
    return localHashSet;
  }
  
  public static List<h> k()
  {
    Object localObject = new b();
    ((b)localObject).a("appfolder://");
    com.estrongs.fs.j localj = new com.estrongs.fs.j();
    try
    {
      localObject = new a().a((h)localObject, localj, null);
      return (List<h>)localObject;
    }
    catch (FileSystemException localFileSystemException)
    {
      localFileSystemException.printStackTrace();
    }
    return null;
  }
  
  private static final List<String> l()
  {
    Object localObject = com.estrongs.android.cleaner.j.d();
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      str = str + File.separator + "Android" + File.separator + "data";
      if (new File(str).exists()) {
        localArrayList.add(str);
      }
    }
    return localArrayList;
  }
  
  private void m()
  {
    k = 0L;
    l = 0L;
    m = 0L;
    n = 0L;
    Object localObject1 = k();
    if (localObject1 != null)
    {
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (com.estrongs.fs.impl.c.d)((Iterator)localObject1).next();
        j.put(a.packageName, b);
      }
    }
    g = new ArrayList(h.size());
    localObject1 = (ActivityManager)FexApplication.a().getSystemService("activity");
    Object localObject2 = ((ActivityManager)localObject1).getRunningServices(Integer.MAX_VALUE);
    List localList = ((ActivityManager)localObject1).getRunningAppProcesses();
    Iterator localIterator1 = h.keySet().iterator();
    while (localIterator1.hasNext())
    {
      Object localObject3 = (String)localIterator1.next();
      com.estrongs.fs.impl.b.d locald = (com.estrongs.fs.impl.b.d)h.get(localObject3);
      ArrayList localArrayList = new ArrayList(b.size());
      Iterator localIterator2 = b.iterator();
      long l1 = 0L;
      while (localIterator2.hasNext())
      {
        Object localObject4 = (String)localIterator2.next();
        localObject4 = (String)localObject4 + File.separator + (String)localObject3;
        localObject4 = (g)i.get(localObject4);
        if ((localObject4 != null) && (((g)localObject4).exists()))
        {
          l1 += ((g)localObject4).length();
          localArrayList.add(localObject4);
        }
      }
      l += l1;
      m += locald.length();
      long l2 = a((ActivityManager)localObject1, (List)localObject2, localList, (String)localObject3, a((List)localObject2, localList, (String)localObject3));
      k += l2;
      localObject3 = new f(locald, l1, l2, w.e(FexApplication.a().getPackageManager(), (String)localObject3), (List)j.get(localObject3), localArrayList);
      g.add(localObject3);
    }
    com.estrongs.android.util.l.b(a, "App analyze finish!");
    if ((f != null) && (!o)) {
      f.a(null);
    }
  }
  
  public final c b(String paramString)
  {
    long l3 = 0L;
    if (TextUtils.isEmpty(paramString)) {
      return f();
    }
    HashSet localHashSet = new HashSet();
    Object localObject = g.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localf = (f)((Iterator)localObject).next();
      if (localf.m().equals(paramString))
      {
        localObject = localf.c();
        int i2 = localObject.length;
        int i1 = 0;
        for (;;)
        {
          paramString = localf;
          if (i1 >= i2) {
            break;
          }
          paramString = localObject[i1];
          if ((c.contains(paramString)) && (!localHashSet.contains(paramString))) {
            localHashSet.add(paramString);
          }
          i1 += 1;
        }
      }
    }
    paramString = null;
    long l1;
    long l2;
    if (paramString != null)
    {
      l1 = paramString.o();
      l2 = paramString.b();
      l3 = paramString.length();
    }
    for (;;)
    {
      return new c(1, localHashSet.size(), l1, l2, l3, localHashSet);
      l2 = 0L;
      l1 = 0L;
    }
  }
  
  public void b()
  {
    com.estrongs.android.util.l.b(a, "app analyze start!");
    try
    {
      if (c == null) {
        c = e();
      }
      if (d == null) {
        d = a(FexApplication.a());
      }
      new Thread(new m(this)).start();
      return;
    }
    finally {}
  }
  
  public void c()
  {
    o = true;
  }
  
  /* Error */
  public final void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 87	java/util/HashMap
    //   4: dup
    //   5: invokespecial 88	java/util/HashMap:<init>	()V
    //   8: putfield 456	com/estrongs/android/a/l:h	Ljava/util/Map;
    //   11: invokestatic 564	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   14: astore_1
    //   15: aload_1
    //   16: ldc_w 566
    //   19: invokevirtual 569	com/estrongs/fs/d:a	(Ljava/lang/String;)Ljava/util/List;
    //   22: invokeinterface 121 1 0
    //   27: astore_1
    //   28: aload_1
    //   29: invokeinterface 127 1 0
    //   34: ifeq +53 -> 87
    //   37: aload_1
    //   38: invokeinterface 131 1 0
    //   43: checkcast 437	com/estrongs/fs/h
    //   46: checkcast 488	com/estrongs/fs/impl/b/d
    //   49: astore_2
    //   50: aload_2
    //   51: invokevirtual 570	com/estrongs/fs/impl/b/d:m	()Ljava/lang/String;
    //   54: astore_3
    //   55: getstatic 57	com/estrongs/android/a/l:d	Ljava/util/Set;
    //   58: aload_3
    //   59: invokeinterface 292 2 0
    //   64: ifne -36 -> 28
    //   67: aload_0
    //   68: getfield 456	com/estrongs/android/a/l:h	Ljava/util/Map;
    //   71: aload_3
    //   72: aload_2
    //   73: invokeinterface 454 3 0
    //   78: pop
    //   79: goto -51 -> 28
    //   82: astore_1
    //   83: aload_1
    //   84: invokevirtual 405	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   87: return
    //   88: astore_1
    //   89: aload_1
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	l
    //   14	24	1	localObject1	Object
    //   82	2	1	localFileSystemException	FileSystemException
    //   88	2	1	localObject2	Object
    //   49	24	2	locald	com.estrongs.fs.impl.b.d
    //   54	18	3	str	String
    // Exception table:
    //   from	to	target	type
    //   15	28	82	com/estrongs/fs/FileSystemException
    //   28	79	82	com/estrongs/fs/FileSystemException
    //   15	28	88	finally
    //   28	79	88	finally
    //   83	87	88	finally
  }
  
  public final c f()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = g.iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = ((f)localIterator.next()).c();
      int i2 = arrayOfString.length;
      int i1 = 0;
      while (i1 < i2)
      {
        String str = arrayOfString[i1];
        if ((c.contains(str)) && (!localHashSet.contains(str))) {
          localHashSet.add(str);
        }
        i1 += 1;
      }
    }
    return new c(g.size(), localHashSet.size(), m, k, l, localHashSet);
  }
  
  public final List<h> g()
  {
    ArrayList localArrayList = new ArrayList(g);
    Collections.sort(localArrayList, q);
    return localArrayList;
  }
  
  public final List<h> h()
  {
    ArrayList localArrayList = new ArrayList(g);
    Collections.sort(localArrayList, p);
    return localArrayList;
  }
  
  public final Map<String, List<h>> i()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = g.iterator();
    if (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      String[] arrayOfString = localf.c();
      int i2 = arrayOfString.length;
      int i1 = 0;
      label53:
      String str;
      if (i1 < i2)
      {
        str = arrayOfString[i1];
        if (c.contains(str)) {
          break label84;
        }
      }
      for (;;)
      {
        i1 += 1;
        break label53;
        break;
        label84:
        List localList = (List)localHashMap.get(str);
        Object localObject = localList;
        if (localList == null)
        {
          localObject = new ArrayList();
          localHashMap.put(str, localObject);
        }
        ((List)localObject).add(localf);
      }
    }
    return localHashMap;
  }
  
  public final List<h> j()
  {
    return new ArrayList(g);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */