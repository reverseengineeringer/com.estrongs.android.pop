package com.estrongs.android.ui.a;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.view.SimpleSwitchButton;

class cg
  implements View.OnClickListener
{
  cg(aa paramaa) {}
  
  public void onClick(View paramView)
  {
    paramView = (SimpleSwitchButton)paramView.findViewById(2131361848);
    if (paramView != null) {
      if (paramView.isChecked()) {
        break label29;
      }
    }
    label29:
    for (boolean bool = true;; bool = false)
    {
      paramView.setChecked(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */