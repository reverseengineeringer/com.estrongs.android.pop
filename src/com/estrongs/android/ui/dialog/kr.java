package com.estrongs.android.ui.dialog;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.aa;
import java.util.Date;

class kr
  extends Handler
{
  kr(kq paramkq) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 6)
    {
      kq.a(a, 2);
      kq.b(a, 2);
      kq.a(a);
    }
    do
    {
      return;
      if (what == 7)
      {
        kq.a(a, 2);
        paramMessage = (kx)obj;
        if (paramMessage == null)
        {
          kq.a(a, 2);
          kq.b(a, 0);
          kq.a(a);
          return;
        }
        int j = com.estrongs.android.pop.view.a.a();
        try
        {
          i = Integer.parseInt(a);
          if (j < i)
          {
            kq.b(a, 1);
            kq.a(a, b);
            kq.a(a, c);
            ad.a(kq.b(a)).b(new Date().getTime());
            kq.a(a);
            return;
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            int i = 0;
            continue;
            kq.b(a, 0);
          }
        }
      }
      if (what == 8)
      {
        long l1 = ((Long)ca).d).longValue();
        long l2 = ((Long)ca).e).longValue();
        com.estrongs.android.ui.notification.a.a(FexApplication.a()).a(l1, l2);
        return;
      }
      if (what == 9)
      {
        com.estrongs.android.ui.notification.a.a(FexApplication.a()).a();
        return;
      }
    } while (what != 10);
    com.estrongs.android.ui.notification.a.a(FexApplication.a()).b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */