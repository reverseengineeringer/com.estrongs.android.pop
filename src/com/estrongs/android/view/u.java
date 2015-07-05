package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.ui.navigation.r;
import com.estrongs.android.ui.view.by;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class u
{
  public static boolean a = false;
  private static u b = null;
  private static LinkedList<ac> e = new LinkedList();
  private Activity c;
  private ViewGroup d;
  private ac f = null;
  private View g;
  
  private u(Activity paramActivity)
  {
    c = paramActivity;
    g = g.a(c).inflate(2130903078, null);
    d = ((ViewGroup)g.findViewById(2131362039));
    if (e.size() > 0)
    {
      int i = 0;
      while (i < e.size())
      {
        ((ac)e.get(i)).a(this);
        i += 1;
      }
      h();
    }
  }
  
  public static u a(Activity paramActivity)
  {
    if (b == null) {
      b = new u(paramActivity);
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
  
  private void h()
  {
    c.runOnUiThread(new aa(this));
  }
  
  public Activity a()
  {
    return c;
  }
  
  public ac a(List<h> paramList, boolean paramBoolean)
  {
    if (paramList.size() < 8) {}
    for (paramList = new ac(this, paramList, paramBoolean);; paramList = new x(this, this, paramList, paramBoolean, paramList, paramBoolean))
    {
      a(paramList);
      e.add(0, paramList);
      f = paramList;
      h();
      return paramList;
    }
  }
  
  public void a(r paramr)
  {
    ((FileExplorerActivity)c).b(paramr);
  }
  
  public void a(ac paramac)
  {
    Object localObject = null;
    Iterator localIterator = e.iterator();
    if (localIterator.hasNext())
    {
      ac localac = (ac)localIterator.next();
      if (!localac.equals(paramac)) {
        break label57;
      }
      localObject = localac;
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
    a(new ab(this, paramList, paramList1));
  }
  
  public void a(boolean paramBoolean, LinearLayout paramLinearLayout)
  {
    jk localjk = new jk(c, paramBoolean);
    if (!paramBoolean) {
      localjk.b(c.getResources().getDimensionPixelSize(2131296283));
    }
    paramLinearLayout.addView(localjk.a(), new LinearLayout.LayoutParams(-1, -1));
    localjk.a(2131427377, 2130838172, new v(this));
    localjk.a(2131427354, 2130838215, new w(this));
  }
  
  public void b()
  {
    f = null;
    if (d != null) {
      d.removeAllViews();
    }
  }
  
  public void b(ac paramac)
  {
    if ((e.size() > 0) && (e.get(0) == paramac)) {}
    for (int i = 1;; i = 0)
    {
      if (f == paramac) {
        f = null;
      }
      e.remove(paramac);
      h();
      if (((i != 0) || (e.isEmpty())) && ((c instanceof FileExplorerActivity)) && ("paste_mode".equals(c).i.b())))
      {
        c).i.a("normal_mode", Boolean.valueOf(true));
        c).j = "normal_mode";
        c).r = false;
      }
      return;
    }
  }
  
  public View c()
  {
    return g;
  }
  
  public ac e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */