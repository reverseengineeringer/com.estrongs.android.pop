package com.estrongs.android.scanner.c;

import android.content.ContentValues;
import com.estrongs.android.scanner.a.a;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.d.z;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class e
  implements g
{
  private final String a = getClass().getSimpleName();
  private final z b;
  private final int c;
  private final AtomicBoolean d;
  private ThreadLocal<Map<String, d>> e;
  
  public e(int paramInt, String paramString)
  {
    b = new z(paramString);
    d = new AtomicBoolean(false);
    c = paramInt;
  }
  
  private int a(d paramd)
  {
    Object localObject = (Map)e.get();
    if (localObject != null)
    {
      localObject = (d)((Map)localObject).remove(paramd.e());
      if (localObject != null)
      {
        if (((d)localObject).f() == paramd.f()) {
          return 0;
        }
        paramd.a(((d)localObject).c());
        return 2;
      }
      return 1;
    }
    return 1;
  }
  
  private void a()
  {
    Map localMap = (Map)e.get();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)((Map.Entry)localIterator.next()).getValue();
        locald.c(3);
        b.a(locald.c());
        l.e(a, "remove dirty file:" + locald.e());
      }
      localMap.clear();
    }
  }
  
  private void b(com.estrongs.android.scanner.a.f paramf)
  {
    if (paramf.c() == 2)
    {
      Object localObject = b.b(paramf.a());
      paramf = (Map)e.get();
      paramf.clear();
      if ((localObject != null) && (!((List)localObject).isEmpty()))
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          c localc = (c)((Iterator)localObject).next();
          paramf.put(localc.e(), (d)localc);
        }
      }
    }
  }
  
  protected d a(com.estrongs.android.scanner.a.f paramf, d paramd)
  {
    return paramd;
  }
  
  public void a(a parama)
  {
    Object localObject = parama.a();
    if ((localObject == null) || (((List)localObject).isEmpty())) {}
    do
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder("pid IN (");
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localStringBuilder.append(((Long)((Iterator)localObject).next()).longValue()).append(',');
      }
      localStringBuilder.delete(localStringBuilder.length() - 1, localStringBuilder.length());
      localStringBuilder.append(')');
      localObject = new ContentValues();
      i = parama.c();
      if (i == 15)
      {
        ((ContentValues)localObject).put("groupname", parama.b());
        ((ContentValues)localObject).put("isLogPath", Integer.valueOf(1));
      }
      for (;;)
      {
        b.a(localStringBuilder.toString(), (ContentValues)localObject);
        return;
        if (i == 16)
        {
          ((ContentValues)localObject).put("groupname", (String)null);
          ((ContentValues)localObject).put("isLogPath", Integer.valueOf(0));
        }
        else if (i == 11)
        {
          ((ContentValues)localObject).put("pathtype", Integer.valueOf(3));
        }
        else if (i == 12)
        {
          ((ContentValues)localObject).put("pathtype", Integer.valueOf(0));
        }
        else
        {
          if (i != 13) {
            break;
          }
          ((ContentValues)localObject).put("groupname", "Download");
          ((ContentValues)localObject).put("isLogPath", Integer.valueOf(1));
        }
      }
    } while (i != 14);
    String str = parama.g();
    boolean bool = parama.f();
    if (str != null) {
      ((ContentValues)localObject).put("groupname", str);
    }
    if (bool) {}
    for (int i = 1;; i = 0)
    {
      ((ContentValues)localObject).put("isLogPath", Integer.valueOf(i));
      break;
    }
  }
  
  public final void a(com.estrongs.android.scanner.a.f paramf)
  {
    if (paramf.e())
    {
      l.e(a, "Receive the finish msg!");
      if (d.compareAndSet(true, false)) {
        b.a(null);
      }
      return;
    }
    b(paramf);
    Iterator localIterator = paramf.b().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (b(paramf, locald))
      {
        d.set(true);
        locald = a(paramf, locald);
        int i = a(locald);
        locald.c(i);
        if (i == 1) {
          b.a(locald);
        } else if (i == 2) {
          b.b(locald);
        }
      }
    }
    a();
  }
  
  public final void a(com.estrongs.android.scanner.a.g paramg)
  {
    if (paramg.e())
    {
      if (d.compareAndSet(true, false)) {
        b.a(paramg.b());
      }
      return;
    }
    b(paramg);
  }
  
  public void a(boolean paramBoolean)
  {
    e = new f(this);
    if (paramBoolean) {
      b.d();
    }
  }
  
  protected void b(com.estrongs.android.scanner.a.g paramg)
  {
    String str = paramg.d();
    if (!c(paramg)) {}
    d locald;
    do
    {
      return;
      d.set(true);
      locald = (d)paramg.a();
      if (paramg.c() == 3)
      {
        l.b(a, "sync trash file:" + str);
        b.c(locald);
        return;
      }
    } while (paramg.c() == 0);
    File localFile = new File(str);
    locald.d(localFile.length());
    locald.b(localFile.lastModified());
    if (paramg.c() == 1)
    {
      l.b(a, "sync new file:" + str);
      b.a(locald);
      return;
    }
    l.b(a, "sync old file:" + str);
    b.b(locald);
  }
  
  protected boolean b(com.estrongs.android.scanner.a.f paramf, d paramd)
  {
    return paramd.k() == c;
  }
  
  protected boolean c(com.estrongs.android.scanner.a.g paramg)
  {
    paramg = paramg.a();
    if ((paramg instanceof d)) {
      return ((d)paramg).k() == c;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */