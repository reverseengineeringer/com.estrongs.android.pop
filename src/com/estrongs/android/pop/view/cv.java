package com.estrongs.android.pop.view;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.view.aw;

class cv
  implements View.OnClickListener
{
  cv(FileExplorerActivity paramFileExplorerActivity, aw paramaw) {}
  
  public void onClick(View paramView)
  {
    if (((FileExplorerActivity.B(b).getText() == null) || (FileExplorerActivity.B(b).getText().length() == 0)) && ("all".equals(a.ab())))
    {
      ag.a(b, 2131428425, 0);
      return;
    }
    b.a("externalstorage://", a.ab(), FileExplorerActivity.B(b).getText().toString());
    ((InputMethodManager)b.getSystemService("input_method")).hideSoftInputFromWindow(FileExplorerActivity.B(b).getWindowToken(), 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */