package com.estrongs.android.ui.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ProgressBar;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.fs.b.am;

class ie
  implements View.OnClickListener
{
  ie(hn paramhn) {}
  
  public void onClick(View paramView)
  {
    if (hn.b(a) != null)
    {
      paramView = hn.b(a).b();
      if ((a.l == null) && (paramView != null)) {
        a.l = new a(a.ar(), paramView);
      }
      if (paramView != null)
      {
        a.l.b(paramView);
        if (a.m) {
          a.l.getWindow().setType(2003);
        }
        a.l.show();
        if (a.k.getVisibility() == 0) {
          a.l.a();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */