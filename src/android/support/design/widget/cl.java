package android.support.design.widget;

import android.text.Editable;
import android.text.TextWatcher;

class cl
  implements TextWatcher
{
  cl(TextInputLayout paramTextInputLayout) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    TextInputLayout.a(a, true);
    if (TextInputLayout.a(a)) {
      TextInputLayout.a(a, paramEditable.length());
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */