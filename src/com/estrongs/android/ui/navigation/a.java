package com.estrongs.android.ui.navigation;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.ui.view.PopMultiWindowGrid;
import com.estrongs.android.view.u;
import com.estrongs.android.widget.RealViewSwitcher;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
{
  private List<PopMultiWindowGrid> a;
  private boolean b;
  private FileExplorerActivity c;
  private Handler d;
  private View e;
  private View f;
  private View g;
  private View h;
  private int i = -1;
  private RealViewSwitcher j;
  private TabIndicatorView k;
  
  public a(FileExplorerActivity paramFileExplorerActivity, Handler paramHandler)
  {
    c = paramFileExplorerActivity;
    e = com.estrongs.android.pop.esclasses.g.a(paramFileExplorerActivity).inflate(2130903193, null);
    j = ((RealViewSwitcher)e.findViewById(2131361911));
    f = com.estrongs.android.pop.esclasses.g.a(paramFileExplorerActivity).inflate(2130903218, null);
    k = ((TabIndicatorView)e.findViewById(2131362482));
    j.addView(f);
    View localView = u.a(paramFileExplorerActivity).c();
    ViewGroup localViewGroup = (ViewGroup)localView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(localView);
    }
    j.addView(localView);
    j.f(true);
    j.a(new b(this));
    h = e.findViewById(2131362480);
    h.setOnClickListener(new c(this));
    g = e.findViewById(2131362481);
    g.setOnClickListener(new d(this));
    d = paramHandler;
    if (getResourcesgetConfigurationorientation == 1) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = new ArrayList();
      try
      {
        d();
        return;
      }
      catch (Exception paramFileExplorerActivity)
      {
        paramFileExplorerActivity.printStackTrace();
      }
    }
  }
  
  private void a(PopMultiWindowGrid paramPopMultiWindowGrid, int paramInt)
  {
    if (paramPopMultiWindowGrid == null) {
      return;
    }
    a.add(paramPopMultiWindowGrid);
    paramPopMultiWindowGrid.a(paramInt);
    paramPopMultiWindowGrid.setVisibility(8);
  }
  
  private void b(int paramInt)
  {
    if (i != paramInt)
    {
      i = paramInt;
      if (i != 1) {
        break label26;
      }
      e();
    }
    label26:
    while (i != 0) {
      return;
    }
    e();
  }
  
  private void d()
  {
    int n = 0;
    int m = 0;
    if (b)
    {
      localObject = new LinearLayout[6];
      localObject[0] = ((LinearLayout)f.findViewById(2131362078));
      localObject[1] = ((LinearLayout)f.findViewById(2131362082));
      localObject[2] = ((LinearLayout)f.findViewById(2131362083));
      localObject[3] = ((LinearLayout)f.findViewById(2131362187));
      localObject[4] = ((LinearLayout)f.findViewById(2131362627));
      localObject[5] = ((LinearLayout)f.findViewById(2131362628));
      while (m < localObject.length)
      {
        a((PopMultiWindowGrid)localObject[m].findViewById(2131362079), m * 2 + 0);
        a((PopMultiWindowGrid)localObject[m].findViewById(2131362080), m * 2 + 1);
        m += 1;
      }
    }
    Object localObject = new LinearLayout[3];
    localObject[0] = ((LinearLayout)f.findViewById(2131362078));
    localObject[1] = ((LinearLayout)f.findViewById(2131362082));
    localObject[2] = ((LinearLayout)f.findViewById(2131362083));
    m = n;
    while (m < localObject.length)
    {
      a((PopMultiWindowGrid)localObject[m].findViewById(2131362079), m * 4 + 0);
      a((PopMultiWindowGrid)localObject[m].findViewById(2131362080), m * 4 + 1);
      a((PopMultiWindowGrid)localObject[m].findViewById(2131362081), m * 4 + 2);
      a((PopMultiWindowGrid)localObject[m].findViewById(2131362088), m * 4 + 3);
      m += 1;
    }
    localObject = new e(this);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((PopMultiWindowGrid)localIterator.next()).a((Handler)localObject);
    }
    a(ad.a(c).aX());
  }
  
  private void e()
  {
    LinearLayout localLinearLayout = (LinearLayout)e.findViewById(2131362483);
    localLinearLayout.removeAllViews();
    if (i == 0)
    {
      jk localjk = new jk(c, b);
      if (!b) {
        localjk.b(c.getResources().getDimensionPixelSize(2131296283));
      }
      localLinearLayout.addView(localjk.a(), new LinearLayout.LayoutParams(-1, -1));
      localjk.a(2131427361, 2130838212, new g(this));
      localjk.a(2131427365, 2130838161, new j(this));
      localjk.a(2131428116, 2130838160, new k(this));
      return;
    }
    u.a(c).a(b, localLinearLayout);
  }
  
  public View a()
  {
    return e;
  }
  
  public void a(int paramInt)
  {
    if (i != paramInt)
    {
      i = paramInt;
      if (i != 1) {
        break label63;
      }
      j.a(i);
      e();
    }
    for (;;)
    {
      ad.a(c).e(i);
      k.a(i, 0.0F);
      return;
      label63:
      if (i == 0)
      {
        j.a(i);
        e();
      }
    }
  }
  
  protected void a(r paramr) {}
  
  public void b()
  {
    int n = 0;
    for (;;)
    {
      int i1;
      try
      {
        i1 = com.estrongs.android.ui.d.e.c();
        int i2 = com.estrongs.android.ui.d.e.a();
        m = 0;
        if (m < i1)
        {
          PopMultiWindowGrid localPopMultiWindowGrid = (PopMultiWindowGrid)a.get(m);
          localPopMultiWindowGrid.setVisibility(0);
          localPopMultiWindowGrid.b(i2);
          m += 1;
          continue;
        }
        if (!b) {
          break label165;
        }
        m = n;
        n = i1;
        if (i1 % 2 > 0)
        {
          m = 2 - i1 % 2 + i1 - 1;
          n = i1;
        }
        if (n < a.size()) {
          if (n <= m) {
            ((PopMultiWindowGrid)a.get(n)).setVisibility(4);
          } else {
            ((PopMultiWindowGrid)a.get(n)).setVisibility(8);
          }
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        localIndexOutOfBoundsException.printStackTrace();
        return;
      }
      e.requestFocus();
      return;
      n += 1;
      continue;
      label165:
      int m = n;
      n = i1;
      if (i1 % 4 > 0)
      {
        m = 4 - i1 % 4 + i1 - 1;
        n = i1;
      }
    }
  }
  
  public void c()
  {
    j.removeAllViews();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */