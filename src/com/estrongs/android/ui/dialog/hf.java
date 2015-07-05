package com.estrongs.android.ui.dialog;

import android.view.View;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;

class hf
  implements Runnable
{
  hf(hd paramhd, h paramh) {}
  
  public void run()
  {
    if (a == null)
    {
      if (b.a.isShowing()) {
        b.a.dismiss();
      }
      ag.a(hc.b(b.c), 2131428302, 1);
    }
    while (!b.a.isShowing()) {
      return;
    }
    b.b.setVisibility(8);
    hc.a(b.c, new hn(hc.b(b.c), a));
    b.c.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */