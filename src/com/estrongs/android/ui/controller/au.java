package com.estrongs.android.ui.controller;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.cr;

class au
  implements View.OnClickListener
{
  au(aj paramaj, cr paramcr) {}
  
  public void onClick(View paramView)
  {
    if (((aj.b(b).getText() == null) || (aj.b(b).getText().length() == 0)) && ("all".equals(a.aq())))
    {
      ak.a(b.a, 2131231616, 0);
      return;
    }
    b.a.a("externalstorage://", a.aq(), aj.b(b).getText().toString());
    ((InputMethodManager)b.a.getSystemService("input_method")).hideSoftInputFromWindow(aj.b(b).getWindowToken(), 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */