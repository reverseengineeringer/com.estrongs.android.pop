package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.widget.MediaController;

class kl
  extends MediaController
{
  kl(PopVideoPlayer paramPopVideoPlayer, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int j = paramKeyEvent.getKeyCode();
    if ((paramKeyEvent.getRepeatCount() == 0) && (paramKeyEvent.getAction() == 0)) {}
    for (int i = 1;; i = 0)
    {
      if (((j == 4) || (j == 82)) && (i != 0)) {
        PopVideoPlayer.a(a, true);
      }
      return super.dispatchKeyEvent(paramKeyEvent);
    }
  }
  
  public void hide()
  {
    if (PopVideoPlayer.o(a))
    {
      if (PopVideoPlayer.p(a))
      {
        PopVideoPlayer.a(a, false);
        a.c();
        return;
      }
      PopVideoPlayer.a(a, false);
      return;
    }
    PopVideoPlayer.a(a, false);
    try
    {
      if (a.a()) {
        PopVideoPlayer.q(a).setVisibility(4);
      }
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
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */