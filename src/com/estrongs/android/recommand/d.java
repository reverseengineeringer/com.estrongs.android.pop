package com.estrongs.android.recommand;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.util.an;
import java.util.List;

class d
  extends BroadcastReceiver
{
  d(c paramc) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = a;
    if ((an.b()) || (an.d())) {}
    for (boolean bool = true;; bool = false)
    {
      c.a(paramContext, bool);
      if ((c.a(a)) && (!c.b(a).isEmpty())) {
        c.c(a);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.recommand.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */