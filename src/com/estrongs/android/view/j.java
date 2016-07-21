package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.app.compress.bs;
import com.estrongs.android.ui.view.ak;
import java.io.File;
import java.util.Map;

class j
  extends Handler
{
  j(g paramg) {}
  
  public void handleMessage(Message paramMessage)
  {
    try
    {
      if (1 == what)
      {
        if (g.a(a) != null) {
          g.a(a).dismiss();
        }
        g.c(a).put(g.b(a), new File(obj.toString()));
        g.a(a, obj.toString());
        return;
      }
      if (2 == what)
      {
        ak.a(a.ag, obj.toString(), 0);
        a.J();
        return;
      }
      if (what == 0) {
        a.g();
      }
      return;
    }
    catch (NullPointerException paramMessage) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */