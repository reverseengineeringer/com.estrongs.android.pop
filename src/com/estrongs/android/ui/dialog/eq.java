package com.estrongs.android.ui.dialog;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.estrongs.android.ui.theme.at;

class eq
  implements TextWatcher
{
  eq(en paramen) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    boolean bool;
    if (a.b).c)
    {
      if (a.c.getText().toString().equals(a.g)) {
        break label103;
      }
      bool = true;
      a.b).b.setEnabled(bool);
      paramEditable = at.a(a.a);
      if (!bool) {
        break label108;
      }
    }
    label103:
    label108:
    for (int i = 2131558657;; i = 2131558659)
    {
      i = paramEditable.c(i);
      a.b).b.setTextColor(i);
      return;
      bool = false;
      break;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */