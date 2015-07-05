package com.estrongs.android.ui.view;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class i
  implements CompoundButton.OnCheckedChangeListener
{
  i(b paramb) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = b.d(a).getText().toString();
    if (paramBoolean) {
      if (paramCompoundButton.equals("80")) {
        b.d(a).setText(String.valueOf(443));
      }
    }
    while (!paramCompoundButton.equals("443")) {
      return;
    }
    b.d(a).setText(String.valueOf(80));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */