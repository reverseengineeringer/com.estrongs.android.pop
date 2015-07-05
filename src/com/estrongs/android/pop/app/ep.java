package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.ui.view.ac;
import java.util.List;

class ep
  implements View.OnClickListener
{
  ep(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onClick(View paramView)
  {
    paramView = PopAudioPlayer.i(a).d();
    if ((paramView != null) && (paramView.size() > 0)) {
      PopAudioPlayer.a(a, (ak)PopAudioPlayer.i(a).d().get(0));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */