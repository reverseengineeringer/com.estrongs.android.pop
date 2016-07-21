package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.view.ac;

class gb
  implements View.OnClickListener
{
  gb(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131624432: 
      a.r();
      return;
    case 2131624434: 
      a.t();
      return;
    case 2131624431: 
      a.o();
      return;
    case 2131624447: 
      if (PopAudioPlayer.h(a).b()) {
        a.z();
      }
      PopAudioPlayer.a(a, paramView);
      return;
    case 2131624422: 
      a.a(0);
      return;
    }
    a.a(1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */