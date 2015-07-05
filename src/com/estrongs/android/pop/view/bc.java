package com.estrongs.android.pop.view;

import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.estrongs.android.view.aw;

class bc
  implements TextView.OnEditorActionListener
{
  bc(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 3)
    {
      if (FileExplorerActivity.B(a) == null) {
        return false;
      }
      if (a.y() == null) {
        return false;
      }
      FileExplorerActivity.a(a, "externalstorage://", a.y().ab());
      ((InputMethodManager)a.getSystemService("input_method")).hideSoftInputFromWindow(FileExplorerActivity.B(a).getWindowToken(), 0);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */