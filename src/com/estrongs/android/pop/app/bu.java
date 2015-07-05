package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.estrongs.android.pop.view.FileExplorerActivity;

class bu
  implements DialogInterface.OnClickListener
{
  bu(ESUsePromptActivity paramESUsePromptActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(a, FileExplorerActivity.class);
    localIntent.setFlags(335544320);
    localIntent.setAction("com.estrongs.android.SHOW_DISK_USAGE");
    a.startActivity(localIntent);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */