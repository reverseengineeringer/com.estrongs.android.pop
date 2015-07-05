package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.view.ag;

class b
  extends Handler
{
  b(a parama) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (!a.a(a)) {}
    do
    {
      return;
      switch (what)
      {
      default: 
        return;
      case 1: 
        a.a(a, ((String[])(String[])obj)[0]);
        a.b();
        return;
      case 2: 
        j localj = new j(a.b(a));
        localj.a(a.c(a));
        localj.setOnCancelListener(a.d(a));
        a.a(a, null);
        localj.show();
        if (obj != null) {
          ag.a(a.b(a), (String)obj, 0);
        }
        for (;;)
        {
          a.b();
          return;
          ag.a(a.b(a), 2131428604, 0);
        }
      }
    } while (obj == null);
    ag.a(a.b(a), (String)obj, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */