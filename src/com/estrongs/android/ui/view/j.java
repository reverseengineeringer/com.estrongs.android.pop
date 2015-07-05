package com.estrongs.android.ui.view;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class j
  implements CompoundButton.OnCheckedChangeListener
{
  j(b paramb) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (b.e(a).isChecked())
    {
      b.f(a).setEnabled(false);
      b.g(a).setEnabled(false);
      return;
    }
    b.f(a).setEnabled(true);
    b.g(a).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */