package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import com.estrongs.android.ui.view.ag;

class ac
  extends Handler
{
  ac(w paramw) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    do
    {
      return;
      w.e(a, "pcs://" + ((String[])(String[])obj)[0] + "@pcs");
      w.f(a, ((String[])(String[])obj)[1]);
      new Thread(new ad(this, w.h(a))).start();
      return;
      if (obj != null)
      {
        Handler localHandler1 = ah.a(a.e);
        Handler localHandler2 = ah.a(a.e);
        ah localah = a.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(2, 0, 5, (String)obj));
      }
      for (;;)
      {
        w.a(a, w.j(a), true);
        w.k(a).setVisibility(4);
        return;
        ah.a(a.e).sendMessage(ah.a(a.e).obtainMessage(2, 0, 64536, w.a(a).getString(2131428604)));
      }
    } while (obj == null);
    ag.a(w.a(a), (String)obj, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */