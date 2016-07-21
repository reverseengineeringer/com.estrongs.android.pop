package com.estrongs.android.a.a;

import com.estrongs.android.a.a;
import com.estrongs.android.a.b.o;
import com.estrongs.android.a.b.p;
import com.estrongs.android.a.b.q;
import com.estrongs.android.a.b.w;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

public class i
  extends k
{
  private final ConcurrentHashMap<String, com.estrongs.android.a.b.i> a;
  private final ConcurrentLinkedQueue<com.estrongs.android.a.b.i> b;
  private List<String> c;
  private ArrayList<q> d;
  
  public i(ConcurrentHashMap<String, com.estrongs.android.a.b.i> paramConcurrentHashMap)
  {
    a = paramConcurrentHashMap;
    b = new ConcurrentLinkedQueue();
  }
  
  private void a(com.estrongs.android.a.b.i parami)
  {
    if (parami == null) {}
    File[] arrayOfFile;
    do
    {
      return;
      arrayOfFile = new File(parami.e_()).listFiles();
    } while ((arrayOfFile == null) || (arrayOfFile.length == 0));
    q[] arrayOfq = new q[arrayOfFile.length];
    int k = arrayOfFile.length;
    int j = 0;
    int i = 0;
    if (j < k)
    {
      File localFile = arrayOfFile[j];
      if (localFile.isDirectory())
      {
        arrayOfq[i] = ((q)a.get(localFile.getPath()));
        i += 1;
      }
      for (;;)
      {
        j += 1;
        break;
        arrayOfq[i] = new com.estrongs.android.a.b.k(localFile.getPath(), localFile.length(), localFile.lastModified());
        i += 1;
      }
    }
    parami.a(arrayOfq);
  }
  
  private List<String> b(String paramString)
  {
    Object localObject = c.iterator();
    String str;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      str = (String)((Iterator)localObject).next();
    } while (!paramString.startsWith(str));
    for (;;)
    {
      localObject = new ArrayList();
      if (str.length() == paramString.length()) {
        return (List<String>)localObject;
      }
      ((List)localObject).add(str);
      int i = str.length() + 1;
      while (i < paramString.length())
      {
        if (paramString.charAt(i) == File.separatorChar) {
          ((List)localObject).add(paramString.substring(0, i));
        }
        i += 1;
      }
      return (List<String>)localObject;
      str = null;
    }
  }
  
  public final com.estrongs.android.a.b.i a(String paramString)
  {
    return (com.estrongs.android.a.b.i)a.get(paramString);
  }
  
  public final void a(a parama)
  {
    com.estrongs.android.a.b.k[] arrayOfk = parama.c();
    com.estrongs.android.a.b.l[] arrayOfl = parama.b();
    Object localObject4 = parama.a();
    long l = 0L;
    int k = arrayOfk.length;
    int j = 0;
    int i = 0;
    Object localObject1;
    if (j < k)
    {
      localObject1 = arrayOfk[j];
      if ((!(localObject1 instanceof p)) && (!(localObject1 instanceof o)) && (!(localObject1 instanceof w))) {
        break label362;
      }
      i += 1;
      l = ((com.estrongs.android.a.b.k)localObject1).d() + l;
    }
    label193:
    label362:
    for (;;)
    {
      j += 1;
      break;
      Object localObject2 = new com.estrongs.android.a.b.i(a, (String)localObject4, arrayOfl.length, arrayOfk.length, parama.d());
      if (i != 0) {
        ((com.estrongs.android.a.b.i)localObject2).a(i, l);
      }
      localObject1 = (com.estrongs.android.a.b.i)a.get(localObject4);
      if (localObject1 == null) {
        localObject1 = (com.estrongs.android.a.b.i)a.putIfAbsent(localObject4, localObject2);
      }
      for (;;)
      {
        Object localObject3;
        if (localObject1 != null)
        {
          localObject3 = localObject1;
          if (!parama.e()) {
            break label193;
          }
          b.add(localObject3);
        }
        for (;;)
        {
          return;
          localObject3 = localObject2;
          break;
          if (localObject3 == localObject1) {
            ((com.estrongs.android.a.b.i)localObject1).a((com.estrongs.android.a.b.i)localObject2);
          }
          localObject1 = b((String)localObject4);
          if (!((List)localObject1).isEmpty())
          {
            Iterator localIterator = ((List)localObject1).iterator();
            while (localIterator.hasNext())
            {
              String str = (String)localIterator.next();
              localObject4 = (com.estrongs.android.a.b.i)a.get(str);
              localObject3 = localObject4;
              localObject1 = localObject2;
              if (localObject4 == null)
              {
                localObject1 = new com.estrongs.android.a.b.i(a, str, arrayOfl.length, arrayOfk.length, parama.d());
                if (i != 0) {
                  ((com.estrongs.android.a.b.i)localObject1).a(i, l);
                }
                localObject3 = (com.estrongs.android.a.b.i)a.putIfAbsent(str, localObject1);
              }
              localObject2 = localObject1;
              if (localObject3 != null)
              {
                ((com.estrongs.android.a.b.i)localObject3).a((com.estrongs.android.a.b.i)localObject1);
                localObject2 = localObject1;
              }
            }
          }
        }
      }
    }
  }
  
  public void a(List<String> paramList)
  {
    super.a(paramList);
    c = paramList;
  }
  
  protected boolean a(q paramq)
  {
    return false;
  }
  
  public void b()
  {
    com.estrongs.android.util.l.c(getClass().getSimpleName(), "finish!");
    d = new ArrayList(b);
    b.clear();
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a((com.estrongs.android.a.b.i)a.get(str));
    }
  }
  
  public boolean b(List<q> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (q)paramList.next();
      if ((localObject instanceof com.estrongs.android.a.b.l))
      {
        localObject = (com.estrongs.android.a.b.l)localObject;
        if (((com.estrongs.android.a.b.l)localObject).d() == 0L)
        {
          d.remove(localObject);
        }
        else
        {
          com.estrongs.android.a.b.i locali = (com.estrongs.android.a.b.i)a.get(((com.estrongs.android.a.b.l)localObject).e_());
          localObject = new Stack();
          ((Stack)localObject).push(locali);
          while (!((Stack)localObject).isEmpty())
          {
            locali = (com.estrongs.android.a.b.i)((Stack)localObject).pop();
            Iterator localIterator = locali.g().iterator();
            while (localIterator.hasNext())
            {
              q localq = (q)localIterator.next();
              if ((localq instanceof com.estrongs.android.a.b.i)) {
                if (localq.d() == 0L) {
                  d.remove(localq);
                } else {
                  ((Stack)localObject).push((com.estrongs.android.a.b.i)localq);
                }
              }
            }
            locali.d_();
            a.remove(locali.e_());
          }
        }
      }
    }
    return true;
  }
  
  public List<q> c()
  {
    return d;
  }
  
  public void c_() {}
  
  public final Map<String, q> d()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      q localq = (q)a.get(str);
      if (localq != null) {
        localHashMap.put(str, localq);
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */