package com.estrongs.android.ui.preference.esswitch;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class b
  implements CompoundButton.OnCheckedChangeListener
{
  private b(SwitchPreference paramSwitchPreference) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (!SwitchPreference.a(a, Boolean.valueOf(paramBoolean)))
    {
      if (!paramBoolean) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        paramCompoundButton.setChecked(paramBoolean);
        return;
      }
    }
    a.a(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.esswitch.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */