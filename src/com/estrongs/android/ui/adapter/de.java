package com.estrongs.android.ui.adapter;

import android.app.Dialog;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.a.a;

class de
  implements View.OnClickListener
{
  de(ListAdapter_NewNavi paramListAdapter_NewNavi, Dialog paramDialog, SwitchCompat paramSwitchCompat) {}
  
  public void onClick(View paramView)
  {
    a.dismiss();
    a.a(b.isChecked(), "sidebar");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */