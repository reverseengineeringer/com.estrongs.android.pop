package com.estrongs.fs.impl.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.view.FileExplorerActivity;

final class c
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.bluetooth.adapter.action.STATE_CHANGED".equals(paramIntent.getAction())) && (paramIntent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10) == 12))
    {
      com.estrongs.android.pop.app.f.a.a = true;
      if (FileExplorerActivity.X() != null) {
        com.estrongs.android.pop.app.f.a.a().e();
      }
      a.f();
      if (com.estrongs.android.pop.app.f.a.c)
      {
        com.estrongs.android.pop.app.f.a.c = false;
        if (FileExplorerActivity.X() != null) {
          FileExplorerActivity.X().Z();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */