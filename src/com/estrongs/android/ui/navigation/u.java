package com.estrongs.android.ui.navigation;

import android.view.View;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.util.List;

class u
  implements q
{
  u(s params, com.estrongs.android.ui.adapter.a parama) {}
  
  public void a(View paramView)
  {
    try
    {
      paramView = a.b();
      if ("#home#".equals(a.b())) {
        paramView = ad.a(r.a(b.c)).j(com.estrongs.android.pop.view.a.a);
      }
      if (ap.v(paramView))
      {
        b.b.g(paramView);
        return;
      }
      if (!ap.bm(paramView)) {
        break label233;
      }
      if (paramView.startsWith("pcs://"))
      {
        b.b.f(paramView);
        return;
      }
    }
    catch (FileSystemException paramView)
    {
      paramView.printStackTrace();
      return;
    }
    List localList = d.a().a(ap.bn(paramView));
    int i;
    if (localList != null) {
      i = 0;
    }
    for (;;)
    {
      if (i < localList.size())
      {
        if (paramView.startsWith(ap.G(((h)localList.get(i)).getAbsolutePath()))) {
          paramView = ap.b(paramView, ap.C(((h)localList.get(i)).getAbsolutePath()));
        }
      }
      else
      {
        for (;;)
        {
          if (d.a(b.b).h(paramView)) {
            b.b.g(paramView);
          }
          while ("bt://".equals(paramView))
          {
            com.estrongs.android.pop.app.f.a.a().c();
            return;
            b.b.a(null, paramView);
          }
          label233:
          if (ap.ci(paramView))
          {
            b.b.f(paramView);
            return;
          }
          if (d.a(b.b).b(paramView))
          {
            if ((d.a(b.b).h(paramView)) || (ap.V(paramView)) || (ap.X(paramView)) || (ap.Z(paramView)) || (ap.ag(paramView)))
            {
              b.b.g(paramView);
              return;
            }
            b.b.a(null, paramView);
            return;
          }
          if ("#home_page#".equals(paramView))
          {
            b.b.g(paramView);
            return;
          }
          b.b.a(2131231719);
          return;
        }
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */