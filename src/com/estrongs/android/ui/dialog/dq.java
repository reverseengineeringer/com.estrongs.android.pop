package com.estrongs.android.ui.dialog;

import android.text.Editable;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class dq
  implements CompoundButton.OnCheckedChangeListener
{
  dq(dp paramdp, int paramInt) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      dp.a(b).setInputType(144);
      if (dp.b(b)) {
        dp.c(b).setInputType(144);
      }
    }
    for (;;)
    {
      dp.a(b).setSelection(dp.a(b).getText().length());
      if (dp.b(b)) {
        dp.c(b).setSelection(dp.c(b).getText().length());
      }
      return;
      dp.a(b).setInputType(a);
      if (dp.b(b)) {
        dp.c(b).setInputType(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */