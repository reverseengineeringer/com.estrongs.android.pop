package com.estrongs.android.ui.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.ak;

class bo
  implements CompoundButton.OnCheckedChangeListener
{
  bo(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ListAdapter_NewNavi.g(a).s(paramBoolean);
    if (!paramBoolean) {
      ak.a(ListAdapter_NewNavi.a(a), 2131231348, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */