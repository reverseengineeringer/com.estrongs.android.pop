package com.flurry.sdk;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ig
  implements ll.a
{
  private static final String a = ig.class.getSimpleName();
  private static String b = "https://proton.flurry.com/sdk/v1/config";
  private final Runnable c = new ig.1(this);
  private final kb<jg> d = new ig.4(this);
  private final kb<jh> e = new ig.5(this);
  private final kb<jk> f = new ig.6(this);
  private final kk<hs> g = new kk("proton config request", new is());
  private final kk<ht> h = new kk("proton config response", new it());
  private jz<ie> i;
  private jz<List<in>> j;
  private final if k = new if();
  private final jx<String, hw> l = new jx();
  private final List<in> m = new ArrayList();
  private boolean n;
  private String o;
  private boolean p = true;
  private boolean q;
  private long r = 10000L;
  private long s;
  private boolean t;
  private ht u;
  private boolean v;
  
  public ig()
  {
    lk locallk = lk.a();
    n = ((Boolean)locallk.a("ProtonEnabled")).booleanValue();
    locallk.a("ProtonEnabled", this);
    kg.a(4, a, "initSettings, protonEnabled = " + n);
    o = ((String)locallk.a("ProtonConfigUrl"));
    locallk.a("ProtonConfigUrl", this);
    kg.a(4, a, "initSettings, protonConfigUrl = " + o);
    p = ((Boolean)locallk.a("analyticsEnabled")).booleanValue();
    locallk.a("analyticsEnabled", this);
    kg.a(4, a, "initSettings, AnalyticsEnabled = " + p);
    kc.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", d);
    kc.a().a("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", e);
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", f);
    i = new jz(js.a().c().getFileStreamPath(o()), ".yflurryprotonconfig.", 1, new ig.7(this));
    j = new jz(js.a().c().getFileStreamPath(p()), ".yflurryprotonreport.", 1, new ig.8(this));
    js.a().b(new ig.9(this));
    js.a().b(new ig.10(this));
  }
  
  private void a(long paramLong, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      try
      {
        kg.a(4, a, "Saving proton config response");
        ie localie = new ie();
        localie.a(paramLong);
        localie.a(paramBoolean);
        localie.a(paramArrayOfByte);
        i.a(localie);
      }
      finally {}
    }
  }
  
  private boolean a(hr paramhr)
  {
    if (paramhr == null) {
      return true;
    }
    if (a == null) {
      return true;
    }
    int i1 = 0;
    while (i1 < a.size())
    {
      hq localhq = (hq)a.get(i1);
      if ((localhq != null) && ((b.equals("")) || (a == -1L) || (e.equals("")) || (!a(c))))
      {
        kg.a(3, a, "A callback template is missing required values");
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  private boolean a(ht paramht)
  {
    if (paramht == null) {
      return false;
    }
    if ((!a(e)) || (e.e.equals("")))
    {
      kg.a(3, a, "Config response is missing required values.");
      return false;
    }
    return true;
  }
  
  private boolean a(List<hw> paramList)
  {
    if (paramList == null) {
      return true;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      hw localhw = (hw)paramList.next();
      if (a.equals(""))
      {
        kg.a(3, a, "An event is missing a name");
        return false;
      }
      if (((localhw instanceof hx)) && (c.equals("")))
      {
        kg.a(3, a, "An event trigger is missing a param name");
        return false;
      }
    }
    return true;
  }
  
  private void b(long paramLong)
  {
    try
    {
      Iterator localIterator = m.iterator();
      while (localIterator.hasNext()) {
        if (paramLong == ((in)localIterator.next()).b()) {
          localIterator.remove();
        }
      }
    }
    finally {}
  }
  
  private void b(String paramString, Map<String, String> paramMap)
  {
    Object localObject1;
    for (;;)
    {
      try
      {
        kg.a(3, a, "Event triggered: " + paramString);
        if (!p)
        {
          kg.e(a, "Analytics and pulse have been disabled.");
          return;
        }
        if (u == null)
        {
          kg.a(3, a, "Config response is empty. No events to fire.");
          continue;
        }
        lt.b();
      }
      finally {}
      if (!TextUtils.isEmpty(paramString))
      {
        localObject1 = l.a(paramString);
        if (localObject1 == null)
        {
          kg.a(3, a, "No events to fire. Returning.");
        }
        else
        {
          if (((List)localObject1).size() != 0) {
            break;
          }
          kg.a(3, a, "No events to fire. Returning.");
        }
      }
    }
    long l1 = System.currentTimeMillis();
    boolean bool;
    label146:
    int i1;
    label188:
    ir localir;
    HashMap localHashMap1;
    label211:
    Object localObject2;
    String str;
    if (paramMap != null)
    {
      bool = true;
      i1 = -1;
      Iterator localIterator;
      switch (paramString.hashCode())
      {
      case 1579613685: 
        localir = ir.d;
        localHashMap1 = new HashMap();
        localIterator = ((List)localObject1).iterator();
      case 645204782: 
      case 1371447545: 
        for (;;)
        {
          if (!localIterator.hasNext()) {
            break label700;
          }
          localObject1 = (hw)localIterator.next();
          i1 = 0;
          if (!(localObject1 instanceof hx)) {
            break label474;
          }
          kg.a(4, a, "Event contains triggers.");
          localObject2 = d;
          if (localObject2 == null)
          {
            kg.a(4, a, "Template does not contain trigger values. Firing.");
            i1 = 1;
          }
          label407:
          do
          {
            for (;;)
            {
              str = (String)paramMap.get(c);
              if (str != null) {
                break label865;
              }
              kg.a(4, a, "Publisher params has no value associated with proton key. Not firing.");
              break label211;
              if (!paramString.equals("flurry.session_start")) {
                break label828;
              }
              i1 = 0;
              break label828;
              if (!paramString.equals("flurry.session_end")) {
                break label828;
              }
              i1 = 1;
              break label828;
              if (!paramString.equals("flurry.app_install")) {
                break label828;
              }
              i1 = 2;
              break label828;
              localir = ir.b;
              break;
              localir = ir.c;
              break;
              localir = ir.a;
              break;
              if (localObject2.length != 0) {
                break label407;
              }
              kg.a(4, a, "Template does not contain trigger values. Firing.");
              i1 = 1;
            }
          } while (paramMap != null);
          kg.a(4, a, "Publisher has not passed in params list. Not firing.");
        }
      }
    }
    for (;;)
    {
      int i2;
      if (i2 < localObject2.length)
      {
        if (localObject2[i2].equals(str)) {
          i1 = 1;
        }
      }
      else
      {
        for (;;)
        {
          if (i1 == 0)
          {
            kg.a(4, a, "Publisher params list does not match proton param values. Not firing.");
            break label211;
          }
          kg.a(4, a, "Publisher params match proton values. Firing.");
          label474:
          localObject2 = b;
          if (localObject2 == null)
          {
            kg.a(3, a, "Template is empty. Not firing current event.");
            break label211;
          }
          kg.a(3, a, "Creating callback report for partner: " + b);
          HashMap localHashMap2 = new HashMap();
          localHashMap2.put("event_name", paramString);
          localHashMap2.put("event_time_millis", String.valueOf(l1));
          str = k.a(e, localHashMap2);
          localObject1 = null;
          if (f != null) {
            localObject1 = k.a(f, localHashMap2);
          }
          long l2 = System.currentTimeMillis();
          localObject1 = new ij(b, a, str, l2 + 259200000L, u.e.b, g, d, j, i, h, (String)localObject1);
          localHashMap1.put(Long.valueOf(a), localObject1);
          break label211;
          label700:
          if (localHashMap1.size() == 0) {
            break;
          }
          paramMap = new in(paramString, bool, je.a().d(), je.a().g(), localir, localHashMap1);
          if ("flurry.session_end".equals(paramString))
          {
            kg.a(3, a, "Storing Pulse callbacks for event: " + paramString);
            m.add(paramMap);
            break;
          }
          kg.a(3, a, "Firing Pulse callbacks for event: " + paramString);
          im.a().a(paramMap);
          break;
        }
        label828:
        switch (i1)
        {
        }
        break label188;
        bool = false;
        break label146;
        label865:
        i2 = 0;
        continue;
      }
      i2 += 1;
    }
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 148	com/flurry/sdk/ig:n	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 379	com/flurry/sdk/lt:b	()V
    //   17: invokestatic 204	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   20: invokevirtual 207	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   23: ldc_w 527
    //   26: iconst_0
    //   27: invokevirtual 531	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   30: astore_2
    //   31: aload_2
    //   32: ldc_w 533
    //   35: iconst_1
    //   36: invokeinterface 539 3 0
    //   41: ifeq -30 -> 11
    //   44: aload_0
    //   45: ldc_w 426
    //   48: aconst_null
    //   49: invokespecial 271	com/flurry/sdk/ig:b	(Ljava/lang/String;Ljava/util/Map;)V
    //   52: aload_2
    //   53: invokeinterface 543 1 0
    //   58: astore_2
    //   59: aload_2
    //   60: ldc_w 533
    //   63: iconst_0
    //   64: invokeinterface 549 3 0
    //   69: pop
    //   70: aload_2
    //   71: invokeinterface 552 1 0
    //   76: goto -65 -> 11
    //   79: astore_2
    //   80: aload_0
    //   81: monitorexit
    //   82: aload_2
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	ig
    //   6	2	1	bool	boolean
    //   30	41	2	localObject1	Object
    //   79	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	79	finally
    //   14	76	79	finally
  }
  
  private void g()
  {
    for (;;)
    {
      try
      {
        boolean bool = n;
        if (!bool) {
          return;
        }
        lt.b();
        if ((!q) || (!jf.a().c())) {
          continue;
        }
        long l1 = System.currentTimeMillis();
        if (!jf.a().e())
        {
          bool = true;
          if (u != null)
          {
            if (t == bool) {
              break label261;
            }
            kg.a(3, a, "Limit ad tracking value has changed, purging");
            u = null;
          }
          jq.a().a(this);
          kg.a(3, a, "Requesting proton config");
          byte[] arrayOfByte = h();
          if (arrayOfByte == null) {
            continue;
          }
          kn localkn = new kn();
          if (!TextUtils.isEmpty(o)) {
            break label365;
          }
          String str1 = b;
          localkn.a(str1);
          localkn.d(5000);
          localkn.a(kp.a.c);
          localkn.a("Content-Type", "application/x-flurry;version=2");
          localkn.a("Accept", "application/x-flurry;version=2");
          localkn.a("FM-Checksum", Integer.toString(kk.c(arrayOfByte)));
          localkn.a(new kx());
          localkn.b(new kx());
          localkn.a(arrayOfByte);
          localkn.a(new ig.2(this, l1, bool));
          jq.a().a(this, localkn);
          continue;
        }
        bool = false;
      }
      finally {}
      continue;
      label261:
      if (System.currentTimeMillis() < s + u.b * 1000L)
      {
        kg.a(3, a, "Cached Proton config valid, no need to refresh");
        if (!v)
        {
          v = true;
          b("flurry.session_start", null);
        }
      }
      else if (System.currentTimeMillis() >= s + u.c * 1000L)
      {
        kg.a(3, a, "Cached Proton config expired, purging");
        u = null;
        l.a();
        continue;
        label365:
        String str2 = o;
      }
    }
  }
  
  private byte[] h()
  {
    for (;;)
    {
      Map.Entry localEntry;
      hu localhu;
      try
      {
        hs localhs = new hs();
        a = js.a().d();
        b = lq.c(js.a().c());
        c = lq.d(js.a().c());
        d = jt.a();
        e = 3;
        f = jo.a().c();
        if (!jf.a().e())
        {
          bool = true;
          g = bool;
          h = new hv();
          h.a = new hp();
          h.a.a = Build.MODEL;
          h.a.b = Build.BRAND;
          h.a.c = Build.ID;
          h.a.d = Build.DEVICE;
          h.a.e = Build.PRODUCT;
          h.a.f = Build.VERSION.RELEASE;
          i = new ArrayList();
          localObject = jf.a().h().entrySet().iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          localEntry = (Map.Entry)((Iterator)localObject).next();
          localhu = new hu();
          a = getKeyd;
          if (!getKeye) {
            break label348;
          }
          b = new String((byte[])localEntry.getValue());
          i.add(localhu);
          continue;
        }
        boolean bool = false;
      }
      catch (Exception localException)
      {
        kg.a(5, a, "Proton config request failed with exception: " + localException);
        return null;
      }
      continue;
      label348:
      b = lt.b((byte[])localEntry.getValue());
    }
    Object localObject = jj.a().e();
    if (localObject != null)
    {
      j = new hz();
      j.a = new hy();
      j.a.a = lt.a(((Location)localObject).getLatitude(), 3);
      j.a.b = lt.a(((Location)localObject).getLongitude(), 3);
      j.a.c = ((float)lt.a(((Location)localObject).getAccuracy(), 3));
    }
    localObject = (String)lk.a().a("UserId");
    if (!((String)localObject).equals(""))
    {
      k = new ic();
      k.a = ((String)localObject);
    }
    byte[] arrayOfByte = g.a(localException);
    return arrayOfByte;
  }
  
  private void i()
  {
    label7:
    Object localObject1;
    if (u == null)
    {
      return;
    }
    else
    {
      do
      {
        do
        {
          kg.a(5, a, "Processing config response");
          im.a(u.e.c);
          im.b(u.e.d * 1000);
          io.a().a(u.e.e);
          if (n) {
            lk.a().a("analyticsEnabled", Boolean.valueOf(u.f.b));
          }
          l.a();
          localObject1 = u.e;
        } while (localObject1 == null);
        localObject1 = a;
      } while (localObject1 == null);
      localObject1 = ((List)localObject1).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject1).hasNext()) {
        break label7;
      }
      hq localhq = (hq)((Iterator)localObject1).next();
      if (localhq == null) {
        break;
      }
      Object localObject2 = c;
      if (localObject2 == null) {
        break;
      }
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        hw localhw = (hw)((Iterator)localObject2).next();
        if ((localhw != null) && (!TextUtils.isEmpty(a)))
        {
          b = localhq;
          l.a(a, localhw);
        }
      }
    }
  }
  
  /* Error */
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 225	com/flurry/sdk/ig:i	Lcom/flurry/sdk/jz;
    //   6: invokevirtual 859	com/flurry/sdk/jz:a	()Ljava/lang/Object;
    //   9: checkcast 249	com/flurry/sdk/ie
    //   12: astore_3
    //   13: aload_3
    //   14: ifnull +76 -> 90
    //   17: aload_0
    //   18: getfield 107	com/flurry/sdk/ig:h	Lcom/flurry/sdk/kk;
    //   21: aload_3
    //   22: invokevirtual 861	com/flurry/sdk/ie:c	()[B
    //   25: invokevirtual 864	com/flurry/sdk/kk:d	([B)Ljava/lang/Object;
    //   28: checkcast 311	com/flurry/sdk/ht
    //   31: astore_1
    //   32: aload_1
    //   33: astore_2
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 322	com/flurry/sdk/ig:a	(Lcom/flurry/sdk/ht;)Z
    //   39: ifne +5 -> 44
    //   42: aconst_null
    //   43: astore_2
    //   44: aload_2
    //   45: ifnull +45 -> 90
    //   48: iconst_4
    //   49: getstatic 58	com/flurry/sdk/ig:a	Ljava/lang/String;
    //   52: ldc_w 866
    //   55: invokestatic 171	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   58: aload_0
    //   59: ldc2_w 125
    //   62: putfield 128	com/flurry/sdk/ig:r	J
    //   65: aload_0
    //   66: aload_3
    //   67: invokevirtual 868	com/flurry/sdk/ie:a	()J
    //   70: putfield 353	com/flurry/sdk/ig:s	J
    //   73: aload_0
    //   74: aload_3
    //   75: invokevirtual 870	com/flurry/sdk/ie:b	()Z
    //   78: putfield 325	com/flurry/sdk/ig:t	Z
    //   81: aload_0
    //   82: aload_2
    //   83: putfield 356	com/flurry/sdk/ig:u	Lcom/flurry/sdk/ht;
    //   86: aload_0
    //   87: invokespecial 554	com/flurry/sdk/ig:i	()V
    //   90: aload_0
    //   91: iconst_1
    //   92: putfield 556	com/flurry/sdk/ig:q	Z
    //   95: invokestatic 204	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   98: new 872	com/flurry/sdk/ig$3
    //   101: dup
    //   102: aload_0
    //   103: invokespecial 873	com/flurry/sdk/ig$3:<init>	(Lcom/flurry/sdk/ig;)V
    //   106: invokevirtual 240	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   109: aload_0
    //   110: monitorexit
    //   111: return
    //   112: astore_1
    //   113: iconst_5
    //   114: getstatic 58	com/flurry/sdk/ig:a	Ljava/lang/String;
    //   117: new 153	java/lang/StringBuilder
    //   120: dup
    //   121: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   124: ldc_w 875
    //   127: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload_1
    //   131: invokevirtual 764	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokestatic 171	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   140: aload_0
    //   141: getfield 225	com/flurry/sdk/ig:i	Lcom/flurry/sdk/jz;
    //   144: invokevirtual 876	com/flurry/sdk/jz:b	()Z
    //   147: pop
    //   148: aconst_null
    //   149: astore_1
    //   150: goto -118 -> 32
    //   153: astore_1
    //   154: aload_0
    //   155: monitorexit
    //   156: aload_1
    //   157: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	158	0	this	ig
    //   31	5	1	localht1	ht
    //   112	19	1	localException	Exception
    //   149	1	1	localObject1	Object
    //   153	4	1	localObject2	Object
    //   33	50	2	localht2	ht
    //   12	63	3	localie	ie
    // Exception table:
    //   from	to	target	type
    //   17	32	112	java/lang/Exception
    //   2	13	153	finally
    //   17	32	153	finally
    //   34	42	153	finally
    //   48	90	153	finally
    //   90	109	153	finally
    //   113	148	153	finally
  }
  
  private void k()
  {
    for (;;)
    {
      try
      {
        if (!p)
        {
          kg.e(a, "Analytics disabled, not sending pulse reports.");
          return;
        }
        kg.a(4, a, "Sending " + m.size() + " queued reports.");
        Iterator localIterator = m.iterator();
        if (localIterator.hasNext())
        {
          in localin = (in)localIterator.next();
          kg.a(3, a, "Firing Pulse callbacks for event: " + localin.c());
          im.a().a(localin);
        }
        else
        {
          n();
        }
      }
      finally {}
    }
  }
  
  private void l()
  {
    try
    {
      kg.a(4, a, "Loading queued report data.");
      List localList = (List)j.a();
      if (localList != null) {
        m.addAll(localList);
      }
      return;
    }
    finally {}
  }
  
  private void m()
  {
    try
    {
      kg.a(4, a, "Saving queued report data.");
      j.a(m);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void n()
  {
    try
    {
      m.clear();
      j.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private String o()
  {
    return ".yflurryprotonconfig." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  private String p()
  {
    return ".yflurryprotonreport." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  public void a()
  {
    js.a().c(c);
    kc.a().b("com.flurry.android.sdk.NetworkStateEvent", f);
    kc.a().b("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", e);
    kc.a().b("com.flurry.android.sdk.IdProviderFinishedEvent", d);
    im.b();
    lk.a().b("ProtonEnabled", this);
  }
  
  /* Error */
  public void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 148	com/flurry/sdk/ig:n	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 379	com/flurry/sdk/lt:b	()V
    //   17: aload_0
    //   18: lload_1
    //   19: invokespecial 915	com/flurry/sdk/ig:b	(J)V
    //   22: aload_0
    //   23: ldc_w 424
    //   26: aconst_null
    //   27: invokespecial 271	com/flurry/sdk/ig:b	(Ljava/lang/String;Ljava/util/Map;)V
    //   30: invokestatic 204	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   33: new 917	com/flurry/sdk/ig$11
    //   36: dup
    //   37: aload_0
    //   38: invokespecial 918	com/flurry/sdk/ig$11:<init>	(Lcom/flurry/sdk/ig;)V
    //   41: invokevirtual 240	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   44: goto -33 -> 11
    //   47: astore 4
    //   49: aload_0
    //   50: monitorexit
    //   51: aload 4
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	ig
    //   0	54	1	paramLong	long
    //   6	2	3	bool	boolean
    //   47	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	47	finally
    //   14	44	47	finally
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
        kg.a(6, a, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("ProtonEnabled"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("ProtonConfigUrl"))
          {
            i1 = 1;
            continue;
            if (paramString.equals("analyticsEnabled")) {
              i1 = 2;
            }
          }
        }
        break;
      }
    }
    n = ((Boolean)paramObject).booleanValue();
    kg.a(4, a, "onSettingUpdate, protonEnabled = " + n);
    return;
    o = ((String)paramObject);
    kg.a(4, a, "onSettingUpdate, protonConfigUrl = " + o);
    return;
    p = ((Boolean)paramObject).booleanValue();
    kg.a(4, a, "onSettingUpdate, AnalyticsEnabled = " + p);
  }
  
  /* Error */
  public void a(String paramString, Map<String, String> paramMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 148	com/flurry/sdk/ig:n	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 379	com/flurry/sdk/lt:b	()V
    //   17: aload_0
    //   18: aload_1
    //   19: aload_2
    //   20: invokespecial 271	com/flurry/sdk/ig:b	(Ljava/lang/String;Ljava/util/Map;)V
    //   23: goto -12 -> 11
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	31	0	this	ig
    //   0	31	1	paramString	String
    //   0	31	2	paramMap	Map<String, String>
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
    //   14	23	26	finally
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 148	com/flurry/sdk/ig:n	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 379	com/flurry/sdk/lt:b	()V
    //   17: invokestatic 495	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   20: invokevirtual 497	com/flurry/sdk/je:d	()J
    //   23: putstatic 929	com/flurry/sdk/ii:a	J
    //   26: aload_0
    //   27: iconst_0
    //   28: putfield 520	com/flurry/sdk/ig:v	Z
    //   31: aload_0
    //   32: invokespecial 264	com/flurry/sdk/ig:g	()V
    //   35: goto -24 -> 11
    //   38: astore_2
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_2
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	ig
    //   6	2	1	bool	boolean
    //   38	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	38	finally
    //   14	35	38	finally
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 148	com/flurry/sdk/ig:n	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 379	com/flurry/sdk/lt:b	()V
    //   17: aload_0
    //   18: invokestatic 495	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   21: invokevirtual 497	com/flurry/sdk/je:d	()J
    //   24: invokespecial 915	com/flurry/sdk/ig:b	(J)V
    //   27: aload_0
    //   28: invokespecial 931	com/flurry/sdk/ig:k	()V
    //   31: goto -20 -> 11
    //   34: astore_2
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_2
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	ig
    //   6	2	1	bool	boolean
    //   34	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   14	31	34	finally
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 148	com/flurry/sdk/ig:n	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 379	com/flurry/sdk/lt:b	()V
    //   17: aload_0
    //   18: invokespecial 931	com/flurry/sdk/ig:k	()V
    //   21: goto -10 -> 11
    //   24: astore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_2
    //   28: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	29	0	this	ig
    //   6	2	1	bool	boolean
    //   24	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	24	finally
    //   14	21	24	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */