package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.ui.view.ac;

class gc
  implements AdapterView.OnItemClickListener
{
  gc(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (j)paramAdapterView.getAdapter().getItem(paramInt);
    PopAudioPlayer.E(a).dismiss();
    for (;;)
    {
      try
      {
        paramView = paramAdapterView.a();
        if (paramView != null) {
          continue;
        }
        PopAudioPlayer.F(a).setText(a.getString(paramAdapterView.b()));
        PopAudioPlayer.h(a).a(paramAdapterView);
        a.l();
      }
      catch (Exception paramAdapterView)
      {
        paramAdapterView.printStackTrace();
        continue;
      }
      a.supportInvalidateOptionsMenu();
      return;
      PopAudioPlayer.F(a).setText(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */