package com.estrongs.android.ui.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class dk
  implements CompoundButton.OnCheckedChangeListener
{
  dk(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ad.a(FexApplication.a()).bk();
    if (paramBoolean)
    {
      ListAdapter_NewNavi.e(a);
      return;
    }
    ListAdapter_NewNavi.f(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */