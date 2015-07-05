package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;

class kt
  implements DialogInterface.OnClickListener
{
  kt(ks paramks, List paramList1, List paramList2, List paramList3) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (ks.a(d) != null)
    {
      if ((a != null) && (paramInt < a.size())) {
        ks.a(d).a((String)b.get(paramInt), (String)a.get(paramInt));
      }
    }
    else {
      return;
    }
    ks.a(d).a((String)b.get(paramInt), (String)c.get(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */