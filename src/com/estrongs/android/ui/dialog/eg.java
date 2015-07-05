package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class eg
  implements View.OnClickListener
{
  eg(eb parameb) {}
  
  public void onClick(View paramView)
  {
    try
    {
      if (a.h != null) {
        a.h.dismiss();
      }
      FileExplorerActivity.J().e(eb.c(a));
      return;
    }
    catch (Exception paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */