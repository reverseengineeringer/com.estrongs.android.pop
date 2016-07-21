package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ae;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@me
public class gj
  implements Iterable<gh>
{
  private final List<gh> a = new LinkedList();
  
  private gh c(qa paramqa)
  {
    Iterator localIterator = ae.r().iterator();
    while (localIterator.hasNext())
    {
      gh localgh = (gh)localIterator.next();
      if (a == paramqa) {
        return localgh;
      }
    }
    return null;
  }
  
  public void a(gh paramgh)
  {
    a.add(paramgh);
  }
  
  public boolean a(qa paramqa)
  {
    paramqa = c(paramqa);
    if (paramqa != null)
    {
      b.a();
      return true;
    }
    return false;
  }
  
  public void b(gh paramgh)
  {
    a.remove(paramgh);
  }
  
  public boolean b(qa paramqa)
  {
    return c(paramqa) != null;
  }
  
  public Iterator<gh> iterator()
  {
    return a.iterator();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */