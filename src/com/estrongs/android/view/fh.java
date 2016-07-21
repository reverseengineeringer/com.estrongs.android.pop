package com.estrongs.android.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.f.f;
import com.estrongs.android.pop.view.FileExplorerActivity;

class fh
  implements View.OnClickListener
{
  fh(eu parameu) {}
  
  public void onClick(View paramView)
  {
    if ((a.ag != null) && ((a.ag instanceof FileExplorerActivity)))
    {
      paramView = (FileExplorerActivity)a.ag;
      paramView.a(f.a(paramView.P()));
    }
    try
    {
      c.a(a.ah).a("network", "lp_scan");
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */