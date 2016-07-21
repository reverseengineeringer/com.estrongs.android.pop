package com.estrongs.android.ui.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.ad;

class cd
  implements CompoundButton.OnCheckedChangeListener
{
  cd(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ListAdapter_NewNavi.g(a).a(paramBoolean, true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */