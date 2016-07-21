package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.app.compress.bs;
import java.io.File;
import java.util.Map;

class al
  extends Handler
{
  al(ak paramak) {}
  
  public void handleMessage(Message paramMessage)
  {
    try
    {
      if (1 == what)
      {
        if (ak.a(a) != null) {
          ak.a(a).dismiss();
        }
        ak.c(a).put(ak.b(a), new File(obj.toString()));
        ak.a(a, obj.toString());
        return;
      }
      if (2 == what)
      {
        com.estrongs.android.ui.view.ak.a(a.ag, obj.toString(), 0);
        a.J();
        a.f();
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
 * Qualified Name:     com.estrongs.android.view.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */