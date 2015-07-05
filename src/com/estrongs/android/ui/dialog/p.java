package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.List;

class p
  implements DialogInterface.OnClickListener
{
  p(o paramo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = new ArrayList();
    paramDialogInterface.add(a.a);
    o.a(a).Q().c(o.a(a), paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */