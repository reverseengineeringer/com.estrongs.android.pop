package com.estrongs.android.pop.app.compress;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

class ao
  implements RadioGroup.OnCheckedChangeListener
{
  ao(ai paramai) {}
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramRadioGroup.getCheckedRadioButtonId() == 2131361861)
    {
      ai.j(a).setVisibility(8);
      ai.k(a).setVisibility(8);
    }
    do
    {
      return;
      if (paramRadioGroup.getCheckedRadioButtonId() == 2131361860)
      {
        ai.j(a).setVisibility(0);
        ai.k(a).setVisibility(8);
        return;
      }
    } while (paramRadioGroup.getCheckedRadioButtonId() != 2131361859);
    ai.j(a).setVisibility(0);
    ai.k(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */