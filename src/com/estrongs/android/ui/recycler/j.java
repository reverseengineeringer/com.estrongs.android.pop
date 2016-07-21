package com.estrongs.android.ui.recycler;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.analysis.a;
import com.estrongs.android.pop.app.analysis.y;
import com.estrongs.android.pop.app.analysis.z;
import com.estrongs.android.pop.view.FileExplorerActivity;

class j
  implements View.OnClickListener
{
  j(h paramh) {}
  
  public void onClick(View paramView)
  {
    a.a().a(h.a(a).a(), h.a(a));
    z.b();
    h.b(a);
    if ((h.c(a) instanceof FileExplorerActivity))
    {
      paramView = ((FileExplorerActivity)h.c(a)).at();
      paramView.a("A_sdtop_click");
      paramView.c("analysis", "A_sdtop_click");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */