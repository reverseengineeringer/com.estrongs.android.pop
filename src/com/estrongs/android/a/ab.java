package com.estrongs.android.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;
import android.provider.MediaStore.Files;
import android.provider.MediaStore.Video.Media;
import android.text.TextUtils;
import com.estrongs.android.a.a.s;
import com.estrongs.android.a.a.v;
import com.estrongs.android.a.b.m;
import com.estrongs.android.a.b.o;
import com.estrongs.android.a.b.p;
import com.estrongs.android.a.b.w;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ab
{
  private static final String a = ab.class.getSimpleName();
  private static Comparator<List<h>> r = new af();
  private final Set<String> b;
  private final com.estrongs.android.a.a.k[] c;
  private final j d;
  private ThreadPoolExecutor e;
  private int f;
  private long g;
  private final List<com.estrongs.android.a.b.k> h;
  private List<com.estrongs.android.a.b.l> i;
  private List<h> j;
  private List<o> k;
  private Map<com.estrongs.android.a.b.q, h> l;
  private Map<h, List<h>> m;
  private String n;
  private Set<String> o;
  private volatile boolean p = false;
  private Comparator<com.estrongs.android.a.b.q> q = new ae(this);
  
  public ab(j paramj)
  {
    d = paramj;
    h = new ArrayList();
    b = new HashSet();
    paramj = com.estrongs.android.cleaner.j.b().iterator();
    while (paramj.hasNext())
    {
      String str = (String)paramj.next();
      b.add(str + "/.estrongs");
    }
    b.add(com.estrongs.android.pop.a.b);
    c = new com.estrongs.android.a.a.k[5];
    c[2] = new com.estrongs.android.a.a.b();
    c[3] = new s();
    c[4] = new v(1);
    c[1] = new com.estrongs.android.a.a.u();
    c[0] = new com.estrongs.android.a.a.x();
    o = new HashSet();
  }
  
  private boolean c()
  {
    if (p)
    {
      com.estrongs.android.util.l.e(getClass().getSimpleName(), "收到线程中断！！");
      return true;
    }
    if (Thread.currentThread().isInterrupted())
    {
      com.estrongs.android.util.l.e(getClass().getSimpleName(), "收到线程中断！！");
      p = true;
      return true;
    }
    return false;
  }
  
  private void d()
  {
    com.estrongs.fs.d locald = com.estrongs.fs.d.a();
    g = 0L;
    f = 0;
    long l2;
    long l1;
    try
    {
      l2 = System.currentTimeMillis();
      j = locald.a(n);
      i = new ArrayList(j.size());
      l = new HashMap();
      m = new HashMap();
      Iterator localIterator = j.iterator();
      while (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        if (c()) {
          return;
        }
        List localList = locald.a(localh, false, null);
        if (localList != null)
        {
          Object localObject2 = localList.iterator();
          l1 = 0L;
          while (((Iterator)localObject2).hasNext())
          {
            Object localObject3 = (h)((Iterator)localObject2).next();
            if (c()) {
              return;
            }
            if (!i(((h)localObject3).getAbsolutePath()))
            {
              com.estrongs.fs.impl.l.b localb = (com.estrongs.fs.impl.l.b)localObject3;
              f += 1;
              g += ((h)localObject3).length();
              long l3 = ((h)localObject3).length();
              localObject3 = new o(((h)localObject3).getAbsolutePath(), ((h)localObject3).length(), ((h)localObject3).lastModified());
              ((o)localObject3).a(localb.a());
              ((o)localObject3).a(localb.b());
              ((o)localObject3).b(localb.c());
              h.add(localObject3);
              l1 += l3;
            }
          }
          ((com.estrongs.fs.x)localh).setTotalSize(l1);
          localObject2 = new com.estrongs.android.a.b.l(localh.getAbsolutePath(), l1);
          i.add(localObject2);
          l.put(localObject2, localh);
          m.put(localh, localList);
        }
      }
      l1 = System.currentTimeMillis();
    }
    catch (FileSystemException localFileSystemException)
    {
      localFileSystemException = localFileSystemException;
      localFileSystemException.printStackTrace();
      return;
    }
    finally {}
    com.estrongs.android.util.l.e(getClass().getSimpleName(), l1 - l2 + " ms @" + n);
  }
  
  private void e()
  {
    Object localObject3 = null;
    Object localObject4 = (v)c[4];
    Uri localUri;
    int i1;
    String str1;
    long l2;
    if (ap.V(n))
    {
      localUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
      ((v)localObject4).b(1);
      i1 = 2;
      str1 = null;
      com.estrongs.android.util.l.e(getClass().getSimpleName(), "db analyze: " + localUri);
      l2 = System.currentTimeMillis();
    }
    long l1;
    label578:
    label813:
    do
    {
      do
      {
        try
        {
          localObject4 = FexApplication.a().getContentResolver().query(localUri, new String[] { "_data", "_size", "date_modified" }, str1, null, null);
          if (localObject4 == null) {
            break label813;
          }
          try
          {
            com.estrongs.android.util.l.e(getClass().getSimpleName(), "Has " + ((Cursor)localObject4).getCount() + "@" + localUri);
            g = 0L;
            f = 0;
            for (;;)
            {
              if (!((Cursor)localObject4).moveToNext()) {
                break label813;
              }
              boolean bool = c();
              if (bool)
              {
                l1 = System.currentTimeMillis();
                com.estrongs.android.util.l.e(getClass().getSimpleName(), l1 - l2 + " ms @" + localUri + " in DB!");
                com.estrongs.android.util.l.e(getClass().getSimpleName(), f + "/" + g + " @" + localUri + " in DB!");
                if (localObject4 != null) {
                  ((Cursor)localObject4).close();
                }
                do
                {
                  return;
                } while ((ap.aY(n)) || (ap.X(n)));
                if (ap.Z(n))
                {
                  localUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                  ((v)localObject4).b(3);
                  i1 = 3;
                  str1 = null;
                  break;
                }
                localUri = MediaStore.Files.getContentUri("external");
                str1 = q.b();
                ((v)localObject4).b(4);
                i1 = 0;
                break;
              }
              str1 = ((Cursor)localObject4).getString(0);
              localObject3 = new File(str1);
              if (!((File)localObject3).isDirectory()) {
                break label578;
              }
              com.estrongs.android.util.l.e(getClass().getSimpleName(), "db dir file:" + str1);
            }
            l1 = System.currentTimeMillis();
          }
          finally
          {
            localObject3 = localObject4;
          }
        }
        finally
        {
          long l3;
          Object localObject1;
          for (;;) {}
        }
        com.estrongs.android.util.l.e(getClass().getSimpleName(), l1 - l2 + " ms @" + localUri + " in DB!");
        com.estrongs.android.util.l.e(getClass().getSimpleName(), f + "/" + g + " @" + localUri + " in DB!");
        if (localObject3 != null) {
          ((Cursor)localObject3).close();
        }
        throw str2;
      } while (i(str2));
      l3 = ((Cursor)localObject4).getLong(1);
      l1 = ((Cursor)localObject4).getLong(2);
      com.estrongs.android.util.l.b(getClass().getSimpleName(), "lastModified:" + l1);
      if (l1 != -1L) {
        break label963;
      }
      l1 = ((File)localObject3).lastModified();
      break label936;
      com.estrongs.android.util.l.d(getClass().getSimpleName(), "file:" + str2);
      localObject1 = new com.estrongs.android.a.b.k(str2, l3, l1);
      for (;;)
      {
        h.add(localObject1);
        f += 1;
        g += l3;
        break;
        com.estrongs.android.util.l.b(getClass().getSimpleName(), "music file:" + (String)localObject1);
        if (l3 <= 1L) {
          break;
        }
        localObject1 = new p((String)localObject1, l3, l1);
        continue;
        if (l3 <= 1L) {
          break;
        }
        localObject1 = new w((String)localObject1, l3, l1);
      }
      l1 = System.currentTimeMillis();
      com.estrongs.android.util.l.e(getClass().getSimpleName(), l1 - l2 + " ms @" + localUri + " in DB!");
      com.estrongs.android.util.l.e(getClass().getSimpleName(), f + "/" + g + " @" + localUri + " in DB!");
    } while (localObject4 == null);
    ((Cursor)localObject4).close();
    return;
    for (;;)
    {
      label936:
      switch (i1)
      {
      }
      break;
      label963:
      l1 *= 1000L;
    }
  }
  
  private boolean i(String paramString)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      if (ap.i((String)localIterator.next(), paramString))
      {
        com.estrongs.android.util.l.e(getClass().getSimpleName(), "skip file:" + paramString);
        return true;
      }
    }
    return false;
  }
  
  private boolean j(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!ap.ah(paramString)) {
      return false;
    }
    return true;
  }
  
  public com.estrongs.android.a.b.a a(String paramString, int paramInt)
  {
    return z.a(c[3], paramInt);
  }
  
  public void a()
  {
    try
    {
      if (e != null) {
        e.shutdownNow();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(h paramh)
  {
    if ((ap.aY(n)) || (ap.X(n)))
    {
      m.remove(paramh);
      j.remove(paramh);
    }
  }
  
  public void a(String paramString)
  {
    com.estrongs.android.util.l.c(a, "analyze files in the media library...");
    if (!j(paramString))
    {
      d.a(paramString);
      return;
    }
    n = paramString;
    long l1 = System.currentTimeMillis();
    int i1 = c.length + 1;
    ah localah = new ah(this, null);
    ArrayBlockingQueue localArrayBlockingQueue = new ArrayBlockingQueue(i1);
    ArrayList localArrayList = new ArrayList(i1);
    e = new ThreadPoolExecutor(i1 + 3, i1 + 3, 0L, TimeUnit.SECONDS, localArrayBlockingQueue, localah);
    if ((ap.aY(n)) || (ap.X(n))) {
      n = "gallery://local/buckets/";
    }
    e.execute(new ad(this, paramString, localArrayList, l1));
  }
  
  public final void a(List<com.estrongs.android.a.b.q> paramList)
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = c;
    int i2 = localObject2.length;
    int i1 = 0;
    Object localObject3;
    if (i1 < i2)
    {
      localObject3 = localObject2[i1];
      if (localObject3 == null) {}
      for (;;)
      {
        i1 += 1;
        break;
        ((com.estrongs.android.a.a.k)localObject3).b(paramList);
      }
    }
    localObject2 = paramList.iterator();
    Iterator localIterator1;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (com.estrongs.android.a.b.q)((Iterator)localObject2).next();
      h.remove(localObject3);
      if (k != null) {
        k.remove(localObject3);
      }
      if (l != null) {
        l.remove(localObject3);
      }
      if (m != null) {
        localIterator1 = m.keySet().iterator();
      }
    }
    label157:
    label401:
    for (;;)
    {
      List localList;
      if (localIterator1.hasNext())
      {
        paramList = (h)localIterator1.next();
        localList = (List)m.get(paramList);
        Iterator localIterator2 = localList.iterator();
        do
        {
          if (!localIterator2.hasNext()) {
            break;
          }
          paramList = (h)localIterator2.next();
        } while (!paramList.getAbsolutePath().equals(((com.estrongs.android.a.b.q)localObject3).e_()));
      }
      for (;;)
      {
        if (paramList == null) {
          break label401;
        }
        localList.remove(paramList);
        break label157;
        break;
        if (m != null)
        {
          paramList = m.keySet().iterator();
          while (paramList.hasNext())
          {
            localObject2 = (h)paramList.next();
            localObject3 = (List)m.get(localObject2);
            if ((localObject3 != null) && (((List)localObject3).isEmpty())) {
              ((List)localObject1).add(localObject2);
            }
          }
          paramList = ((List)localObject1).iterator();
          while (paramList.hasNext())
          {
            localObject1 = (h)paramList.next();
            m.remove(localObject1);
            j.remove(localObject1);
          }
        }
        return;
        paramList = null;
      }
    }
  }
  
  public com.estrongs.android.a.b.a b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return new com.estrongs.android.a.b.a(0L);
    }
    return new com.estrongs.android.a.b.a(0, f, g);
  }
  
  public com.estrongs.android.a.b.a b(String paramString, int paramInt)
  {
    long l1 = 0L;
    paramString = ((com.estrongs.android.a.a.b)c[2]).b_();
    ArrayList localArrayList = new ArrayList(2);
    Iterator localIterator1 = paramString.keySet().iterator();
    paramInt = 0;
    while (localIterator1.hasNext())
    {
      com.estrongs.fs.impl.c.d locald = (com.estrongs.fs.impl.c.d)localIterator1.next();
      Iterator localIterator2 = ((Queue)paramString.get(locald)).iterator();
      while (localIterator2.hasNext())
      {
        com.estrongs.android.a.b.q localq = (com.estrongs.android.a.b.q)localIterator2.next();
        paramInt += 1;
        l1 += localq.d();
      }
      if (localArrayList.size() < 2) {
        localArrayList.add(locald);
      }
    }
    return new com.estrongs.android.a.b.a(localArrayList, 0, paramInt, l1);
  }
  
  public com.estrongs.android.a.b.a c(String paramString)
  {
    return z.a(paramString, c[3]);
  }
  
  public com.estrongs.android.a.b.a c(String paramString, int paramInt)
  {
    return z.a(c[0], paramInt);
  }
  
  public com.estrongs.android.a.b.a d(String paramString, int paramInt)
  {
    return z.a(c[4], paramInt);
  }
  
  public com.estrongs.android.a.b.d d(String paramString)
  {
    Map localMap = ((com.estrongs.android.a.a.b)c[2]).b_();
    HashMap localHashMap = new HashMap();
    long l1;
    int i1;
    com.estrongs.fs.impl.c.d locald;
    LinkedList localLinkedList;
    int i2;
    long l2;
    Iterator localIterator;
    com.estrongs.android.a.b.q localq;
    if ((ap.aY(paramString)) || (ap.X(paramString)))
    {
      paramString = localMap.keySet().iterator();
      l1 = 0L;
      i1 = 0;
      while (paramString.hasNext())
      {
        locald = (com.estrongs.fs.impl.c.d)paramString.next();
        localLinkedList = new LinkedList();
        i2 = 0;
        l2 = 0L;
        localIterator = ((Queue)localMap.get(locald)).iterator();
        while (localIterator.hasNext())
        {
          localq = (com.estrongs.android.a.b.q)localIterator.next();
          if (l.containsKey(localq))
          {
            i2 += 1;
            l2 += localq.d();
            localLinkedList.add(l.get(localq));
          }
        }
        if (!localLinkedList.isEmpty()) {
          localHashMap.put(locald, new com.estrongs.android.a.b.a(localLinkedList, 0, i2, l2));
        }
        l1 += l2;
        i1 += i2;
      }
    }
    for (;;)
    {
      return new com.estrongs.android.a.b.d(localHashMap, 0, i1, l1);
      paramString = localMap.keySet().iterator();
      l1 = 0L;
      i1 = 0;
      while (paramString.hasNext())
      {
        locald = (com.estrongs.fs.impl.c.d)paramString.next();
        localLinkedList = new LinkedList();
        i2 = 0;
        l2 = 0L;
        localIterator = ((Queue)localMap.get(locald)).iterator();
        while (localIterator.hasNext())
        {
          localq = (com.estrongs.android.a.b.q)localIterator.next();
          if (localq.h())
          {
            i2 += 1;
            l2 += localq.d();
            localLinkedList.add(localq.a());
          }
        }
        if (!localLinkedList.isEmpty()) {
          localHashMap.put(locald, new com.estrongs.android.a.b.a(localLinkedList, 0, i2, l2));
        }
        l1 += l2;
        i1 += i2;
      }
    }
  }
  
  public com.estrongs.android.a.b.a e(String paramString, int paramInt)
  {
    long l1 = 0L;
    ArrayList localArrayList = new ArrayList(2);
    if (ap.ae(paramString))
    {
      paramString = c[1].e().iterator();
      paramInt = 0;
      while (paramString.hasNext())
      {
        com.estrongs.android.a.b.q localq = (com.estrongs.android.a.b.q)paramString.next();
        if (paramInt < 2) {
          localArrayList.add(((com.estrongs.android.a.b.k)localq).a());
        }
        l1 += localq.d();
        paramInt += 1;
      }
    }
    for (;;)
    {
      return new com.estrongs.android.a.b.a(localArrayList, 0, paramInt, l1);
      paramInt = 0;
    }
  }
  
  public com.estrongs.android.a.b.u e(String paramString)
  {
    long l1 = 0L;
    Object localObject1 = ((com.estrongs.android.a.a.x)c[0]).c();
    paramString = new ArrayList(((List)localObject1).size());
    localObject1 = ((List)localObject1).iterator();
    int i1 = 0;
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Set)((Iterator)localObject1).next();
      int i2 = i1 + ((Set)localObject2).size();
      ArrayList localArrayList = new ArrayList(((Set)localObject2).size());
      localObject2 = ((Set)localObject2).iterator();
      long l2 = l1;
      while (((Iterator)localObject2).hasNext())
      {
        o localo = (o)((Iterator)localObject2).next();
        if (localo.h())
        {
          l2 += localo.d();
          localArrayList.add(localo.a());
        }
      }
      i1 = i2;
      l1 = l2;
      if (!localArrayList.isEmpty())
      {
        paramString.add(localArrayList);
        i1 = i2;
        l1 = l2;
      }
    }
    Collections.sort(paramString, r);
    return new com.estrongs.android.a.b.u(paramString, 0, i1, l1);
  }
  
  public final com.estrongs.android.a.b.a f(String paramString, int paramInt)
  {
    com.estrongs.android.util.l.b("MediaFilter", "result size: " + h.size());
    if (TextUtils.isEmpty(paramString)) {
      return new com.estrongs.android.a.b.a(new ArrayList(), 0, 0, 0L);
    }
    if (!ap.aY(paramString))
    {
      localObject = paramString;
      if (!ap.X(paramString)) {}
    }
    else
    {
      localObject = "gallery://local/buckets/";
    }
    if (!((String)localObject).equals(n)) {
      return new com.estrongs.android.a.b.a(new ArrayList(), 0, 0, 0L);
    }
    paramString = new ArrayList(2);
    Object localObject = h.iterator();
    paramInt = 0;
    if (((Iterator)localObject).hasNext())
    {
      com.estrongs.android.a.b.q localq = (com.estrongs.android.a.b.q)((Iterator)localObject).next();
      if (paramInt >= 2) {
        break label189;
      }
      paramString.add(localq.a());
      paramInt += 1;
    }
    label189:
    for (;;)
    {
      break;
      return new com.estrongs.android.a.b.a(paramString, 0, f, g);
    }
  }
  
  public com.estrongs.android.a.b.u f(String paramString)
  {
    return z.a(paramString, (v)c[4]);
  }
  
  public m g(String paramString)
  {
    HashMap localHashMap = new HashMap();
    long l1;
    int i1;
    if (ap.ae(paramString))
    {
      Object localObject = c[1].e();
      paramString = new LinkedList();
      localObject = ((List)localObject).iterator();
      l1 = 0L;
      i1 = 0;
      while (((Iterator)localObject).hasNext())
      {
        com.estrongs.android.a.b.q localq = (com.estrongs.android.a.b.q)((Iterator)localObject).next();
        int i2 = i1;
        long l2 = l1;
        if (localq.h())
        {
          i1 += 1;
          l1 += localq.d();
          i2 = i1;
          l2 = l1;
          if (localq.d() == 0L)
          {
            paramString.add(localq.a());
            l2 = l1;
            i2 = i1;
          }
        }
        i1 = i2;
        l1 = l2;
      }
      localHashMap.put("emptyfile://", paramString);
    }
    for (;;)
    {
      return new m(localHashMap, 0, i1, l1);
      l1 = 0L;
      i1 = 0;
    }
  }
  
  public final com.estrongs.android.a.b.a h(String paramString)
  {
    long l1 = 0L;
    com.estrongs.android.util.l.b("MediaFilter", "result size: " + h.size());
    if (TextUtils.isEmpty(paramString)) {
      return new m(new HashMap(), 0, 0, 0L);
    }
    int i1;
    if ((ap.aY(paramString)) || (ap.X(paramString)))
    {
      paramString = j;
      i1 = 0;
    }
    for (;;)
    {
      return new com.estrongs.android.a.b.a(paramString, 0, i1, l1);
      Collections.sort(h, q);
      paramString = new ArrayList(h.size());
      Iterator localIterator = h.iterator();
      i1 = 0;
      while (localIterator.hasNext())
      {
        com.estrongs.android.a.b.q localq = (com.estrongs.android.a.b.q)localIterator.next();
        int i2 = i1;
        long l2 = l1;
        if (localq.h())
        {
          i2 = i1 + 1;
          l2 = l1 + localq.d();
          paramString.add(localq.a());
        }
        i1 = i2;
        l1 = l2;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */