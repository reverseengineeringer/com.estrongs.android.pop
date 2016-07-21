package com.estrongs.android.ui.dialog;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class fw
  implements CompoundButton.OnCheckedChangeListener
{
  fw(fv paramfv) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (fv.a(a).isChecked())
    {
      fv.b(a).setEnabled(false);
      fv.c(a).setEnabled(false);
      fv.d(a).setEnabled(false);
      return;
    }
    fv.b(a).setEnabled(true);
    fv.c(a).setEnabled(true);
    fv.d(a).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */