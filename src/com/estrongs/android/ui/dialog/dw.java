package com.estrongs.android.ui.dialog;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class dw
  implements CompoundButton.OnCheckedChangeListener
{
  dw(dp paramdp) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    dp.d(a).setEnabled(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */