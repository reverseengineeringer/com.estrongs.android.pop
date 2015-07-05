package com.estrongs.android.pop.view;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.kf;
import com.estrongs.android.ui.dialog.km;
import java.util.Date;

class et
  extends Handler
{
  et(FileExplorerActivity paramFileExplorerActivity) {}
  
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
      paramMessage = (cg)obj;
      int k;
      if (paramMessage != null)
      {
        paramMessage.show();
        a.U.put(i, paramMessage);
        continue;
        i = arg1;
        paramMessage = (cg)a.U.get(i);
        if (paramMessage != null)
        {
          paramMessage.dismiss();
          continue;
          paramMessage = (String)obj;
          a.a(null, paramMessage);
          continue;
          kf.a(a.V, "http://update.estrongs.com/up?id=1");
          continue;
          ad.a(a).b(new Date().getTime());
          paramMessage = (km)obj;
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
        new kf(a, 2, paramMessage, 1).b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */