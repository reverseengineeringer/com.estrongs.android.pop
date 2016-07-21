package com.estrongs.android.ui.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Toast;
import com.estrongs.android.pop.ad;

class ah
  implements CompoundButton.OnCheckedChangeListener
{
  ah(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if ((paramBoolean) && (!ListAdapter_NewNavi.g(a).bp()))
    {
      Toast.makeText(ListAdapter_NewNavi.a(a), 2131231416, 0).show();
      paramCompoundButton.setChecked(false);
      return;
    }
    ListAdapter_NewNavi.g(a).y(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */