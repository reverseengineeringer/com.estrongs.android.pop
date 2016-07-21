package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.PopAudioPlayer;

class jk
  implements DialogInterface.OnClickListener
{
  jk(ji paramji, CheckBox paramCheckBox, boolean paramBoolean, PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = a.isChecked();
    if (b != bool)
    {
      ad.a(c).p(bool);
      c.D();
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */