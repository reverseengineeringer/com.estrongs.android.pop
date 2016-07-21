package com.estrongs.android.ui.navigation;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.PopMultiWindowGrid;
import com.estrongs.android.view.y;
import java.util.ArrayList;
import java.util.List;

public class h
{
  private List<PopMultiWindowGrid> a;
  private boolean b;
  private FileExplorerActivity c;
  private Handler d;
  private View e;
  private View f;
  private FrameLayout g;
  private at h;
  private View i;
  private FrameLayout j;
  private View.OnClickListener k = new i(this);
  
  public h(FileExplorerActivity paramFileExplorerActivity, Handler paramHandler)
  {
    c = paramFileExplorerActivity;
    h = at.a(c);
    e = paramFileExplorerActivity.as();
    g = ((FrameLayout)e.findViewById(2131624404));
    f = k.a(paramFileExplorerActivity).inflate(2130903379, null);
    i = k.a(paramFileExplorerActivity).inflate(2130903383, null);
    j = ((FrameLayout)i.findViewById(2131625395));
    Object localObject1 = (TextView)e.findViewById(2131625399);
    Object localObject2 = (TextView)e.findViewById(2131625400);
    ((TextView)localObject1).setOnClickListener(y.a(paramFileExplorerActivity).g());
    ((TextView)localObject2).setOnClickListener(y.a(paramFileExplorerActivity).g());
    localObject1 = y.a(paramFileExplorerActivity).c();
    localObject2 = (ViewGroup)((View)localObject1).getParent();
    if (localObject2 != null) {
      ((ViewGroup)localObject2).removeView((View)localObject1);
    }
    g.addView((View)localObject1);
    d = paramHandler;
    if (getResourcesgetConfigurationorientation == 1) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = new ArrayList();
      return;
    }
  }
  
  private void e()
  {
    c.ay();
  }
  
  public View a()
  {
    return e;
  }
  
  public void b()
  {
    int n = 0;
    for (;;)
    {
      int i1;
      try
      {
        i1 = d().c();
        int i2 = d().a();
        m = 0;
        if (m < i1)
        {
          PopMultiWindowGrid localPopMultiWindowGrid = (PopMultiWindowGrid)a.get(m);
          localPopMultiWindowGrid.setVisibility(0);
          localPopMultiWindowGrid.a(i2);
          m += 1;
          continue;
        }
        if (!b) {
          break label181;
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
      i.setFocusable(true);
      i.requestFocus();
      return;
      n += 1;
      continue;
      label181:
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
    g.removeAllViews();
    c.ax().removeAllViews();
    e();
  }
  
  public com.estrongs.android.ui.d.i d()
  {
    return c.au();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */