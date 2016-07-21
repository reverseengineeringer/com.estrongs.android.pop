package com.estrongs.android.ui.recycler;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;

class k
  implements View.OnClickListener
{
  k(h paramh) {}
  
  public void onClick(View paramView)
  {
    h.b(a);
    if ((h.c(a) instanceof FileExplorerActivity))
    {
      paramView = ((FileExplorerActivity)h.c(a)).at();
      paramView.a("A_sdtop_close");
      paramView.c("analysis", "A_sdtop_close");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */