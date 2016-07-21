package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;

class af
  extends Handler
{
  af(z paramz) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    do
    {
      return;
      z.e(a, "pcs://" + ((String[])(String[])obj)[0] + "@pcs");
      z.f(a, ((String[])(String[])obj)[1]);
      new Thread(new ag(this, z.h(a))).start();
      return;
      if (obj != null)
      {
        Handler localHandler1 = ak.a(a.e);
        Handler localHandler2 = ak.a(a.e);
        ak localak = a.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(2, 0, 5, (String)obj));
      }
      for (;;)
      {
        z.a(a, z.j(a), true);
        z.k(a).setVisibility(4);
        return;
        ak.a(a.e).sendMessage(ak.a(a.e).obtainMessage(2, 0, 64536, z.a(a).getString(2131231923)));
      }
    } while (obj == null);
    com.estrongs.android.ui.view.ak.a(z.a(a), (String)obj, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */