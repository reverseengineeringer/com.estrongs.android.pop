package com.estrongs.android.pop.app.a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.PopAudioPlayer;

class ae
  implements DialogInterface.OnClickListener
{
  ae(ac paramac, e parame, CheckBox paramCheckBox, boolean paramBoolean, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = b.isChecked();
    if (c != bool)
    {
      ad.a(d).q(bool);
      e.a(e.a).y();
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */