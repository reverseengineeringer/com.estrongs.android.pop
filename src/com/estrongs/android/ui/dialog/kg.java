package com.estrongs.android.ui.dialog;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.util.y;
import com.estrongs.fs.util.j;
import java.util.Date;

class kg
  extends Handler
{
  kg(kf paramkf) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 6)
    {
      kf.a(a, 2);
      kf.b(a, 2);
      kf.a(a);
    }
    do
    {
      return;
      int i;
      if (what == 7)
      {
        kf.a(a, 2);
        paramMessage = (km)obj;
        if (paramMessage == null)
        {
          kf.a(a, 2);
          kf.b(a, 0);
          kf.a(a);
          return;
        }
        int j = a.a();
        try
        {
          i = Integer.parseInt(a);
          if (j < i)
          {
            kf.b(a, 1);
            kf.a(a, b);
            kf.a(a, c);
            ad.a(kf.b(a)).b(new Date().getTime());
            kf.a(a);
            return;
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            i = 0;
            continue;
            kf.b(a, 0);
          }
        }
      }
      if (what == 8)
      {
        long l1 = ((Long)ca).d).longValue();
        long l2 = ((Long)ca).e).longValue();
        kf.d(a).setText(j.c(l2) + "/" + j.c(l1));
        if (l1 == 0L) {}
        for (i = 0;; i = (int)(1000L * l2 / l1))
        {
          kf.e(a).setProgress(i);
          kf.f(a).setText(i / 10 + "%");
          return;
        }
      }
      if (what == 9)
      {
        kf.a(a, 4);
        kf.c(a, 9);
        kf.a(a);
        return;
      }
    } while (what != 10);
    kf.a(a, 4);
    kf.c(a, 10);
    kf.a(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */