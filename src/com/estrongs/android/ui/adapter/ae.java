package com.estrongs.android.ui.adapter;

import android.os.Handler;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.ad;

class ae
  implements CompoundButton.OnCheckedChangeListener
{
  ae(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ListAdapter_NewNavi.g(a).A(paramBoolean);
    if (!paramBoolean) {
      ListAdapter_NewNavi.g(a).y(paramBoolean);
    }
    ListAdapter_NewNavi.d(a).post(new af(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */