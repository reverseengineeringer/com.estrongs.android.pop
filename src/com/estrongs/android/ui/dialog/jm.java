package com.estrongs.android.ui.dialog;

import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import com.estrongs.a.a;

class jm
  implements Runnable
{
  jm(ix paramix) {}
  
  public void run()
  {
    if ((ix.a(a).getTaskStatus() == 2) && (ix.l(a))) {
      a.d();
    }
    do
    {
      return;
      if ((ix.a(a).getTaskStatus() == 3) && (ix.l(a)))
      {
        if (aa).waitingDecision)
        {
          ix.k(a).postDelayed(this, 400L);
          return;
        }
        a.d();
        return;
      }
    } while (ix.o(a) == null);
    ix.o(a).onDismiss(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */