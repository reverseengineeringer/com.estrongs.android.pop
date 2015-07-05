package com.estrongs.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class ab
  implements DialogInterface.OnClickListener
{
  ab(g paramg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      paramDialogInterface.dismiss();
      return;
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */