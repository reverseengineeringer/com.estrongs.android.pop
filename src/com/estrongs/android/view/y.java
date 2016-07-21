package com.estrongs.android.view;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.navigation.q;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class y
{
  public static boolean a = false;
  private static y b = null;
  private static LinkedList<af> e = new LinkedList();
  private Activity c;
  private ViewGroup d;
  private af f = null;
  private View g;
  private View h;
  private View.OnClickListener i = new ae(this);
  
  private y(Activity paramActivity)
  {
    c = paramActivity;
    g = k.a(c).inflate(2130903153, null);
    d = ((ViewGroup)g.findViewById(2131624583));
    h = g.findViewById(2131624584);
    if (e.size() > 0)
    {
      while (j < e.size())
      {
        ((af)e.get(j)).a(this);
        j += 1;
      }
      i();
      return;
    }
    h.setVisibility(0);
  }
  
  public static y a(Activity paramActivity)
  {
    if (b == null) {
      b = new y(paramActivity);
    }
    return b;
  }
  
  public static void d()
  {
    if (b != null) {
      b.b();
    }
    b = null;
  }
  
  public static void f()
  {
    e.clear();
  }
  
  private void i()
  {
    c.runOnUiThread(new ac(this));
  }
  
  public Activity a()
  {
    return c;
  }
  
  public af a(List<h> paramList, boolean paramBoolean)
  {
    if (paramList.size() < 8) {}
    for (paramList = new af(this, paramList, paramBoolean);; paramList = new z(this, this, paramList, paramBoolean, paramList, paramBoolean))
    {
      a(paramList);
      e.add(0, paramList);
      f = paramList;
      i();
      return paramList;
    }
  }
  
  public void a(q paramq)
  {
    ((FileExplorerActivity)c).b(paramq);
  }
  
  public void a(af paramaf)
  {
    Object localObject = null;
    Iterator localIterator = e.iterator();
    if (localIterator.hasNext())
    {
      af localaf = (af)localIterator.next();
      if (!localaf.equals(paramaf)) {
        break label57;
      }
      localObject = localaf;
    }
    label57:
    for (;;)
    {
      break;
      if (localObject != null) {
        e.remove(localObject);
      }
      return;
    }
  }
  
  public void a(List<h> paramList, Boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    localArrayList1.add(paramList);
    localArrayList2.add(paramBoolean);
    a(localArrayList1, localArrayList2);
  }
  
  public void a(List<List<h>> paramList, List<Boolean> paramList1)
  {
    a(new ad(this, paramList, paramList1));
  }
  
  public void b()
  {
    f = null;
    if (d != null) {
      d.removeAllViews();
    }
    h.setVisibility(0);
  }
  
  public void b(af paramaf)
  {
    int k = 0;
    int j = k;
    if (e.size() > 0)
    {
      j = k;
      if (e.get(0) == paramaf) {
        j = 1;
      }
    }
    if (f == paramaf) {
      f = null;
    }
    e.remove(paramaf);
    i();
    if (((j != 0) || (e.isEmpty())) && ((c instanceof FileExplorerActivity)))
    {
      paramaf = (FileExplorerActivity)c;
      if (paramaf.j()) {
        paramaf.i();
      }
    }
  }
  
  public View c()
  {
    return g;
  }
  
  public af e()
  {
    return f;
  }
  
  public View.OnClickListener g()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */