package com.estrongs.android.ui.controller;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;

class b
  implements View.OnClickListener
{
  b(a parama, String paramString, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void onClick(View paramView)
  {
    com.estrongs.android.pop.app.analysis.a.a().a(a, null);
    if ((d.a instanceof FileExplorerActivity))
    {
      paramView = d.a.at();
      if (!b) {
        break label57;
      }
      paramView.a("A_addessb_sd_click");
      paramView.c("analysis", "A_addessb_sd_click");
    }
    label57:
    while (!c) {
      return;
    }
    paramView.a("A_addessb_ima_click");
    paramView.c("analysis", "A_addessb_ima_click");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */