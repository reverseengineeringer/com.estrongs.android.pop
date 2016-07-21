package com.estrongs.android.pop.app.analysis.b;

import android.support.v7.widget.RecyclerView;
import com.estrongs.android.a.b.m;
import com.estrongs.android.a.b.u;
import com.estrongs.android.pop.app.analysis.a;
import com.estrongs.android.pop.app.analysis.a.i;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class ad
  extends v
{
  private af r;
  
  private void a(List<h> paramList, List<g> paramList1, int paramInt)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      ae localae = new ae(this);
      a = false;
      b = localh;
      d = paramInt;
      localArrayList.add(localae);
    }
    if (e.equals("duplicate")) {
      if (localArrayList.size() > 1) {
        paramList1.addAll(localArrayList);
      }
    }
    for (;;)
    {
      a(paramList);
      return;
      paramList1.addAll(localArrayList);
    }
  }
  
  public void a(CopyOnWriteArrayList<g> paramCopyOnWriteArrayList)
  {
    e();
    paramCopyOnWriteArrayList = paramCopyOnWriteArrayList.iterator();
    while (paramCopyOnWriteArrayList.hasNext())
    {
      g localg = (g)paramCopyOnWriteArrayList.next();
      int i = w.c(localg);
      if (i != -1)
      {
        int j = i - 1;
        int k = i + 1;
        if (j >= 0) {
          w.notifyItemChanged(j);
        }
        w.notifyItemRemoved(i);
        if (k < w.getItemCount()) {
          w.notifyItemChanged(k);
        }
      }
    }
    w.d();
    v();
    if (w.getItemCount() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      h();
      return;
    }
  }
  
  protected void d()
  {
    r = new af(this, getActivity());
    a.addItemDecoration(r);
  }
  
  protected void r()
  {
    int j = 0;
    int i = 0;
    y = a.b(d, e, g);
    if (y == null)
    {
      x = new ArrayList();
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    Object localObject2;
    if ((y instanceof u))
    {
      localObject1 = ((u)y).e();
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (List)((Iterator)localObject1).next();
          if ((localObject2 != null) && (((List)localObject2).size() != 0))
          {
            a((List)localObject2, localArrayList, i);
            i += 1;
          }
        }
      }
      x = localArrayList;
      return;
    }
    if ((y instanceof m))
    {
      localObject1 = ((m)y).e();
      if (localObject1 != null)
      {
        localObject2 = ((Map)localObject1).keySet().iterator();
        i = j;
        while (((Iterator)localObject2).hasNext())
        {
          List localList = (List)((Map)localObject1).get((String)((Iterator)localObject2).next());
          if ((localList != null) && (localList.size() != 0))
          {
            a(localList, localArrayList, i);
            i += 1;
          }
        }
      }
      x = localArrayList;
      return;
    }
    super.r();
  }
  
  public boolean w()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */