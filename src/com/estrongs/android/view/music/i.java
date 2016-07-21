package com.estrongs.android.view.music;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.view.a;

class i
  extends BroadcastReceiver
{
  i(f paramf) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if (!a.a.equalsIgnoreCase("Market"))
      {
        if ((a.b != -1) && (a.a != -1) && (f.c(a) != null)) {
          f.a(a, a.b, a.a);
        }
        a.b = -1;
        a.a = -1;
      }
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */