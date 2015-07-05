package com.estrongs.android.pop.view;

import android.view.View;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.widget.a;

class db
  extends a
{
  db(FileExplorerActivity paramFileExplorerActivity, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    b.q = false;
    paramAnimation = (EditText)a.findViewById(2131361988);
    ((InputMethodManager)b.getSystemService("input_method")).hideSoftInputFromWindow(paramAnimation.getWindowToken(), 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */