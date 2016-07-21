package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.flurry.android.FlurryEventRecordStatus;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class jb
  implements ll.a
{
  static int a = 100;
  static int b = 10;
  static int c = 1000;
  static int d = 160000;
  static int e = 50;
  private static final String f = jb.class.getSimpleName();
  private int A = 0;
  private final List<iu> B = new ArrayList();
  private int C = 0;
  private int D = 0;
  private boolean E = true;
  private final hm F = new hm();
  private final kb<jg> G = new jb.9(this);
  private final AtomicInteger g = new AtomicInteger(0);
  private final AtomicInteger h = new AtomicInteger(0);
  private final AtomicInteger i = new AtomicInteger(0);
  private final kb<lg> j = new jb.1(this);
  private WeakReference<lf> k;
  private File l;
  private jz<List<iz>> m;
  private boolean n;
  private long o;
  private boolean p;
  private String q;
  private byte r;
  private Long s;
  private int t = -1;
  private final List<iz> u = new ArrayList();
  private final Map<String, List<String>> v = new HashMap();
  private final Map<String, String> w = new HashMap();
  private final Map<String, iv> x = new HashMap();
  private final List<iw> y = new ArrayList();
  private boolean z = true;
  
  public jb()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", j);
  }
  
  @TargetApi(18)
  private void a(boolean paramBoolean)
  {
    i2 = -1;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (paramBoolean)
    {
      w.put("boot.time", Long.toString(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
      localObject1 = new StatFs(Environment.getRootDirectory().getAbsolutePath());
      localObject2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
      if (Build.VERSION.SDK_INT >= 18)
      {
        w.put("disk.size.total.internal", Long.toString(((StatFs)localObject1).getAvailableBlocksLong()));
        w.put("disk.size.available.internal", Long.toString(((StatFs)localObject1).getAvailableBlocksLong()));
        w.put("disk.size.total.external", Long.toString(((StatFs)localObject2).getAvailableBlocksLong()));
        w.put("disk.size.available.external", Long.toString(((StatFs)localObject2).getAvailableBlocksLong()));
        w.put("carrier.name", jm.a().c());
        w.put("carrier.details", jm.a().d());
      }
    }
    else
    {
      localObject1 = (ActivityManager)js.a().c().getSystemService("activity");
      localObject2 = new ActivityManager.MemoryInfo();
      ((ActivityManager)localObject1).getMemoryInfo((ActivityManager.MemoryInfo)localObject2);
      localObject3 = w;
      StringBuilder localStringBuilder = new StringBuilder().append("memory.available");
      if (!paramBoolean) {
        break label610;
      }
      localObject1 = ".start";
      label245:
      ((Map)localObject3).put((String)localObject1, Long.toString(availMem));
      if (Build.VERSION.SDK_INT >= 16)
      {
        localObject3 = w;
        localStringBuilder = new StringBuilder().append("memory.total");
        if (!paramBoolean) {
          break label618;
        }
        localObject1 = ".start";
        label309:
        ((Map)localObject3).put((String)localObject1, Long.toString(availMem));
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        localObject1 = js.a().c().registerReceiver(null, (IntentFilter)localObject1);
        if (localObject1 == null) {
          continue;
        }
        i1 = ((Intent)localObject1).getIntExtra("status", -1);
        if ((i1 == 2) || (i1 == 5)) {
          bool = true;
        }
      }
      catch (Exception localException1)
      {
        float f1;
        label610:
        label618:
        boolean bool = false;
        int i1 = -1;
        kg.a(5, f, "Error getting battery status: " + localException1);
        i2 = i1;
        i1 = -1;
        continue;
        String str = ".end";
        continue;
        str = ".end";
        continue;
        bool = false;
        i1 = -1;
        continue;
      }
      try
      {
        i2 = ((Intent)localObject1).getIntExtra("level", -1);
      }
      catch (Exception localException2)
      {
        i1 = -1;
        continue;
      }
      try
      {
        i1 = ((Intent)localObject1).getIntExtra("scale", -1);
        f1 = i2 / i1;
        localObject2 = w;
        localObject3 = new StringBuilder().append("battery.charging");
        if (!paramBoolean) {
          continue;
        }
        localObject1 = ".start";
        ((Map)localObject2).put((String)localObject1, Boolean.toString(bool));
        localObject2 = w;
        localObject3 = new StringBuilder().append("battery.remaining");
        if (!paramBoolean) {
          continue;
        }
        localObject1 = ".start";
        ((Map)localObject2).put((String)localObject1, Float.toString(f1));
        return;
      }
      catch (Exception localException3)
      {
        i1 = i2;
        continue;
      }
      w.put("disk.size.total.internal", Long.toString(((StatFs)localObject1).getAvailableBlocks()));
      w.put("disk.size.available.internal", Long.toString(((StatFs)localObject1).getAvailableBlocks()));
      w.put("disk.size.total.external", Long.toString(((StatFs)localObject2).getAvailableBlocks()));
      w.put("disk.size.available.external", Long.toString(((StatFs)localObject2).getAvailableBlocks()));
      break;
      localObject1 = ".end";
      break label245;
      localObject1 = ".end";
      break label309;
      bool = false;
    }
  }
  
  /* Error */
  private void a(boolean paramBoolean, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 135	com/flurry/sdk/jb:E	Z
    //   6: ifne +16 -> 22
    //   9: iconst_3
    //   10: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   13: ldc_w 338
    //   16: invokestatic 335	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: iload_1
    //   23: ifne +15 -> 38
    //   26: aload_0
    //   27: getfield 112	com/flurry/sdk/jb:u	Ljava/util/List;
    //   30: invokeinterface 344 1 0
    //   35: ifne -16 -> 19
    //   38: iconst_3
    //   39: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   42: ldc_w 346
    //   45: invokestatic 335	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   48: new 348	com/flurry/sdk/ix
    //   51: dup
    //   52: invokestatic 246	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   55: invokevirtual 349	com/flurry/sdk/js:d	()Ljava/lang/String;
    //   58: invokestatic 354	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   61: invokevirtual 356	com/flurry/sdk/jo:e	()Ljava/lang/String;
    //   64: aload_0
    //   65: getfield 358	com/flurry/sdk/jb:n	Z
    //   68: invokestatic 363	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   71: invokevirtual 365	com/flurry/sdk/jf:e	()Z
    //   74: aload_0
    //   75: getfield 367	com/flurry/sdk/jb:o	J
    //   78: lload_2
    //   79: aload_0
    //   80: getfield 112	com/flurry/sdk/jb:u	Ljava/util/List;
    //   83: invokestatic 363	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   86: invokevirtual 370	com/flurry/sdk/jf:h	()Ljava/util/Map;
    //   89: aload_0
    //   90: getfield 140	com/flurry/sdk/jb:F	Lcom/flurry/sdk/hm;
    //   93: iconst_0
    //   94: invokevirtual 373	com/flurry/sdk/hm:a	(Z)Ljava/util/Map;
    //   97: aload_0
    //   98: getfield 117	com/flurry/sdk/jb:v	Ljava/util/Map;
    //   101: invokestatic 378	com/flurry/sdk/ju:a	()Lcom/flurry/sdk/ju;
    //   104: invokevirtual 381	com/flurry/sdk/ju:c	()Ljava/util/HashMap;
    //   107: invokestatic 176	java/lang/System:currentTimeMillis	()J
    //   110: invokespecial 384	com/flurry/sdk/ix:<init>	(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V
    //   113: invokevirtual 387	com/flurry/sdk/ix:a	()[B
    //   116: astore 4
    //   118: aload 4
    //   120: ifnonnull +61 -> 181
    //   123: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   126: ldc_w 389
    //   129: invokestatic 392	com/flurry/sdk/kg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload_0
    //   133: invokespecial 394	com/flurry/sdk/jb:j	()V
    //   136: goto -117 -> 19
    //   139: astore 4
    //   141: aload_0
    //   142: monitorexit
    //   143: aload 4
    //   145: athrow
    //   146: astore 4
    //   148: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   151: new 268	java/lang/StringBuilder
    //   154: dup
    //   155: invokespecial 269	java/lang/StringBuilder:<init>	()V
    //   158: ldc_w 396
    //   161: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: aload 4
    //   166: invokevirtual 330	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 279	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokestatic 392	com/flurry/sdk/kg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   175: aconst_null
    //   176: astore 4
    //   178: goto -60 -> 118
    //   181: iconst_3
    //   182: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   185: new 268	java/lang/StringBuilder
    //   188: dup
    //   189: invokespecial 269	java/lang/StringBuilder:<init>	()V
    //   192: ldc_w 398
    //   195: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload 4
    //   200: arraylength
    //   201: invokevirtual 401	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   204: ldc_w 403
    //   207: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: aload_0
    //   211: getfield 112	com/flurry/sdk/jb:u	Ljava/util/List;
    //   214: invokeinterface 406 1 0
    //   219: invokevirtual 401	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   222: ldc_w 408
    //   225: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: invokevirtual 279	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   231: invokestatic 335	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   234: invokestatic 413	com/flurry/sdk/hl:a	()Lcom/flurry/sdk/hl;
    //   237: invokevirtual 416	com/flurry/sdk/hl:d	()Lcom/flurry/sdk/iy;
    //   240: astore 5
    //   242: new 268	java/lang/StringBuilder
    //   245: dup
    //   246: invokespecial 269	java/lang/StringBuilder:<init>	()V
    //   249: ldc_w 418
    //   252: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: invokestatic 422	com/flurry/sdk/jt:a	()I
    //   258: invokevirtual 401	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   261: invokevirtual 279	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: astore 6
    //   266: aload 5
    //   268: aload 4
    //   270: invokestatic 246	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   273: invokevirtual 349	com/flurry/sdk/js:d	()Ljava/lang/String;
    //   276: aload 6
    //   278: invokevirtual 427	com/flurry/sdk/iy:b	([BLjava/lang/String;Ljava/lang/String;)V
    //   281: goto -149 -> 132
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	284	0	this	jb
    //   0	284	1	paramBoolean	boolean
    //   0	284	2	paramLong	long
    //   116	3	4	arrayOfByte1	byte[]
    //   139	5	4	localObject	Object
    //   146	19	4	localException	Exception
    //   176	93	4	arrayOfByte2	byte[]
    //   240	27	5	localiy	iy
    //   264	13	6	str	String
    // Exception table:
    //   from	to	target	type
    //   2	19	139	finally
    //   26	38	139	finally
    //   38	48	139	finally
    //   48	118	139	finally
    //   123	132	139	finally
    //   132	136	139	finally
    //   148	175	139	finally
    //   181	281	139	finally
    //   48	118	146	java/lang/Exception
  }
  
  private void b(long paramLong)
  {
    try
    {
      Iterator localIterator = y.iterator();
      while (localIterator.hasNext())
      {
        iw localiw = (iw)localIterator.next();
        if ((localiw.a()) && (!localiw.b())) {
          localiw.a(paramLong);
        }
      }
    }
    finally {}
  }
  
  private void c(Context paramContext)
  {
    if ((paramContext instanceof Activity))
    {
      Bundle localBundle = ((Activity)paramContext).getIntent().getExtras();
      if (localBundle != null)
      {
        kg.a(3, f, "Launch Options Bundle is present " + localBundle.toString());
        Iterator localIterator = localBundle.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
          {
            paramContext = localBundle.get(str);
            if (paramContext != null) {}
            for (paramContext = paramContext.toString();; paramContext = "null")
            {
              v.put(str, new ArrayList(Arrays.asList(new String[] { paramContext })));
              kg.a(3, f, "Launch options Key: " + str + ". Its value: " + paramContext);
              break;
            }
          }
        }
      }
    }
  }
  
  /* Error */
  private void i()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_4
    //   3: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   6: ldc_w 504
    //   9: invokestatic 335	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 506	com/flurry/sdk/jb:m	Lcom/flurry/sdk/jz;
    //   16: invokevirtual 510	com/flurry/sdk/jz:a	()Ljava/lang/Object;
    //   19: checkcast 340	java/util/List
    //   22: astore 6
    //   24: aload 6
    //   26: ifnull +18 -> 44
    //   29: aload_0
    //   30: getfield 112	com/flurry/sdk/jb:u	Ljava/util/List;
    //   33: aload 6
    //   35: invokeinterface 514 2 0
    //   40: pop
    //   41: aload_0
    //   42: monitorexit
    //   43: return
    //   44: aload_0
    //   45: getfield 516	com/flurry/sdk/jb:l	Ljava/io/File;
    //   48: invokevirtual 519	java/io/File:exists	()Z
    //   51: ifeq -10 -> 41
    //   54: iconst_4
    //   55: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   58: ldc_w 521
    //   61: invokestatic 335	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   64: aload_0
    //   65: getfield 516	com/flurry/sdk/jb:l	Ljava/io/File;
    //   68: invokestatic 526	com/flurry/sdk/ho:a	(Ljava/io/File;)Lcom/flurry/sdk/jc;
    //   71: astore 6
    //   73: aload 6
    //   75: ifnull +71 -> 146
    //   78: aload 6
    //   80: invokevirtual 529	com/flurry/sdk/jc:a	()Z
    //   83: istore_1
    //   84: aload 6
    //   86: invokevirtual 531	com/flurry/sdk/jc:b	()J
    //   89: lstore 4
    //   91: lload 4
    //   93: lstore_2
    //   94: lload 4
    //   96: lconst_0
    //   97: lcmp
    //   98: ifgt +10 -> 108
    //   101: invokestatic 536	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   104: invokevirtual 538	com/flurry/sdk/je:d	()J
    //   107: lstore_2
    //   108: aload_0
    //   109: iload_1
    //   110: putfield 358	com/flurry/sdk/jb:n	Z
    //   113: aload_0
    //   114: lload_2
    //   115: putfield 367	com/flurry/sdk/jb:o	J
    //   118: aload_0
    //   119: invokespecial 500	com/flurry/sdk/jb:n	()V
    //   122: aload 6
    //   124: invokevirtual 541	com/flurry/sdk/jc:c	()Ljava/util/List;
    //   127: astore 6
    //   129: aload 6
    //   131: ifnull +15 -> 146
    //   134: aload_0
    //   135: getfield 112	com/flurry/sdk/jb:u	Ljava/util/List;
    //   138: aload 6
    //   140: invokeinterface 514 2 0
    //   145: pop
    //   146: aload_0
    //   147: getfield 516	com/flurry/sdk/jb:l	Ljava/io/File;
    //   150: invokevirtual 544	java/io/File:delete	()Z
    //   153: pop
    //   154: aload_0
    //   155: invokevirtual 546	com/flurry/sdk/jb:c	()V
    //   158: goto -117 -> 41
    //   161: astore 6
    //   163: aload_0
    //   164: monitorexit
    //   165: aload 6
    //   167: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	jb
    //   83	27	1	bool	boolean
    //   93	22	2	l1	long
    //   89	6	4	l2	long
    //   22	117	6	localObject1	Object
    //   161	5	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	24	161	finally
    //   29	41	161	finally
    //   44	73	161	finally
    //   78	91	161	finally
    //   101	108	161	finally
    //   108	129	161	finally
    //   134	146	161	finally
    //   146	158	161	finally
  }
  
  private void j()
  {
    u.clear();
    m.b();
  }
  
  private String k()
  {
    return ".flurryagent." + Integer.toString(js.a().d().hashCode(), 16);
  }
  
  private String l()
  {
    return ".yflurryreport." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  private void m()
  {
    SharedPreferences localSharedPreferences = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
    n = localSharedPreferences.getBoolean("com.flurry.sdk.previous_successful_report", false);
    o = localSharedPreferences.getLong("com.flurry.sdk.initial_run_time", je.a().d());
  }
  
  private void n()
  {
    SharedPreferences.Editor localEditor = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
    localEditor.putBoolean("com.flurry.sdk.previous_successful_report", n);
    localEditor.putLong("com.flurry.sdk.initial_run_time", o);
    localEditor.commit();
  }
  
  private int o()
  {
    return g.incrementAndGet();
  }
  
  private int p()
  {
    return h.incrementAndGet();
  }
  
  /* Error */
  public FlurryEventRecordStatus a(String paramString1, String paramString2, Map<String, String> paramMap, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 617	com/flurry/android/FlurryEventRecordStatus:kFlurryEventFailed	Lcom/flurry/android/FlurryEventRecordStatus;
    //   5: astore 5
    //   7: aload_3
    //   8: ifnonnull +8 -> 16
    //   11: aload_0
    //   12: monitorexit
    //   13: aload 5
    //   15: areturn
    //   16: aload_2
    //   17: invokestatic 622	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   20: ifne -9 -> 11
    //   23: aload_3
    //   24: ldc_w 624
    //   27: aload_2
    //   28: invokeinterface 193 3 0
    //   33: pop
    //   34: aload_0
    //   35: aload_1
    //   36: aload_3
    //   37: iconst_0
    //   38: invokevirtual 627	com/flurry/sdk/jb:a	(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    //   41: astore 5
    //   43: iconst_5
    //   44: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   47: new 268	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 269	java/lang/StringBuilder:<init>	()V
    //   54: ldc_w 629
    //   57: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload 5
    //   62: invokevirtual 330	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 279	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokestatic 335	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   71: goto -60 -> 11
    //   74: astore_1
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	jb
    //   0	79	1	paramString1	String
    //   0	79	2	paramString2	String
    //   0	79	3	paramMap	Map<String, String>
    //   0	79	4	paramBoolean	boolean
    //   5	56	5	localFlurryEventRecordStatus	FlurryEventRecordStatus
    // Exception table:
    //   from	to	target	type
    //   2	7	74	finally
    //   16	71	74	finally
  }
  
  public FlurryEventRecordStatus a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    label470:
    label478:
    for (;;)
    {
      try
      {
        FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
        if (!E)
        {
          paramString = FlurryEventRecordStatus.kFlurryEventAnalyticsDisabled;
          kg.e(f, "Analytics has been disabled, not logging event.");
          return paramString;
        }
        long l1 = SystemClock.elapsedRealtime();
        long l2 = je.a().e();
        String str = lt.b(paramString);
        if (str.length() == 0)
        {
          paramString = FlurryEventRecordStatus.kFlurryEventFailed;
          continue;
        }
        paramString = (iv)x.get(str);
        if (paramString == null)
        {
          if (x.size() < a)
          {
            paramString = new iv();
            a = 1;
            x.put(str, paramString);
            kg.e(f, "Event count started: " + str);
            paramString = localFlurryEventRecordStatus;
            if ((!p) || (y.size() >= c) || (A >= d)) {
              break label470;
            }
            if (paramMap != null) {
              break label478;
            }
            paramMap = Collections.emptyMap();
            if (paramMap.size() > b)
            {
              kg.e(f, "MaxEventParams exceeded: " + paramMap.size());
              paramString = FlurryEventRecordStatus.kFlurryEventParamsCountExceeded;
            }
          }
          else
          {
            kg.e(f, "Too many different events. Event not counted: " + str);
            paramString = FlurryEventRecordStatus.kFlurryEventUniqueCountExceeded;
            continue;
          }
        }
        else
        {
          a += 1;
          kg.e(f, "Event count incremented: " + str);
          paramString = FlurryEventRecordStatus.kFlurryEventRecorded;
          continue;
        }
        paramString = new iw(o(), str, paramMap, l1 - l2, paramBoolean);
        if (paramString.d() + A <= d)
        {
          y.add(paramString);
          int i1 = A;
          A = (paramString.d() + i1);
          localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
          paramString = localFlurryEventRecordStatus;
          if (!E) {
            continue;
          }
          paramString = localFlurryEventRecordStatus;
          if (hl.a().c() == null) {
            continue;
          }
          js.a().b(new jb.7(this, str, paramMap));
          paramString = localFlurryEventRecordStatus;
          continue;
        }
        A = d;
      }
      finally {}
      z = false;
      kg.e(f, "Event Log size exceeded. No more event details logged.");
      paramString = FlurryEventRecordStatus.kFlurryEventLogCountExceeded;
      continue;
      z = false;
    }
  }
  
  /* Error */
  iz a(long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 709	com/flurry/sdk/ja
    //   5: dup
    //   6: invokespecial 710	com/flurry/sdk/ja:<init>	()V
    //   9: astore 8
    //   11: aload 8
    //   13: invokestatic 354	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   16: invokevirtual 356	com/flurry/sdk/jo:e	()Ljava/lang/String;
    //   19: invokevirtual 712	com/flurry/sdk/ja:a	(Ljava/lang/String;)V
    //   22: aload 8
    //   24: lload_1
    //   25: invokevirtual 713	com/flurry/sdk/ja:a	(J)V
    //   28: aload 8
    //   30: lload_3
    //   31: invokevirtual 715	com/flurry/sdk/ja:b	(J)V
    //   34: aload 8
    //   36: lload 5
    //   38: invokevirtual 717	com/flurry/sdk/ja:c	(J)V
    //   41: aload 8
    //   43: aload_0
    //   44: getfield 119	com/flurry/sdk/jb:w	Ljava/util/Map;
    //   47: invokevirtual 720	com/flurry/sdk/ja:a	(Ljava/util/Map;)V
    //   50: aload 8
    //   52: invokestatic 536	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   55: invokevirtual 722	com/flurry/sdk/je:i	()Ljava/lang/String;
    //   58: invokevirtual 724	com/flurry/sdk/ja:b	(Ljava/lang/String;)V
    //   61: aload 8
    //   63: invokestatic 536	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   66: invokevirtual 726	com/flurry/sdk/je:j	()Ljava/lang/String;
    //   69: invokevirtual 728	com/flurry/sdk/ja:c	(Ljava/lang/String;)V
    //   72: aload 8
    //   74: invokestatic 536	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   77: invokevirtual 730	com/flurry/sdk/je:k	()Ljava/util/Map;
    //   80: invokevirtual 732	com/flurry/sdk/ja:b	(Ljava/util/Map;)V
    //   83: aload 8
    //   85: invokestatic 737	com/flurry/sdk/ji:a	()Lcom/flurry/sdk/ji;
    //   88: invokevirtual 738	com/flurry/sdk/ji:c	()Ljava/lang/String;
    //   91: invokevirtual 740	com/flurry/sdk/ja:d	(Ljava/lang/String;)V
    //   94: aload 8
    //   96: invokestatic 737	com/flurry/sdk/ji:a	()Lcom/flurry/sdk/ji;
    //   99: invokevirtual 741	com/flurry/sdk/ji:d	()Ljava/lang/String;
    //   102: invokevirtual 743	com/flurry/sdk/ja:e	(Ljava/lang/String;)V
    //   105: aload 8
    //   107: iload 7
    //   109: invokevirtual 745	com/flurry/sdk/ja:a	(I)V
    //   112: aload_0
    //   113: getfield 107	com/flurry/sdk/jb:t	I
    //   116: iconst_m1
    //   117: if_icmpeq +138 -> 255
    //   120: aload_0
    //   121: getfield 107	com/flurry/sdk/jb:t	I
    //   124: istore 7
    //   126: aload 8
    //   128: iload 7
    //   130: invokevirtual 747	com/flurry/sdk/ja:b	(I)V
    //   133: aload 8
    //   135: aload_0
    //   136: invokevirtual 748	com/flurry/sdk/jb:d	()Ljava/lang/String;
    //   139: invokevirtual 750	com/flurry/sdk/ja:f	(Ljava/lang/String;)V
    //   142: aload 8
    //   144: invokestatic 755	com/flurry/sdk/jj:a	()Lcom/flurry/sdk/jj;
    //   147: invokevirtual 758	com/flurry/sdk/jj:e	()Landroid/location/Location;
    //   150: invokevirtual 761	com/flurry/sdk/ja:a	(Landroid/location/Location;)V
    //   153: aload 8
    //   155: aload_0
    //   156: invokevirtual 763	com/flurry/sdk/jb:h	()I
    //   159: invokevirtual 765	com/flurry/sdk/ja:c	(I)V
    //   162: aload 8
    //   164: aload_0
    //   165: getfield 767	com/flurry/sdk/jb:r	B
    //   168: invokevirtual 770	com/flurry/sdk/ja:a	(B)V
    //   171: aload 8
    //   173: aload_0
    //   174: getfield 772	com/flurry/sdk/jb:s	Ljava/lang/Long;
    //   177: invokevirtual 775	com/flurry/sdk/ja:a	(Ljava/lang/Long;)V
    //   180: aload 8
    //   182: aload_0
    //   183: invokevirtual 777	com/flurry/sdk/jb:g	()Ljava/util/Map;
    //   186: invokevirtual 779	com/flurry/sdk/ja:c	(Ljava/util/Map;)V
    //   189: aload 8
    //   191: aload_0
    //   192: invokevirtual 781	com/flurry/sdk/jb:e	()Ljava/util/List;
    //   195: invokevirtual 784	com/flurry/sdk/ja:a	(Ljava/util/List;)V
    //   198: aload 8
    //   200: aload_0
    //   201: getfield 125	com/flurry/sdk/jb:z	Z
    //   204: invokevirtual 786	com/flurry/sdk/ja:a	(Z)V
    //   207: aload 8
    //   209: aload_0
    //   210: invokevirtual 788	com/flurry/sdk/jb:f	()Ljava/util/List;
    //   213: invokevirtual 790	com/flurry/sdk/ja:b	(Ljava/util/List;)V
    //   216: aload 8
    //   218: aload_0
    //   219: getfield 131	com/flurry/sdk/jb:C	I
    //   222: invokevirtual 792	com/flurry/sdk/ja:d	(I)V
    //   225: new 794	com/flurry/sdk/iz
    //   228: dup
    //   229: aload 8
    //   231: invokespecial 797	com/flurry/sdk/iz:<init>	(Lcom/flurry/sdk/ja;)V
    //   234: astore 8
    //   236: aload 8
    //   238: ifnonnull +12 -> 250
    //   241: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   244: ldc_w 799
    //   247: invokestatic 392	com/flurry/sdk/kg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: aload_0
    //   251: monitorexit
    //   252: aload 8
    //   254: areturn
    //   255: invokestatic 803	com/flurry/sdk/lr:j	()I
    //   258: istore 7
    //   260: goto -134 -> 126
    //   263: astore 8
    //   265: iconst_5
    //   266: getstatic 72	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   269: new 268	java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial 269	java/lang/StringBuilder:<init>	()V
    //   276: ldc_w 805
    //   279: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: aload 8
    //   284: invokevirtual 330	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   287: invokevirtual 279	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   290: invokestatic 335	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   293: aconst_null
    //   294: astore 8
    //   296: goto -60 -> 236
    //   299: astore 8
    //   301: aload_0
    //   302: monitorexit
    //   303: aload 8
    //   305: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	306	0	this	jb
    //   0	306	1	paramLong1	long
    //   0	306	3	paramLong2	long
    //   0	306	5	paramLong3	long
    //   0	306	7	paramInt	int
    //   9	244	8	localObject1	Object
    //   263	20	8	localIOException	java.io.IOException
    //   294	1	8	localObject2	Object
    //   299	5	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   225	236	263	java/io/IOException
    //   2	126	299	finally
    //   126	225	299	finally
    //   225	236	299	finally
    //   241	250	299	finally
    //   255	260	299	finally
    //   265	293	299	finally
  }
  
  public void a()
  {
    n = true;
  }
  
  public void a(long paramLong)
  {
    try
    {
      kc.a().a(G);
      js.a().b(new jb.5(this));
      if (jf.a().c()) {
        js.a().b(new jb.6(this, paramLong));
      }
      lk.a().b("Gender", this);
      lk.a().b("UserId", this);
      lk.a().b("Age", this);
      lk.a().b("LogEvents", this);
      return;
    }
    finally {}
  }
  
  public void a(Context paramContext)
  {
    try
    {
      t = lr.j();
      if (hl.a().e() != null) {
        js.a().b(new jb.15(this));
      }
      if ((E) && (hl.a().c() != null)) {
        js.a().b(new jb.16(this));
      }
      return;
    }
    finally {}
  }
  
  public void a(lf paramlf, Context paramContext)
  {
    k = new WeakReference(paramlf);
    paramlf = lk.a();
    p = ((Boolean)paramlf.a("LogEvents")).booleanValue();
    paramlf.a("LogEvents", this);
    kg.a(4, f, "initSettings, LogEvents = " + p);
    q = ((String)paramlf.a("UserId"));
    paramlf.a("UserId", this);
    kg.a(4, f, "initSettings, UserId = " + q);
    r = ((Byte)paramlf.a("Gender")).byteValue();
    paramlf.a("Gender", this);
    kg.a(4, f, "initSettings, Gender = " + r);
    s = ((Long)paramlf.a("Age"));
    paramlf.a("Age", this);
    kg.a(4, f, "initSettings, BirthDate = " + s);
    E = ((Boolean)paramlf.a("analyticsEnabled")).booleanValue();
    paramlf.a("analyticsEnabled", this);
    kg.a(4, f, "initSettings, AnalyticsEnabled = " + E);
    l = paramContext.getFileStreamPath(k());
    m = new jz(paramContext.getFileStreamPath(l()), ".yflurryreport.", 1, new jb.10(this));
    c(paramContext);
    a(true);
    if (hl.a().c() != null) {
      js.a().b(new jb.11(this));
    }
    js.a().b(new jb.12(this));
    js.a().b(new jb.13(this));
    if (jf.a().c())
    {
      js.a().b(new jb.14(this));
      return;
    }
    kc.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", G);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int i1 = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        kg.a(6, f, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("LogEvents"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("UserId"))
          {
            i1 = 1;
            continue;
            if (paramString.equals("Gender"))
            {
              i1 = 2;
              continue;
              if (paramString.equals("Age"))
              {
                i1 = 3;
                continue;
                if (paramString.equals("analyticsEnabled")) {
                  i1 = 4;
                }
              }
            }
          }
        }
        break;
      }
    }
    p = ((Boolean)paramObject).booleanValue();
    kg.a(4, f, "onSettingUpdate, LogEvents = " + p);
    return;
    q = ((String)paramObject);
    kg.a(4, f, "onSettingUpdate, UserId = " + q);
    return;
    r = ((Byte)paramObject).byteValue();
    kg.a(4, f, "onSettingUpdate, Gender = " + r);
    return;
    s = ((Long)paramObject);
    kg.a(4, f, "onSettingUpdate, Birthdate = " + s);
    return;
    E = ((Boolean)paramObject).booleanValue();
    kg.a(4, f, "onSettingUpdate, AnalyticsEnabled = " + E);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Throwable paramThrowable)
  {
    if (paramString1 != null) {}
    for (;;)
    {
      try
      {
        long l1;
        if ("uncaught".equals(paramString1))
        {
          i1 = 1;
          C += 1;
          if (B.size() < e)
          {
            l1 = System.currentTimeMillis();
            paramString1 = new iu(p(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
            B.add(paramString1);
            kg.e(f, "Error logged: " + paramString1.c());
          }
        }
        else
        {
          i1 = 0;
          continue;
        }
        if (i1 == 0) {
          break label243;
        }
        int i1 = 0;
        if (i1 >= B.size()) {
          continue;
        }
        iu localiu = (iu)B.get(i1);
        if ((localiu.c() != null) && (!"uncaught".equals(localiu.c())))
        {
          l1 = System.currentTimeMillis();
          paramString1 = new iu(p(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
          B.set(i1, paramString1);
          continue;
        }
        i1 += 1;
      }
      finally {}
      continue;
      label243:
      kg.e(f, "Max errors logged. No more errors logged.");
    }
  }
  
  public void a(String paramString, Map<String, String> paramMap)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = y.iterator();
        iw localiw;
        int i1;
        if (localIterator.hasNext())
        {
          localiw = (iw)localIterator.next();
          if (!localiw.a(paramString)) {
            continue;
          }
          long l1 = SystemClock.elapsedRealtime();
          long l2 = je.a().e();
          if ((paramMap != null) && (paramMap.size() > 0) && (A < d))
          {
            i1 = A - localiw.d();
            paramString = new HashMap(localiw.c());
            localiw.a(paramMap);
            if (localiw.d() + i1 > d) {
              break label212;
            }
            if (localiw.c().size() > b)
            {
              kg.e(f, "MaxEventParams exceeded on endEvent: " + localiw.c().size());
              localiw.b(paramString);
            }
          }
          else
          {
            localiw.a(l1 - l2);
          }
        }
        else
        {
          return;
        }
        A = (i1 + localiw.d());
        continue;
        localiw.b(paramString);
      }
      finally {}
      label212:
      z = false;
      A = d;
      kg.e(f, "Event Log size exceeded. No more event details logged.");
    }
  }
  
  public void b()
  {
    try
    {
      D += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(Context paramContext)
  {
    try
    {
      a(false);
      long l1 = je.a().d();
      long l2 = je.a().f();
      long l3 = je.a().h();
      int i1 = je.a().l().a();
      b(je.a().f());
      if ((E) && (hl.a().c() != null)) {
        js.a().b(new jb.2(this, l1));
      }
      js.a().b(new jb.3(this));
      if (jf.a().c()) {
        js.a().b(new jb.4(this, l1, l2, l3, i1));
      }
      return;
    }
    finally {}
  }
  
  public void c()
  {
    try
    {
      kg.a(4, f, "Saving persistent agent data.");
      m.a(u);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  String d()
  {
    if (q == null) {
      return "";
    }
    return q;
  }
  
  List<iw> e()
  {
    return y;
  }
  
  List<iu> f()
  {
    return B;
  }
  
  Map<String, iv> g()
  {
    return x;
  }
  
  int h()
  {
    return D;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */