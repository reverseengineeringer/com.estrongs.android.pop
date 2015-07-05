package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.app.a.al;
import java.util.List;

class ey
  extends BroadcastReceiver
{
  ey(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        if ((!"Market".equalsIgnoreCase("Market")) && (a.a()) && (PopAudioPlayer.a(a) != null) && (PopAudioPlayer.a(a).e()) && (PopAudioPlayer.a(a).f()))
        {
          paramContext = PopAudioPlayer.a(a).h();
          if ((paramContext == null) || (paramContext.c().size() <= PopAudioPlayer.a(a).l())) {
            break label206;
          }
          paramContext = cgetaa).l())).b;
          if (paramContext == null) {
            break label206;
          }
          if (paramContext.startsWith("/")) {
            break label211;
          }
          if (!paramContext.startsWith("file:///")) {
            break label206;
          }
          break label211;
          if (i != 0)
          {
            a.a = ((int)PopAudioPlayer.a(a).c());
            a.b = PopAudioPlayer.a(a).l();
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
      label206:
      int i = 0;
      continue;
      label211:
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */