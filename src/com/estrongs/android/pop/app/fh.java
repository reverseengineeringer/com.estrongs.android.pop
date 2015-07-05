package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.estrongs.android.ui.view.ac;

class fh
  implements AdapterView.OnItemLongClickListener
{
  fh(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (PopAudioPlayer.i(a).b())
    {
      paramAdapterView.performItemClick(paramView, paramInt, paramLong);
      return true;
    }
    PopAudioPlayer.i(a).a(true);
    paramAdapterView.performItemClick(paramView, paramInt, paramLong);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */