package com.estrongs.android.ui.c;

import android.app.Activity;
import android.os.Looper;
import com.estrongs.android.util.bb;

class b
  implements bb
{
  b(a parama) {}
  
  public void a()
  {
    if (a.a(a) != null)
    {
      if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
        a.a(a).l();
      }
    }
    else {
      return;
    }
    a.b(a).runOnUiThread(new c(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */