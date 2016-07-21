package com.estrongs.android.pop.app.analysis.b;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ac
  extends v
{
  private com.estrongs.fs.impl.c.a r;
  
  private List<h> a(h paramh)
  {
    ArrayList localArrayList = new ArrayList();
    if (r == null) {
      r = new com.estrongs.fs.impl.c.a();
    }
    try
    {
      if (paramh.getFileType() == w.a)
      {
        paramh = r.a(paramh, i.c, TypedMap.EMPTY);
        if (paramh != null)
        {
          paramh = paramh.iterator();
          while (paramh.hasNext()) {
            localArrayList.addAll(a((h)paramh.next()));
          }
        }
        return localArrayList;
      }
    }
    catch (Exception paramh)
    {
      l.c(paramh.toString());
    }
    localArrayList.add(paramh);
    return localArrayList;
  }
  
  protected void r()
  {
    y = com.estrongs.android.pop.app.analysis.a.b(d, e, g);
    if (y == null)
    {
      x = new ArrayList();
      return;
    }
    Object localObject = com.estrongs.android.pop.app.analysis.a.a(e, y, g);
    ArrayList localArrayList = new ArrayList();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Iterator localIterator = a((h)((Iterator)localObject).next()).iterator();
        while (localIterator.hasNext())
        {
          h localh = (h)localIterator.next();
          g localg = new g(this);
          a = false;
          b = localh;
          localArrayList.add(localg);
        }
      }
    }
    for (;;)
    {
      x = localArrayList;
      return;
      localArrayList = new ArrayList();
    }
  }
  
  public boolean w()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */