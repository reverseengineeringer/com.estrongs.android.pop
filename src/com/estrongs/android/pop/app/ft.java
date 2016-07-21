package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.view.a;
import java.util.List;

class ft
  extends BroadcastReceiver
{
  ft(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        if ((!a.a.equalsIgnoreCase("Market")) && (a.d()) && (PopAudioPlayer.a(a) != null) && (PopAudioPlayer.a(a).e()) && (PopAudioPlayer.a(a).f()))
        {
          paramContext = PopAudioPlayer.a(a).h();
          if ((paramContext == null) || (paramContext.c().size() <= PopAudioPlayer.a(a).l())) {
            break label207;
          }
          paramContext = cgetaa).l())).b;
          if (paramContext == null) {
            break label207;
          }
          if (paramContext.startsWith("/")) {
            break label212;
          }
          if (!paramContext.startsWith("file:///")) {
            break label207;
          }
          break label212;
          if (i != 0)
          {
            a.b = ((int)PopAudioPlayer.a(a).c());
            a.c = PopAudioPlayer.a(a).l();
            PopAudioPlayer.a(a).n();
            PopAudioPlayer.a(a).q();
          }
        }
        return;
      }
      catch (Exception paramContext)
      {
        return;
      }
      label207:
      int i = 0;
      continue;
      label212:
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */