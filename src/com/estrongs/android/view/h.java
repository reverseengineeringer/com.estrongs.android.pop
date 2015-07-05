package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.app.compress.aw;
import com.estrongs.android.ui.view.ag;
import java.io.File;
import java.util.Map;

class h
  extends Handler
{
  h(e parame) {}
  
  public void handleMessage(Message paramMessage)
  {
    try
    {
      if (1 == what)
      {
        if (e.a(a) != null) {
          e.a(a).dismiss();
        }
        e.c(a).put(e.b(a), new File(obj.toString()));
        e.a(a, obj.toString());
        return;
      }
      if (2 == what)
      {
        ag.a(a.ad, obj.toString(), 0);
        a.u();
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
 * Qualified Name:     com.estrongs.android.view.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */