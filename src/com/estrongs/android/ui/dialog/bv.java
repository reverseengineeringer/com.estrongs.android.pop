package com.estrongs.android.ui.dialog;

import android.view.View;
import android.view.View.OnClickListener;

class bv
  implements View.OnClickListener
{
  bv(bt parambt) {}
  
  public void onClick(View paramView)
  {
    paramView.postDelayed(new bw(this, paramView), 100L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */