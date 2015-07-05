package com.estrongs.android.ui.dialog;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

class dt
  implements TextWatcher
{
  dt(dn paramdn) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (a.d().length() == 0)
    {
      a.button_ok.setEnabled(false);
      return;
    }
    if (!a.c().equals(a.d()))
    {
      a.button_ok.setEnabled(false);
      return;
    }
    a.button_ok.setEnabled(true);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */