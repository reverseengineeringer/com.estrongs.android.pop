package com.estrongs.android.ui.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.ad;

class ca
  implements CompoundButton.OnCheckedChangeListener
{
  ca(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ListAdapter_NewNavi.g(a).l(paramBoolean);
    com.estrongs.android.ui.guesture.b.b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */