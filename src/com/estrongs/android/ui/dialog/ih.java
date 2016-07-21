package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ProgressBar;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.b.ao;

class ih
  implements View.OnClickListener
{
  ih(hq paramhq) {}
  
  public void onClick(View paramView)
  {
    if ((hq.b(a) != null) && ((hq.c(a) instanceof FileExplorerActivity)) && (com.estrongs.android.pop.app.analysis.a.c()))
    {
      if (a.j != null) {
        a.j.dismiss();
      }
      ((FileExplorerActivity)hq.d(a)).B();
      com.estrongs.android.pop.app.analysis.a.a().a(hq.a(a), null);
    }
    do
    {
      do
      {
        do
        {
          return;
        } while (hq.e(a) == null);
        paramView = hq.e(a).b();
        if ((a.l == null) && (paramView != null)) {
          a.l = new com.estrongs.android.pop.app.diskusage.a(a.aF(), paramView);
        }
      } while (paramView == null);
      a.l.b(paramView);
      if (a.m) {
        a.l.getWindow().setType(2003);
      }
      a.l.show();
    } while (a.k.getVisibility() != 0);
    a.l.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */