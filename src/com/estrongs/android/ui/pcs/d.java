package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.view.ak;

class d
  extends Handler
{
  d(c paramc) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (!c.a(a)) {}
    do
    {
      return;
      switch (what)
      {
      default: 
        return;
      case 1: 
        c.a(a, ((String[])(String[])obj)[0]);
        a.b();
        return;
      case 2: 
        l locall = new l(c.b(a));
        locall.a(c.c(a));
        locall.setOnCancelListener(c.d(a));
        c.a(a, null);
        locall.show();
        if (obj != null) {
          ak.a(c.b(a), (String)obj, 0);
        }
        for (;;)
        {
          a.b();
          return;
          ak.a(c.b(a), 2131231923, 0);
        }
      }
    } while (obj == null);
    ak.a(c.b(a), (String)obj, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */