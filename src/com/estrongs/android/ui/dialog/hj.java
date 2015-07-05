package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.l.a;
import java.util.LinkedList;
import java.util.List;

class hj
  implements DialogInterface.OnClickListener
{
  hj(hc paramhc) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = FileExplorerActivity.J();
    if (paramDialogInterface != null)
    {
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(ca).c);
      a.a(paramDialogInterface, localLinkedList, new hk(this, paramDialogInterface));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */