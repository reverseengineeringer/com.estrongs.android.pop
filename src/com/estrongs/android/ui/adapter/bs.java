package com.estrongs.android.ui.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.ad;

class bs
  implements CompoundButton.OnCheckedChangeListener
{
  bs(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ListAdapter_NewNavi.g(a).t(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */