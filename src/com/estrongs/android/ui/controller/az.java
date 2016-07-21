package com.estrongs.android.ui.controller;

import android.view.View;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.a;

class az
  extends a
{
  az(aj paramaj, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    b.o = false;
    paramAnimation = (EditText)a.findViewById(2131624501);
    ((InputMethodManager)b.a.getSystemService("input_method")).hideSoftInputFromWindow(paramAnimation.getWindowToken(), 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */