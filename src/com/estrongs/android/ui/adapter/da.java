package com.estrongs.android.ui.adapter;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.is;
import com.estrongs.android.view.cr;
import com.estrongs.fs.impl.local.m;

class da
  extends Handler
{
  da(cz paramcz) {}
  
  public void handleMessage(Message paramMessage)
  {
    int i = what;
    if (i == 0)
    {
      a.a.a.f("apk://");
      paramMessage = a.a.a.O();
      if (paramMessage != null) {
        paramMessage.a("apk://");
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (i != 1) {
              break;
            }
            a.a.a.f("app://user");
            paramMessage = a.a.a.O();
          } while (paramMessage == null);
          paramMessage.k("app://user");
          return;
          if (i != 2) {
            break;
          }
          a.a.a.f("app://user");
          paramMessage = a.a.a.O();
        } while (paramMessage == null);
        paramMessage.l("app://user");
        return;
        if (i != 3) {
          break;
        }
        a.a.a.f("app://system");
        paramMessage = a.a.a.O();
      } while (paramMessage == null);
      paramMessage.j("app://system");
      return;
      if (i == 4)
      {
        w.b(a.a.a);
        return;
      }
      if (i == 5)
      {
        new is(a.a.a).show();
        return;
      }
    } while (i != 6);
    new Thread(new db(this)).start();
    ad.a(a.a.a).a(false);
    m.f();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */