package com.estrongs.android.ui.dialog;

import com.estrongs.a.a;
import com.estrongs.android.ui.notification.f;
import java.util.Map;

class jl
  implements Runnable
{
  jl(jk paramjk, a parama) {}
  
  public void run()
  {
    if ((!jh.j(b.a)) && (jh.i(b.a) != null))
    {
      jh.e.remove(Long.valueOf(a.getTaskId()));
      jh.i(b.a).a();
      jh.a(b.a, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */