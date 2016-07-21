package com.estrongs.android.pop.app.analysis.view;

import android.app.Activity;
import android.widget.PopupWindow;

class c
  implements Runnable
{
  c(b paramb) {}
  
  public void run()
  {
    try
    {
      if ((b.a(a).isShowing()) && (!((Activity)b.b(a)).isFinishing())) {
        b.a(a).dismiss();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */