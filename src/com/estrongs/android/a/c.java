package com.estrongs.android.a;

import com.estrongs.android.a.b.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

class c
  implements j
{
  c(b paramb) {}
  
  public void a(String arg1)
  {
    com.estrongs.android.util.l.e(b.h(), "DiskAnalyzer finish!!!");
    synchronized (b.i())
    {
      b.a(a, true);
      if (b.a(a)) {
        break label231;
      }
      HashMap localHashMap = new HashMap();
      Object localObject2 = l.k();
      localHashMap.put("appcatalog", new a((List)localObject2, ((List)localObject2).size(), ((List)localObject2).size(), 0L));
      localHashMap.put("newcreate", b.c(a).c(b.b(a), 2));
      localHashMap.put("longtime", b.c(a).d(b.b(a), 2));
      localHashMap.put("largefile", b.c(a).a(b.b(a), 2));
      localHashMap.put("redundancy", b.c(a).e(b.b(a), 2));
      localObject2 = b.d(a).iterator();
      if (((Iterator)localObject2).hasNext()) {
        ((j)((Iterator)localObject2).next()).a(b.b(a), localHashMap);
      }
    }
    com.estrongs.android.util.l.e(b.h(), "DiskAnalyzer has validate data before DBAnalyzer!");
    label231:
    Iterator localIterator = b.d(a).iterator();
    while (localIterator.hasNext()) {
      ((j)localIterator.next()).a(b.b(a));
    }
    b.c(a).a();
  }
  
  public void a(String paramString, Map<String, a> paramMap) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */