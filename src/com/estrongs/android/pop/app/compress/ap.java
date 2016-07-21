package com.estrongs.android.pop.app.compress;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

class ap
  implements RadioGroup.OnCheckedChangeListener
{
  ap(aj paramaj) {}
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramRadioGroup.getCheckedRadioButtonId() == 2131624359)
    {
      aj.j(a).setVisibility(8);
      aj.k(a).setVisibility(8);
    }
    do
    {
      return;
      if (paramRadioGroup.getCheckedRadioButtonId() == 2131624358)
      {
        aj.j(a).setVisibility(0);
        aj.k(a).setVisibility(8);
        return;
      }
    } while (paramRadioGroup.getCheckedRadioButtonId() != 2131624357);
    aj.j(a).setVisibility(0);
    aj.k(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */