package com.estrongs.android.ui.c.a;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.d;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.view.FileExplorerActivity;

class c
  implements View.OnClickListener
{
  c(b paramb) {}
  
  public void onClick(View paramView)
  {
    ai.b(a.a).f(System.currentTimeMillis());
    b.a(a.a, b.a(a));
    paramView = a.a.at();
    if (paramView != null)
    {
      paramView.a("Homepage_A");
      paramView.c("analysis", "Homepage_A");
    }
    d.a(a.a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */