package com.estrongs.android.ui.dialog;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

class du
  implements TextWatcher
{
  du(dp paramdp) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (a.c().length() == 0)
    {
      a.button_ok.setEnabled(false);
      return;
    }
    if (dp.b(a))
    {
      if (!a.c().equals(a.d()))
      {
        a.button_ok.setEnabled(false);
        return;
      }
      a.button_ok.setEnabled(true);
      return;
    }
    a.button_ok.setEnabled(true);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */