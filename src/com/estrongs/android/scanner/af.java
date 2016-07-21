package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.a.f;
import com.estrongs.android.scanner.d.m;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class af
{
  public static long a;
  private static final String b = af.class.getSimpleName();
  private final BlockingQueue<ak> c = new LinkedBlockingQueue();
  private ExecutorService d;
  private volatile boolean e;
  private ThreadLocal<Map<String, String>> f;
  private final AtomicInteger g = new AtomicInteger(0);
  private final ae h = new ae();
  private final com.estrongs.android.scanner.b.b i = com.estrongs.android.scanner.b.b.a();
  private final CyclicBarrier j = new CyclicBarrier(10);
  private final m k = new m();
  private y l;
  private final al m;
  private AtomicInteger n = new AtomicInteger(0);
  private AtomicInteger o = new AtomicInteger(0);
  private Runnable p = new ag(this);
  
  public af(al paramal)
  {
    m = paramal;
  }
  
  private void a(ak paramak)
  {
    o.incrementAndGet();
    Object localObject2 = paramak.a();
    String str2 = ((File)localObject2).getPath() + "/";
    long l2 = ((File)localObject2).lastModified();
    Object localObject1 = k.c(str2);
    if (!((File)localObject2).exists())
    {
      l.e(b, "absent path:" + str2);
      if (localObject1 != null) {
        k.d(str2);
      }
      return;
    }
    long l1;
    int i1;
    if (localObject1 != null)
    {
      l1 = ((c)localObject1).c();
      if (!k.e())
      {
        a(str2);
        if (l2 == ((c)localObject1).f()) {
          break label909;
        }
        l.e(b, "modified path:" + str2);
        ((c)localObject1).b(l2);
        k.b((c)localObject1);
        i1 = 1;
        localObject1 = null;
      }
    }
    for (;;)
    {
      label192:
      String[] arrayOfString = ((File)localObject2).list();
      if (arrayOfString == null) {
        break;
      }
      n.addAndGet(arrayOfString.length);
      boolean bool1 = paramak.d();
      boolean bool4 = bool1;
      if (!bool1) {
        bool4 = b(arrayOfString);
      }
      boolean bool5 = paramak.f();
      boolean bool2 = paramak.e();
      if ((!bool2) && (((File)localObject2).getName().startsWith("."))) {
        bool2 = true;
      }
      for (;;)
      {
        localObject2 = paramak.h();
        String str1 = paramak.g();
        if (localObject2 == null) {
          localObject2 = i.c(str2);
        }
        for (;;)
        {
          if (localObject2 == null) {
            str1 = i.d(str2);
          }
          for (;;)
          {
            bool1 = paramak.c();
            if (!bool1) {
              if (localObject2 != null) {
                bool1 = true;
              }
            }
            label386:
            label675:
            label897:
            for (;;)
            {
              if (localObject1 != null)
              {
                ((com.estrongs.android.scanner.a.b)localObject1).a(bool4, bool2, bool5);
                ((com.estrongs.android.scanner.a.b)localObject1).a(bool1);
                l1 = k.a((c)localObject1);
              }
              localObject1 = new ArrayList(arrayOfString.length);
              int i3 = arrayOfString.length;
              int i2 = 0;
              if (i2 < i3)
              {
                Object localObject3 = arrayOfString[i2];
                if (h.c((String)localObject3)) {
                  bool3 = bool2;
                }
                Object localObject4;
                File localFile;
                do
                {
                  for (;;)
                  {
                    i2 += 1;
                    bool2 = bool3;
                    break label386;
                    if (l2 == ((c)localObject1).f())
                    {
                      c(str2);
                      return;
                    }
                    a(str2);
                    break;
                    localObject1 = new com.estrongs.android.scanner.a.b(str2, ap.d(str2), l2);
                    l1 = 0L;
                    i1 = 0;
                    break label192;
                    if (str1 == null) {
                      break label897;
                    }
                    if (!i.a(str2)) {}
                    for (bool1 = true;; bool1 = false) {
                      break;
                    }
                    if (str1 == null) {
                      break label897;
                    }
                    if (!i.a(str2)) {}
                    for (bool1 = true;; bool1 = false) {
                      break;
                    }
                    localObject4 = str2 + (String)localObject3;
                    localFile = new File((String)localObject4);
                    if (!localFile.isDirectory()) {
                      break label675;
                    }
                    bool3 = bool2;
                    if (!h.a((String)localObject4))
                    {
                      if (i1 != 0) {
                        b((String)localObject3);
                      }
                      localObject3 = new ak(localFile);
                      ((ak)localObject3).a(bool1);
                      ((ak)localObject3).b(bool4);
                      ((ak)localObject3).c(bool2);
                      ((ak)localObject3).a(str1);
                      ((ak)localObject3).b((String)localObject2);
                      g.incrementAndGet();
                      c.put(localObject3);
                      bool3 = bool2;
                    }
                  }
                  l2 = localFile.length();
                  localObject4 = l.a((String)localObject4, ap.bR((String)localObject3));
                  bool3 = bool2;
                } while (localObject4 == null);
                o.incrementAndGet();
                boolean bool3 = bool2;
                if (!bool2) {
                  bool3 = ((String)localObject3).startsWith(".");
                }
                ((d)localObject4).b(localFile.lastModified());
                ((d)localObject4).d(l2);
                ((d)localObject4).c(l1);
                ((d)localObject4).a(paramak.b() | bool1);
                ((d)localObject4).a(bool4, bool3, bool5);
                if (localObject2 != null) {
                  ((d)localObject4).b((String)localObject2);
                }
                for (;;)
                {
                  ((List)localObject1).add(localObject4);
                  break;
                  if (str1 != null) {
                    ((d)localObject4).b(str1);
                  } else if (paramak.b()) {
                    ((d)localObject4).b("SDCards");
                  }
                }
              }
              if (i1 != 0) {}
              for (i2 = 2;; i2 = 1)
              {
                paramak = new f(i2, l1, str2, (List)localObject1);
                if (str1 != null)
                {
                  paramak.b(true);
                  paramak.a(str1);
                }
                l.a(paramak);
                if (i1 == 0) {
                  break;
                }
                c();
                return;
              }
            }
          }
        }
      }
      label909:
      i1 = 1;
      localObject1 = null;
    }
  }
  
  private final void a(String paramString)
  {
    Map localMap = (Map)f.get();
    localMap.clear();
    paramString = k.b(paramString);
    if ((paramString != null) && (!paramString.isEmpty()))
    {
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        c localc = (c)paramString.next();
        localMap.put(localc.e(), localc.d());
      }
    }
  }
  
  private final void b(String paramString)
  {
    Map localMap = (Map)f.get();
    if ((!localMap.isEmpty()) && ((String)localMap.remove(paramString) == null)) {
      l.e(b, "find new folder:" + paramString);
    }
  }
  
  private static boolean b(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length == 0) {
      return false;
    }
    int i2 = paramArrayOfString.length;
    int i1 = 0;
    label12:
    String str;
    if (i1 < i2)
    {
      str = paramArrayOfString[i1];
      if (str.length() == ".nomedia".length()) {
        break label41;
      }
    }
    label41:
    while (!str.equalsIgnoreCase(".nomedia"))
    {
      i1 += 1;
      break label12;
      break;
    }
    return true;
  }
  
  private final void c()
  {
    Object localObject = (Map)f.get();
    if (!((Map)localObject).isEmpty())
    {
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Map.Entry)((Iterator)localObject).next()).getValue();
        l.e(b, "find trash folder:" + str);
        k.d(str);
      }
    }
    ((Map)localObject).clear();
  }
  
  private void c(String paramString)
  {
    paramString = k.b(paramString);
    if ((paramString == null) || (paramString.isEmpty())) {}
    for (;;)
    {
      return;
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        ak localak = new ak(new File(((c)paramString.next()).d()));
        g.incrementAndGet();
        c.put(localak);
      }
    }
  }
  
  private boolean c(String[] paramArrayOfString)
  {
    boolean bool3 = false;
    boolean bool1 = false;
    l.b(b, "prepare for scanning...");
    boolean bool2 = bool1;
    if (paramArrayOfString != null)
    {
      if (paramArrayOfString.length != 0) {
        break label35;
      }
      bool2 = bool1;
    }
    label35:
    int i2;
    int i1;
    do
    {
      return bool2;
      i2 = paramArrayOfString.length;
      i1 = 0;
      bool1 = bool3;
      bool2 = bool1;
    } while (i1 >= i2);
    Object localObject = paramArrayOfString[i1];
    if (localObject == null) {}
    for (;;)
    {
      i1 += 1;
      break;
      l.c(b, "start path: " + (String)localObject);
      File localFile = new File((String)localObject);
      if ((!localFile.exists()) || (!localFile.isDirectory()))
      {
        l.c(b, "no exist path!: " + (String)localObject);
        continue;
      }
      try
      {
        localObject = new ak(localFile, true);
        g.incrementAndGet();
        c.put(localObject);
        bool1 = true;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
  
  private void d()
  {
    f localf = new f();
    l.a(localf);
    k.a(new aj(this));
    if (m != null) {
      m.a();
    }
  }
  
  private final boolean e()
  {
    if ((g.get() == 0) && (c.isEmpty()))
    {
      l.c(b, "check the scanner finished!");
      synchronized (c)
      {
        if (!e) {
          return true;
        }
        e = false;
        d();
        return true;
      }
    }
    return false;
  }
  
  public void a()
  {
    try
    {
      l.b(b, "cancel...");
      if (d != null)
      {
        e = false;
        c.clear();
        d.shutdownNow();
        d = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    a = System.currentTimeMillis();
    g.set(0);
    e = true;
    if (!c(paramArrayOfString))
    {
      l.e(b, "fail to prepare for scanning...");
      return;
    }
    d = Executors.newFixedThreadPool(10, new am("Disk Scanner"));
    paramArrayOfString = new ai(this);
    d.execute(paramArrayOfString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */