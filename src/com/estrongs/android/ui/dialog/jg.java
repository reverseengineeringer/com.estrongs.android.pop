package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.view.FileExplorerActivity;

class jg
  implements DialogInterface.OnClickListener
{
  jg(jf paramjf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    if ((a.mContext instanceof FileExplorerActivity))
    {
      ((FileExplorerActivity)a.mContext).d("clean://");
      return;
    }
    paramDialogInterface = new Intent(a.mContext, FileExplorerActivity.class);
    paramDialogInterface.setData(Uri.parse("clean://"));
    paramDialogInterface.addFlags(268435456);
    paramDialogInterface.addFlags(67108864);
    a.mContext.startActivity(paramDialogInterface);
    ((Activity)a.mContext).finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */