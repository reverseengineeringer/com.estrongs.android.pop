package com.estrongs.android.pop.view;

import android.view.View;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.widget.a;

class cu
  extends a
{
  cu(FileExplorerActivity paramFileExplorerActivity, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    ((EditText)a.findViewById(2131361988)).requestFocus();
    if (FileExplorerActivity.B(b) != null) {
      FileExplorerActivity.B(b).performClick();
    }
    ((InputMethodManager)b.getSystemService("input_method")).toggleSoftInput(0, 2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */