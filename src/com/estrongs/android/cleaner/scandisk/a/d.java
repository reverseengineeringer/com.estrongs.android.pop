package com.estrongs.android.cleaner.scandisk.a;

import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.f;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class d
  implements f
{
  private CopyOnWriteArrayList<e> a = new CopyOnWriteArrayList();
  
  public int a()
  {
    return 0;
  }
  
  public void a(e parame)
  {
    if (parame == null) {
      return;
    }
    a.add(parame);
  }
  
  public void a(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((e)localIterator.next()).a(b);
    }
  }
  
  public void b() {}
  
  public void b(e parame)
  {
    l.e("GenericFilter", "remove callback:" + parame);
    a.remove(parame);
  }
  
  public List<String> c()
  {
    return null;
  }
  
  public void c(e parame) {}
  
  public com.estrongs.android.cleaner.h d()
  {
    return null;
  }
  
  public void e() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */