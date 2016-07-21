package com.estrongs.android.d;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class b
  implements CompoundButton.OnCheckedChangeListener
{
  b(a parama) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (a.a(a).isChecked())
    {
      a.b(a).setEnabled(false);
      a.c(a).setEnabled(false);
      return;
    }
    a.b(a).setEnabled(true);
    a.c(a).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */