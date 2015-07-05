package com.estrongs.android.ui.dialog;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class ft
  implements CompoundButton.OnCheckedChangeListener
{
  ft(fs paramfs) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (fs.a(a).isChecked())
    {
      fs.b(a).setEnabled(false);
      fs.c(a).setEnabled(false);
      fs.d(a).setEnabled(false);
      return;
    }
    fs.b(a).setEnabled(true);
    fs.c(a).setEnabled(true);
    fs.d(a).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */