package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;

class ii
  implements View.OnClickListener
{
  ii(hq paramhq) {}
  
  public void onClick(View paramView)
  {
    try
    {
      if (a.j != null) {
        a.j.dismiss();
      }
      paramView = FileExplorerActivity.X();
      if (paramView != null)
      {
        paramView.B();
        paramView.g(ap.bB(hq.a(a)));
      }
      return;
    }
    catch (Exception paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */