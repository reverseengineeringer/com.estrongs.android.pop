package com.estrongs.android.a;

import com.estrongs.android.a.b.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

class d
  implements j
{
  d(b paramb) {}
  
  public void a(String paramString)
  {
    com.estrongs.android.util.l.e(b.h(), "LibAnalyzer finish!!");
    synchronized (b.i())
    {
      b.b(a, true);
      if (b.e(a)) {
        break label204;
      }
      HashMap localHashMap = new HashMap();
      Object localObject = l.k();
      localHashMap.put("appcatalog", new a((List)localObject, ((List)localObject).size(), ((List)localObject).size(), 0L));
      localHashMap.put("newcreate", b.f(a).d(paramString));
      localHashMap.put("longtime", b.f(a).e(paramString));
      localHashMap.put("largefile", b.f(a).c(paramString));
      localHashMap.put("redundancy", b.f(a).f(paramString));
      localObject = b.d(a).iterator();
      if (((Iterator)localObject).hasNext()) {
        ((j)((Iterator)localObject).next()).a(paramString, localHashMap);
      }
    }
    com.estrongs.android.util.l.e(b.h(), "DBAnalyzer has validate data before DiskAnalyzer!");
    label204:
    b.f(a).a();
  }
  
  public void a(String paramString, Map<String, a> paramMap) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */