package com.estrongs.android.ui.navigation;

import android.view.View;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.util.List;

class v
  implements r
{
  v(t paramt, com.estrongs.android.ui.a.a parama) {}
  
  public void a(View paramView)
  {
    try
    {
      paramView = a.b();
      if ("#home#".equals(a.b())) {
        paramView = ad.a(s.a(b.c)).j("Market");
      }
      if (am.t(paramView))
      {
        b.b.e(paramView);
        return;
      }
      if (!am.bb(paramView)) {
        break label232;
      }
      if (paramView.startsWith("pcs://"))
      {
        b.b.d(paramView);
        return;
      }
    }
    catch (FileSystemException paramView)
    {
      paramView.printStackTrace();
      return;
    }
    List localList = d.a().a(am.bc(paramView));
    int i;
    if (localList != null) {
      i = 0;
    }
    for (;;)
    {
      if (i < localList.size())
      {
        if (paramView.startsWith(am.E(((h)localList.get(i)).getAbsolutePath()))) {
          paramView = am.b(paramView, am.A(((h)localList.get(i)).getAbsolutePath()));
        }
      }
      else
      {
        for (;;)
        {
          if (d.a(b.b).h(paramView)) {
            b.b.e(paramView);
          }
          while ("bt://".equals(paramView))
          {
            com.estrongs.android.pop.app.b.a.a().c();
            return;
            b.b.a(null, paramView);
          }
          label232:
          if (am.bQ(paramView))
          {
            b.b.d(paramView);
            return;
          }
          if (d.a(b.b).b(paramView))
          {
            if ((d.a(b.b).h(paramView)) || (am.S(paramView)) || (am.T(paramView)) || (am.U(paramView)) || (am.W(paramView)))
            {
              b.b.e(paramView);
              return;
            }
            b.b.a(null, paramView);
            return;
          }
          if ("#home_page#".equals(paramView))
          {
            b.b.e(paramView);
            return;
          }
          b.b.a(2131427399);
          return;
        }
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */