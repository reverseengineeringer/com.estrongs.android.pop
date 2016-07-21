package com.estrongs.android.pop.app.analysis.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;

class f
  implements View.OnClickListener
{
  f(b paramb) {}
  
  public void onClick(View paramView)
  {
    if (b.e(a)) {
      b.f(a);
    }
    for (;;)
    {
      if ((b.b(a) instanceof FileExplorerActivity))
      {
        paramView = ((FileExplorerActivity)b.b(a)).at();
        if (paramView != null)
        {
          paramView.a("A_widget_click");
          paramView.c("analysis", "A_widget_click");
        }
      }
      return;
      b.g(a).b();
      a.a(b.h(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */