package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.MediaController;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.ui.view.ESVideoView;

class jg
  extends Handler
{
  jg(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void handleMessage(Message paramMessage)
  {
    label338:
    do
    {
      for (;;)
      {
        try
        {
          if (what == 1)
          {
            if (PopVideoPlayer.a(a).isPlaying()) {
              PopVideoPlayer.a(a).pause();
            }
            return;
          }
          if (what == 2)
          {
            boolean bool = PopVideoPlayer.b(a);
            if (bool) {
              continue;
            }
            try
            {
              PopVideoPlayer.a(a).setVideoURI(a.getIntent().getData());
              PopVideoPlayer.c(a);
              if (!PopVideoPlayer.d(a)) {
                a.b.setVisibility(0);
              }
              if (arg1 > 0) {
                PopVideoPlayer.a(a).seekTo(arg1);
              }
              if ((arg2 == 1) && (a.a.startsWith("Spreadtrum")))
              {
                PopVideoPlayer.a(a).pause();
                PopVideoPlayer.e(a).invalidate();
                Message localMessage = PopVideoPlayer.f(a).obtainMessage(4);
                PopVideoPlayer.f(a).sendMessageDelayed(localMessage, 100L);
                arg1 = 1;
              }
              if ((arg1 != 0) || (!a.getIntent().getData().toString().endsWith("3gpp"))) {
                continue;
              }
              PopVideoPlayer.g(a);
              paramMessage = PopVideoPlayer.f(a).obtainMessage(3);
              PopVideoPlayer.f(a).sendMessageDelayed(paramMessage, 3000L);
            }
            catch (Exception paramMessage) {}
            continue;
          }
          if (what == 3)
          {
            PopVideoPlayer.e(a).hide();
            continue;
          }
          if (what != 4) {
            break label338;
          }
        }
        finally {}
        PopVideoPlayer.g(a);
        paramMessage = PopVideoPlayer.f(a).obtainMessage(3);
        PopVideoPlayer.f(a).sendMessageDelayed(paramMessage, 3000L);
        continue;
        if (what == 5)
        {
          if ((!a.a()) && (PopVideoPlayer.h(a) != null) && (!a.isFinishing()))
          {
            if ((!PopVideoPlayer.h(a).isShown()) || (!PopVideoPlayer.i(a).a())) {
              PopVideoPlayer.h(a).show(0);
            }
            PopVideoPlayer.j(a);
          }
        }
        else if (what == 6)
        {
          if (PopVideoPlayer.h(a) != null) {
            PopVideoPlayer.h(a).hide();
          }
        }
        else if (what == 7)
        {
          a.b.setVisibility(0);
        }
        else
        {
          if (what != 8) {
            break;
          }
          a.b.setVisibility(8);
        }
      }
    } while (what != 9);
    long l = PopVideoPlayer.a(a).getCurrentPosition();
    if (l != PopVideoPlayer.k(a))
    {
      if ((!PopVideoPlayer.a(a).c()) && (a.b.getVisibility() == 0)) {
        a.b.setVisibility(8);
      }
      PopVideoPlayer.a(a, System.currentTimeMillis());
      PopVideoPlayer.b(a, l);
    }
    for (;;)
    {
      paramMessage = PopVideoPlayer.f(a).obtainMessage(9);
      PopVideoPlayer.f(a).sendMessageDelayed(paramMessage, 1000L);
      break;
      if ((System.currentTimeMillis() - PopVideoPlayer.l(a) > 2000L) && ((PopVideoPlayer.a(a).c()) || (PopVideoPlayer.a(a).isPlaying()))) {
        a.b.setVisibility(0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */