package com.estrongs.android.ui.a;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ij;
import com.estrongs.android.view.aw;
import com.estrongs.fs.impl.local.l;

class co
  extends Handler
{
  co(cn paramcn) {}
  
  public void handleMessage(Message paramMessage)
  {
    int i = what;
    if (i == 0)
    {
      a.a.a.d("apk://");
      paramMessage = a.a.a.y();
      if (paramMessage != null) {
        paramMessage.h("apk://");
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
            a.a.a.d("app://user");
            paramMessage = a.a.a.y();
          } while (paramMessage == null);
          paramMessage.i("app://user");
          return;
          if (i != 2) {
            break;
          }
          a.a.a.d("app://user");
          paramMessage = a.a.a.y();
        } while (paramMessage == null);
        paramMessage.j("app://user");
        return;
        if (i != 3) {
          break;
        }
        a.a.a.d("app://system");
        paramMessage = a.a.a.y();
      } while (paramMessage == null);
      paramMessage.g("app://system");
      return;
      if (i == 4)
      {
        w.b(a.a.a);
        return;
      }
      if (i == 5)
      {
        new ij(a.a.a).show();
        return;
      }
    } while (i != 6);
    new Thread(new cp(this)).start();
    ad.a(a.a.a).a(false);
    l.f();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */