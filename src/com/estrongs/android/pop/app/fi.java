package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.view.ac;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.ui.view.by;
import java.util.List;

class fi
  extends Handler
{
  fi(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (PopAudioPlayer.u(a)) {}
    int i;
    int j;
    long l1;
    label190:
    do
    {
      do
      {
        do
        {
          return;
          i = arg1;
          j = arg2;
          switch (what)
          {
          default: 
            return;
          case 1: 
            if (PopAudioPlayer.a(a) == null) {
              break label396;
            }
            if ((PopAudioPlayer.a(a).e()) && (!PopAudioPlayer.a(a).f()))
            {
              l1 = PopAudioPlayer.a(a).m();
              if (l1 > 0L) {
                break label347;
              }
              PopAudioPlayer.v(a).a();
            }
            PopAudioPlayer.x(a);
            return;
          }
        } while (PopAudioPlayer.a(a) == null);
        new fj(this, j, i).start();
        return;
        PopAudioPlayer.c(a, arg1, arg2);
        return;
        a.finish();
        return;
        a.g();
        j = what;
      } while (PopAudioPlayer.a(a) == null);
      new fk(this, i, j).start();
      return;
      if (((Boolean)obj).booleanValue())
      {
        Message localMessage = obtainMessage(2);
        arg1 = arg1;
        removeMessages(2);
        sendMessage(localMessage);
        return;
      }
    } while (PopAudioPlayer.a(a) == null);
    new fl(this, i).start();
    return;
    label347:
    long l2 = PopAudioPlayer.a(a).c();
    PopAudioPlayer.v(a).a((int)l1);
    if (l2 > l1) {}
    for (;;)
    {
      PopAudioPlayer.v(a).b((int)l1);
      break label190;
      label396:
      PopAudioPlayer.v(a).a();
      break label190;
      if (arg1 == 0)
      {
        ag.a(a, a.getText(2131427942), 0);
        return;
      }
      ag.a(a, a.getText(2131427943), 0);
      return;
      if (PopAudioPlayer.i(a).b())
      {
        a.b();
        PopAudioPlayer.h(a).a("playlist_edit", Boolean.valueOf(false));
        return;
      }
      a.c();
      if (!"playlist_edit".equals(PopAudioPlayer.h(a).b())) {
        break;
      }
      PopAudioPlayer.h(a).a("playlist", Boolean.valueOf(false));
      return;
      PopAudioPlayer.d(a, PopAudioPlayer.i(a).d().size(), PopAudioPlayer.i(a).getCount());
      return;
      if (j == 1)
      {
        if (PopAudioPlayer.a(a).e())
        {
          if (!PopAudioPlayer.a(a).f())
          {
            PopAudioPlayer.a(a).w();
            return;
          }
          PopAudioPlayer.a(a).p();
          return;
        }
        a.m();
        return;
      }
      if (PopAudioPlayer.a(a).h() != PopAudioPlayer.i(a).a()) {
        PopAudioPlayer.a(a).a(PopAudioPlayer.i(a).a());
      }
      PopAudioPlayer.a(a, i);
      return;
      l1 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */