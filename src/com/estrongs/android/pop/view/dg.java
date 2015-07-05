package com.estrongs.android.pop.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.ks;

class dg
  implements View.OnClickListener
{
  dg(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = a.y();
    if (paramView != null)
    {
      paramView = ks.a(a, paramView);
      if (paramView != null) {
        paramView.show();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */