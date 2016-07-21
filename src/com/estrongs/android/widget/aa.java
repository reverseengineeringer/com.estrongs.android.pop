package com.estrongs.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class aa
  implements DialogInterface.OnClickListener
{
  aa(f paramf) {}
  
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
 * Qualified Name:     com.estrongs.android.widget.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */