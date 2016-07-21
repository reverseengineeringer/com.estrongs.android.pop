package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.b;
import java.util.List;

class ei
  implements View.OnClickListener
{
  ei(ee paramee) {}
  
  public void onClick(View paramView)
  {
    if ((ee.a(a) != null) && ((ee.b(a) instanceof FileExplorerActivity)) && (com.estrongs.android.pop.app.analysis.a.c()))
    {
      if (a.h != null) {
        a.h.dismiss();
      }
      ((FileExplorerActivity)ee.c(a)).B();
      paramView = (h)a.a.get(0);
      if ((paramView instanceof b))
      {
        paramView = paramView.getAbsolutePath();
        com.estrongs.android.pop.app.analysis.a.a().a(paramView, null);
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          paramView = paramView.getPath();
          break;
        } while (ee.d(a) == null);
        paramView = ee.d(a).b();
        if ((a.l == null) && (paramView != null)) {
          a.l = new com.estrongs.android.pop.app.diskusage.a(ee.e(a), paramView);
        }
      } while (paramView == null);
      a.l.b(paramView);
      a.l.show();
    } while (a.j.getVisibility() != 0);
    a.l.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */