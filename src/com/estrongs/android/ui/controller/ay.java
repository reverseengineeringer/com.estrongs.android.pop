package com.estrongs.android.ui.controller;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.c.e;
import com.estrongs.android.ui.f.l;
import com.estrongs.android.view.cr;

class ay
  implements View.OnClickListener
{
  ay(aj paramaj, cr paramcr, boolean paramBoolean) {}
  
  public void onClick(View paramView)
  {
    int i = 0;
    c.l.b(a.aq());
    boolean bool = c.a.O() instanceof e;
    if (bool)
    {
      c.l.a(8);
      if (b) {
        break label117;
      }
      c.l.b(8);
      label68:
      paramView = c.l;
      if ((bool) || (!b)) {
        break label131;
      }
    }
    for (;;)
    {
      paramView.c(i);
      c.l.b();
      return;
      c.l.a(0);
      break;
      label117:
      c.l.b(0);
      break label68;
      label131:
      i = 8;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */