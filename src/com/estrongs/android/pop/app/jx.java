package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

class jx
  implements View.OnClickListener
{
  jx(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onClick(View paramView)
  {
    PopVideoPlayer.f(a).obtainMessage(5).sendToTarget();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */