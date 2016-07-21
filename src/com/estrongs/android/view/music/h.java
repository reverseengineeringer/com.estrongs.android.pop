package com.estrongs.android.view.music;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.gq;
import com.estrongs.android.pop.view.a;
import java.util.List;

class h
  extends BroadcastReceiver
{
  h(f paramf) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        if ((!a.a.equalsIgnoreCase("Market")) && (f.c(a) != null) && (f.c(a).e()) && (f.c(a).f()))
        {
          paramContext = f.c(a).h();
          if ((paramContext == null) || (paramContext.c().size() <= f.c(a).l())) {
            break label197;
          }
          paramContext = cgetca).l())).b;
          if (paramContext == null) {
            break label197;
          }
          if (paramContext.startsWith("/")) {
            break label202;
          }
          if (!paramContext.startsWith("file:///")) {
            break label197;
          }
          break label202;
          if (i != 0)
          {
            a.a = ((int)f.c(a).c());
            a.b = f.c(a).l();
            f.c(a).n();
            f.c(a).q();
          }
        }
        return;
      }
      catch (Exception paramContext)
      {
        return;
      }
      label197:
      int i = 0;
      continue;
      label202:
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */