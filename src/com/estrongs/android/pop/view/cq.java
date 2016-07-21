package com.estrongs.android.pop.view;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.kq;
import com.estrongs.android.ui.dialog.kx;
import java.util.Date;
import java.util.Locale;

class cq
  extends Handler
{
  cq(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    for (;;)
    {
      try
      {
        i = what;
        switch (i)
        {
        case 4: 
        case 5: 
        case 6: 
        case 8: 
        case 9: 
        case 10: 
        default: 
          return;
        }
      }
      finally {}
      int i = arg1;
      paramMessage = (ci)obj;
      int k;
      if (paramMessage != null)
      {
        paramMessage.show();
        a.P.put(i, paramMessage);
        continue;
        i = arg1;
        paramMessage = (ci)a.P.get(i);
        if (paramMessage != null)
        {
          paramMessage.dismiss();
          continue;
          paramMessage = (String)obj;
          a.a(null, paramMessage);
          continue;
          kq.a(a.Q, "http://update.estrongs.com/up?id=1&l=" + Locale.getDefault().toString().toLowerCase() + "&channel=" + a.b);
          continue;
          ad.a(a).b(new Date().getTime());
          paramMessage = (kx)obj;
          if ((paramMessage != null) && (a != null) && (b != null))
          {
            k = a.a();
            i = 0;
          }
        }
      }
      try
      {
        int j = Integer.parseInt(a);
        i = j;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
      if (k < i) {
        new kq(a, 2, paramMessage, 1).b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */