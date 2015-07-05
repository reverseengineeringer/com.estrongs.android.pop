package com.handmark.pulltorefresh.library;

import com.handmark.pulltorefresh.library.a.e;
import java.util.HashSet;
import java.util.Iterator;

public class b
  implements a
{
  private final HashSet<e> a = new HashSet();
  
  public void a(e parame)
  {
    if (parame != null) {
      a.add(parame);
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((e)localIterator.next()).a(paramCharSequence);
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((e)localIterator.next()).b(paramCharSequence);
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((e)localIterator.next()).c(paramCharSequence);
    }
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */