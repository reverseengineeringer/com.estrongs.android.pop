package com.estrongs.android.ui.dialog;

import android.view.View;
import android.view.View.OnClickListener;

class bx
  implements View.OnClickListener
{
  bx(bv parambv) {}
  
  public void onClick(View paramView)
  {
    paramView.postDelayed(new by(this, paramView), 100L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */