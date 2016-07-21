package com.estrongs.android.ui.controller;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ba
  implements TextWatcher
{
  ba(aj paramaj) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (aj.b(a) == null) {
      return;
    }
    ImageView localImageView;
    if (aj.c(a) != null)
    {
      localImageView = aj.c(a);
      if (aj.b(a).getEditableText().length() <= 0) {
        break label69;
      }
    }
    label69:
    for (int i = 0;; i = 4)
    {
      localImageView.setVisibility(i);
      a.a.l(paramEditable.toString());
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */