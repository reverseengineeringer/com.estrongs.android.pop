package com.estrongs.android.pop.app;

import android.content.Context;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.MediaController;

class kk
  extends MediaController
{
  kk(PopVideoPlayer paramPopVideoPlayer, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int j = paramKeyEvent.getKeyCode();
    int i;
    if ((paramKeyEvent.getRepeatCount() == 0) && (paramKeyEvent.getAction() == 0))
    {
      i = 1;
      if ((j != 4) && (j != 82)) {
        break label56;
      }
      if (i != 0) {
        PopVideoPlayer.a(a, true);
      }
    }
    label56:
    do
    {
      return super.dispatchKeyEvent(paramKeyEvent);
      i = 0;
      break;
      if ((j == 24) && (!a.a()))
      {
        PopVideoPlayer.r(a).v();
        return true;
      }
    } while ((j != 25) || (a.a()));
    PopVideoPlayer.r(a).w();
    return true;
  }
  
  public void hide()
  {
    if ((!a.a()) && ((PopVideoPlayer.n(a)) || (PopVideoPlayer.o(a))))
    {
      if (PopVideoPlayer.p(a))
      {
        PopVideoPlayer.a(a, false);
        if (PopVideoPlayer.n(a)) {
          a.b();
        }
        if (PopVideoPlayer.o(a)) {
          a.c();
        }
        return;
      }
      PopVideoPlayer.a(a, false);
      return;
    }
    if (!a.a())
    {
      super.hide();
      a.finish();
      return;
    }
    PopVideoPlayer.a(a, false);
    try
    {
      PopVideoPlayer.q(a).setVisibility(4);
      super.hide();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void show()
  {
    PopVideoPlayer.q(a).setVisibility(0);
    try
    {
      super.show(0);
      return;
    }
    catch (Exception localException)
    {
      PopVideoPlayer.f(a).sendMessageDelayed(PopVideoPlayer.f(a).obtainMessage(5), 1000L);
    }
  }
  
  public void show(int paramInt)
  {
    PopVideoPlayer.q(a).setVisibility(0);
    try
    {
      super.show(0);
      return;
    }
    catch (Exception localException)
    {
      PopVideoPlayer.f(a).sendMessageDelayed(PopVideoPlayer.f(a).obtainMessage(5), 1000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */