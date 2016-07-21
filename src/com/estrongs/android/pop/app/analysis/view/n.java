package com.estrongs.android.pop.app.analysis.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;

class n
  implements View.OnClickListener
{
  n(i parami) {}
  
  public void onClick(View paramView)
  {
    a.a(false);
    if ((i.m(a) instanceof FileExplorerActivity))
    {
      paramView = ((FileExplorerActivity)i.m(a)).at();
      if (paramView != null)
      {
        paramView.a("A_loading_hide_click");
        paramView.c("analysis", "A_loading_hide_click");
      }
    }
    if (i.f(a) != null) {
      i.f(a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */