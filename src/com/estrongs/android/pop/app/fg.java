package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.ui.view.ac;
import java.util.List;

class fg
  implements View.OnClickListener
{
  fg(fa paramfa) {}
  
  public void onClick(View paramView)
  {
    paramView = PopAudioPlayer.h(a.a).c();
    if ((paramView != null) && (paramView.size() > 0)) {
      a.a.b((i)PopAudioPlayer.h(a.a).c().get(0));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */