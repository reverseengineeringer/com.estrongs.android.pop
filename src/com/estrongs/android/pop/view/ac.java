package com.estrongs.android.pop.view;

import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.estrongs.android.view.cr;

class ac
  implements TextView.OnEditorActionListener
{
  ac(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 3)
    {
      if (paramTextView == null) {
        return false;
      }
      if (a.O() == null) {
        return false;
      }
      FileExplorerActivity.a(a, "externalstorage://", a.O().aq());
      ((InputMethodManager)a.getSystemService("input_method")).hideSoftInputFromWindow(paramTextView.getWindowToken(), 0);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */