package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.e.ka;
import java.util.List;

class fn
  implements MenuItem.OnMenuItemClickListener
{
  fn(PopAudioPlayer paramPopAudioPlayer, List paramList) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    PopAudioPlayer.a(b, new fo(this, b, PopAudioPlayer.n(b)));
    PopAudioPlayer.o(b).a(a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */