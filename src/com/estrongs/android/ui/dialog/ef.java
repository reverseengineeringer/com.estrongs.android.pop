package com.estrongs.android.ui.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.fs.b.am;

class ef
  implements View.OnClickListener
{
  ef(eb parameb) {}
  
  public void onClick(View paramView)
  {
    if (eb.a(a) != null)
    {
      paramView = eb.a(a).b();
      if ((a.l == null) && (paramView != null)) {
        a.l = new a(eb.b(a), paramView);
      }
      if (paramView != null)
      {
        a.l.b(paramView);
        a.l.show();
        if (a.j.getVisibility() == 0) {
          a.l.a();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */