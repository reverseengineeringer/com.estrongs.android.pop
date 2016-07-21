package com.dianxinos.library.notify.h;

import android.text.TextUtils;
import com.dianxinos.library.notify.data.b;
import com.dianxinos.library.notify.data.j;
import com.dianxinos.library.notify.parser.d;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class c
{
  private static c a;
  private Map<String, j> b = new LinkedHashMap();
  private Map<String, b> c = new LinkedHashMap();
  private Set<String> d = new HashSet();
  private j e = new j();
  private b f = new b();
  
  public static c a()
  {
    try
    {
      if (a == null) {
        a = new c();
      }
      c localc = a;
      return localc;
    }
    finally {}
  }
  
  private j e(String paramString)
  {
    try
    {
      paramString = d.b(e.a(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  private b f(String paramString)
  {
    try
    {
      paramString = d.g(e.a(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public b a(b paramb)
  {
    b localb = null;
    ??? = c;
    synchronized (c)
    {
      if (c.containsKey(b)) {
        localb = (b)c.remove(b);
      }
      c.put(b, paramb);
      return localb;
    }
  }
  
  public j a(j paramj)
  {
    j localj = null;
    ??? = b;
    synchronized (b)
    {
      if (b.containsKey(a)) {
        localj = (j)b.remove(a);
      }
      b.put(a, paramj);
      return localj;
    }
  }
  
  public j a(String paramString)
  {
    ??? = b;
    Object localObject2;
    synchronized (b)
    {
      localObject2 = (j)b.get(paramString);
      if (localObject2 == e) {
        return null;
      }
      if (localObject2 != null) {
        return (j)localObject2;
      }
    }
    ??? = e(paramString);
    if (??? == null) {
      ??? = e;
    }
    for (;;)
    {
      for (localObject2 = b;; localObject2 = null) {
        synchronized (b)
        {
          j localj = (j)b.get(paramString);
          localObject2 = localj;
          if (localj == null)
          {
            b.put(paramString, ???);
            localObject2 = ???;
          }
          if ((localObject2 != null) && (localObject2 != e)) {
            return (j)localObject2;
          }
        }
      }
    }
  }
  
  public String b(String paramString)
  {
    ??? = c;
    Object localObject2;
    synchronized (c)
    {
      localObject2 = (b)c.get(paramString);
      if (localObject2 == f) {
        return null;
      }
      if (localObject2 != null)
      {
        paramString = d;
        return paramString;
      }
    }
    ??? = f(paramString);
    if (??? == null) {
      ??? = f;
    }
    for (;;)
    {
      localObject2 = c;
      for (;;)
      {
        synchronized (c)
        {
          localObject2 = (b)c.get(paramString);
          if (localObject2 != null) {
            break label150;
          }
          c.put(paramString, ???);
          if ((??? != null) && (??? != f))
          {
            paramString = d;
            return paramString;
          }
        }
        paramString = null;
        continue;
        label150:
        ??? = localObject2;
      }
    }
  }
  
  public List<j> b()
  {
    LinkedList localLinkedList = new LinkedList();
    ??? = b;
    synchronized (b)
    {
      Iterator localIterator = b.entrySet().iterator();
      j localj;
      do
      {
        if (!localIterator.hasNext()) {
          return localLinkedList;
        }
        localj = (j)((Map.Entry)localIterator.next()).getValue();
      } while ((!"open".equals(b)) && (!"rcmapk".equals(b)) && (!"uninstall".equals(b)));
      localLinkedList.add(localj);
    }
  }
  
  public boolean b(j paramj)
  {
    if (paramj == null) {
      return false;
    }
    ??? = d;
    synchronized (d)
    {
      boolean bool = d.add(a);
      return bool;
    }
  }
  
  public j c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    ??? = b;
    for (;;)
    {
      synchronized (b)
      {
        j localj = (j)b.get(paramString);
        if ((localj != null) && (localj != e))
        {
          paramString = (j)b.remove(paramString);
          return paramString;
        }
      }
      paramString = null;
    }
  }
  
  public List<j> c()
  {
    LinkedList localLinkedList = new LinkedList();
    ??? = b;
    synchronized (b)
    {
      Iterator localIterator = b.entrySet().iterator();
      j localj;
      do
      {
        if (!localIterator.hasNext()) {
          return localLinkedList;
        }
        localj = (j)((Map.Entry)localIterator.next()).getValue();
      } while ((!"pandoraapk".equals(b)) && (!"pandorajar".equals(b)));
      localLinkedList.add(localj);
    }
  }
  
  public List<j> d()
  {
    LinkedList localLinkedList = new LinkedList();
    ??? = b;
    synchronized (b)
    {
      Iterator localIterator = b.entrySet().iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)((Map.Entry)localIterator.next()).getValue();
        if ("splash".equals(b)) {
          localLinkedList.add(localj);
        }
      }
    }
    return localList;
  }
  
  public boolean d(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    ??? = d;
    synchronized (d)
    {
      boolean bool = d.remove(paramString);
      return bool;
    }
  }
  
  public void e()
  {
    ??? = b;
    synchronized (b)
    {
      b.clear();
      ??? = c;
      synchronized (c)
      {
        c.clear();
        ??? = d;
      }
    }
    synchronized (d)
    {
      d.clear();
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
      localObject3 = finally;
      throw ((Throwable)localObject3);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.h.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */