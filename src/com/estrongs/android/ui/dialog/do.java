package com.estrongs.android.ui.dialog;

import android.text.Editable;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class do
  implements CompoundButton.OnCheckedChangeListener
{
  do(dn paramdn, int paramInt) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      dn.a(b).setInputType(144);
      if (dn.b(b)) {
        dn.c(b).setInputType(144);
      }
    }
    for (;;)
    {
      dn.a(b).setSelection(dn.a(b).getText().length());
      if (dn.b(b)) {
        dn.c(b).setSelection(dn.c(b).getText().length());
      }
      return;
      dn.a(b).setInputType(a);
      if (dn.b(b)) {
        dn.c(b).setInputType(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */