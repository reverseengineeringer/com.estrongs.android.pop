package com.estrongs.android.ui.navigation;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.PopMultiWindowGrid;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MultiWindowActivity
  extends HomeAsBackActivity
{
  private List<PopMultiWindowGrid> a = new ArrayList();
  private boolean b;
  private TextView c;
  private TextView d;
  private TextView e;
  private FrameLayout f;
  private View g;
  private Handler h;
  private View.OnClickListener i = new c(this);
  
  private void a(PopMultiWindowGrid paramPopMultiWindowGrid, int paramInt)
  {
    if (paramPopMultiWindowGrid == null) {
      return;
    }
    a.add(paramPopMultiWindowGrid);
    paramPopMultiWindowGrid.setPosition(paramInt);
    paramPopMultiWindowGrid.setVisibility(8);
  }
  
  private void f()
  {
    int k = 0;
    int j = 0;
    g = k.a(this).inflate(2130903379, null);
    if (b)
    {
      localObject = new LinearLayout[6];
      localObject[0] = ((LinearLayout)g.findViewById(2131624643));
      localObject[1] = ((LinearLayout)g.findViewById(2131624647));
      localObject[2] = ((LinearLayout)g.findViewById(2131624648));
      localObject[3] = ((LinearLayout)g.findViewById(2131624752));
      localObject[4] = ((LinearLayout)g.findViewById(2131625374));
      localObject[5] = ((LinearLayout)g.findViewById(2131625375));
      while (j < localObject.length)
      {
        a((PopMultiWindowGrid)localObject[j].findViewById(2131624644), j * 2 + 0);
        a((PopMultiWindowGrid)localObject[j].findViewById(2131624645), j * 2 + 1);
        j += 1;
      }
    }
    Object localObject = new LinearLayout[3];
    localObject[0] = ((LinearLayout)g.findViewById(2131624643));
    localObject[1] = ((LinearLayout)g.findViewById(2131624647));
    localObject[2] = ((LinearLayout)g.findViewById(2131624648));
    j = k;
    while (j < localObject.length)
    {
      a((PopMultiWindowGrid)localObject[j].findViewById(2131624644), j * 4 + 0);
      a((PopMultiWindowGrid)localObject[j].findViewById(2131624645), j * 4 + 1);
      a((PopMultiWindowGrid)localObject[j].findViewById(2131624646), j * 4 + 2);
      a((PopMultiWindowGrid)localObject[j].findViewById(2131624653), j * 4 + 3);
      j += 1;
    }
    localObject = a.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((PopMultiWindowGrid)((Iterator)localObject).next()).setHandler(h);
    }
    f.addView(g);
  }
  
  public void d()
  {
    int k = 0;
    for (;;)
    {
      int m;
      try
      {
        m = e().c();
        int n = e().a();
        j = 0;
        if (j < m)
        {
          PopMultiWindowGrid localPopMultiWindowGrid = (PopMultiWindowGrid)a.get(j);
          localPopMultiWindowGrid.setVisibility(0);
          localPopMultiWindowGrid.a(n);
          j += 1;
          continue;
        }
        if (!b) {
          break label173;
        }
        j = k;
        k = m;
        if (m % 2 > 0)
        {
          j = 2 - m % 2 + m - 1;
          k = m;
        }
        if (k < a.size()) {
          if (k <= j) {
            ((PopMultiWindowGrid)a.get(k)).setVisibility(4);
          } else {
            ((PopMultiWindowGrid)a.get(k)).setVisibility(8);
          }
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        localIndexOutOfBoundsException.printStackTrace();
        return;
      }
      g.requestFocus();
      return;
      k += 1;
      continue;
      label173:
      int j = k;
      k = m;
      if (m % 4 > 0)
      {
        j = 4 - m % 4 + m - 1;
        k = m;
      }
    }
  }
  
  public i e()
  {
    return FileExplorerActivity.X().au();
  }
  
  protected int g()
  {
    return 2130838584;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    boolean bool = true;
    super.onConfigurationChanged(paramConfiguration);
    if (getResourcesgetConfigurationorientation == 1) {}
    for (;;)
    {
      b = bool;
      a.clear();
      f.removeAllViews();
      Log.e("ddd", "====isPortrait======" + b);
      h.post(new g(this));
      return;
      bool = false;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903383);
    setTitle(2131231833);
    f = ((FrameLayout)findViewById(2131625395));
    if (getResourcesgetConfigurationorientation == 1) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      c = ((TextView)findViewById(2131625396));
      d = ((TextView)findViewById(2131625397));
      e = ((TextView)findViewById(2131625398));
      c.setOnClickListener(i);
      d.setOnClickListener(i);
      e.setOnClickListener(i);
      c.setFocusable(true);
      d.setFocusable(true);
      e.setFocusable(true);
      h = new a(this);
      h.postDelayed(new b(this), 200L);
      return;
    }
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  protected void onStart()
  {
    super.onStart();
    getSupportActionBar().setHomeAsUpIndicator(at.a(this).b(g(), 2131558745));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.MultiWindowActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */