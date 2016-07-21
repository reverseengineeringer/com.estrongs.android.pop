package com.estrongs.android.ui.controller;

import android.view.View;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.a;

class at
  extends a
{
  at(aj paramaj, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    ((EditText)a.findViewById(2131624501)).requestFocus();
    aj.b(b).performClick();
    ((InputMethodManager)b.a.getSystemService("input_method")).toggleSoftInput(0, 2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */