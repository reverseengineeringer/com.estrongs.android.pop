package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;

public class AudioPlayerService$MediaButtonReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        paramContext = paramIntent.getAction();
        paramIntent = (KeyEvent)paramIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if ((!"android.intent.action.MEDIA_BUTTON".equals(paramContext)) || (AudioPlayerService.b == null) || (paramIntent == null)) {
          break;
        }
        boolean bool = AudioPlayerService.b.k();
        int i = paramIntent.getKeyCode();
        if (paramIntent.getAction() != 1) {
          return;
        }
        if (87 == i) {
          AudioPlayerService.a(AudioPlayerService.b, null);
        }
        if (85 == i)
        {
          if (!bool) {
            break label212;
          }
          if (AudioPlayerService.b.m()) {
            AudioPlayerService.b.E();
          }
        }
        else
        {
          if ((79 == i) && (bool))
          {
            if (!AudioPlayerService.b.m()) {
              break label222;
            }
            AudioPlayerService.b.E();
          }
          if (88 == i) {
            AudioPlayerService.b.f(AudioPlayerService.b.g());
          }
          if (86 == i) {
            AudioPlayerService.b.t();
          }
          if (126 == i)
          {
            if (!bool) {
              break label231;
            }
            if (AudioPlayerService.b.m()) {
              AudioPlayerService.b.E();
            }
          }
          if ((127 != i) || (!bool)) {
            break;
          }
          AudioPlayerService.b.u();
          return;
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      AudioPlayerService.b.u();
      continue;
      label212:
      AudioPlayerService.b.s();
      continue;
      label222:
      AudioPlayerService.b.u();
      continue;
      label231:
      AudioPlayerService.b.s();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.AudioPlayerService.MediaButtonReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */