package com.estrongs.android.ui.dialog;

import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import com.estrongs.a.a;

class jy
  implements Runnable
{
  jy(jh paramjh) {}
  
  public void run()
  {
    if (jh.p(a)) {
      a.d();
    }
    do
    {
      return;
      if ((jh.a(a).getTaskStatus() == 2) && (jh.l(a)))
      {
        a.d();
        return;
      }
      if ((jh.a(a).getTaskStatus() == 3) && (jh.l(a)))
      {
        if (aa).waitingDecision)
        {
          jh.k(a).postDelayed(this, 400L);
          return;
        }
        a.d();
        return;
      }
      if (jh.a(a).getTaskStatus() == 1)
      {
        jh.k(a).postDelayed(this, 400L);
        return;
      }
    } while (jh.o(a) == null);
    jh.o(a).onDismiss(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */