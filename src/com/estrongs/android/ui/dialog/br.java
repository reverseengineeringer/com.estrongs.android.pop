package com.estrongs.android.ui.dialog;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class br
  implements CompoundButton.OnCheckedChangeListener
{
  br(bj parambj) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a.f = paramBoolean;
    a.c.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */