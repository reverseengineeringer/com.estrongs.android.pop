package com.estrongs.android.pop.view;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.estrongs.android.pop.ad;

final class b
  implements DialogInterface.OnClickListener
{
  b(CheckBox paramCheckBox, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.isChecked()) {
      ad.a(b).q(true);
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */