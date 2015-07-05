package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.BadTokenException;
import com.estrongs.android.ui.f.e;

class eu
  implements View.OnClickListener
{
  eu(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onClick(View paramView)
  {
    if (PopAudioPlayer.j(a)) {}
    paramView = e.a(paramView, a.getString(2131427950), 0, a.t(), false);
    paramView.a(new ev(this, paramView));
    try
    {
      paramView.c();
      return;
    }
    catch (WindowManager.BadTokenException paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */