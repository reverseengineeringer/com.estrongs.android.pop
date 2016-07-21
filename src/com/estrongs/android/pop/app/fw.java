package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.view.ac;
import com.estrongs.android.ui.view.ak;
import java.util.List;

class fw
  extends Handler
{
  fw(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (PopAudioPlayer.u(a)) {}
    int i;
    int j;
    long l1;
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
        new fx(this, j, i).start();
        return;
        PopAudioPlayer.c(a, arg1, arg2);
        return;
        a.finish();
        return;
        a.k();
        j = what;
      } while (PopAudioPlayer.a(a) == null);
      new fy(this, i, j).start();
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
    new fz(this, i).start();
    return;
    label347:
    long l2 = PopAudioPlayer.a(a).c();
    PopAudioPlayer.v(a).a((int)l1);
    if (l2 > l1) {}
    for (;;)
    {
      PopAudioPlayer.v(a).b((int)l1);
      break;
      label396:
      PopAudioPlayer.v(a).a();
      break;
      if (arg1 == 0)
      {
        ak.a(a, a.getText(2131232458), 0);
        return;
      }
      ak.a(a, a.getText(2131232459), 0);
      return;
      if (PopAudioPlayer.h(a).b())
      {
        a.e();
        return;
      }
      a.f();
      return;
      PopAudioPlayer.d(a, PopAudioPlayer.h(a).c().size(), PopAudioPlayer.h(a).getItemCount());
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
        a.r();
        return;
      }
      if (PopAudioPlayer.a(a).h() != PopAudioPlayer.h(a).a()) {
        PopAudioPlayer.a(a).a(PopAudioPlayer.h(a).a());
      }
      PopAudioPlayer.a(a, i);
      return;
      l1 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */