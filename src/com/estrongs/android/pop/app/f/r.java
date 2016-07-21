package com.estrongs.android.pop.app.f;

import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class r
  implements i
{
  private List<i> a = null;
  
  public r(Map<String, String> paramMap, boolean paramBoolean)
  {
    this(paramMap, paramBoolean, false);
  }
  
  public r(Map<String, String> paramMap, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = q.a(paramMap, paramBoolean1);
    if (paramBoolean2) {
      q.a(a);
    }
  }
  
  public r(boolean paramBoolean)
  {
    a = new ArrayList();
    if (paramBoolean) {
      q.a(a);
    }
  }
  
  public v a()
  {
    int i = 0;
    while (i < a.size())
    {
      if ((a.get(i) instanceof v)) {
        return (v)a.get(i);
      }
      i += 1;
    }
    return null;
  }
  
  public void a(i parami)
  {
    a.add(parami);
  }
  
  public boolean a(h paramh)
  {
    if (a != null)
    {
      Iterator localIterator = a.iterator();
      boolean bool = true;
      if (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        if (locali != null) {
          if ((bool) && (locali.a(paramh))) {
            bool = true;
          }
        }
        for (;;)
        {
          if (!bool)
          {
            return bool;
            bool = false;
          }
          else
          {
            break;
          }
        }
      }
      return bool;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */