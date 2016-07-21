package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.b.a;

class bc
  implements DialogInterface.OnClickListener
{
  bc(bb parambb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = null;
    int i = -1;
    paramDialogInterface.dismiss();
    if (paramInt == 0)
    {
      paramInt = a.a("ftp");
      if (paramInt != -1)
      {
        paramDialogInterface = null;
        str = "ftp";
      }
    }
    for (;;)
    {
      if (str != null)
      {
        a.a((Activity)bb.a(a), str, paramInt, new bd(this, str));
        return;
        paramDialogInterface = new fb(bb.a(a), "ftp", true);
        continue;
        if (paramInt == 1)
        {
          paramInt = a.a("sftp");
          if (paramInt != -1)
          {
            paramDialogInterface = null;
            str = "sftp";
            continue;
          }
          paramDialogInterface = new fb(bb.a(a), "sftp", true);
          continue;
        }
        if (paramInt == 2)
        {
          paramInt = a.a("ftp");
          if (paramInt != -1)
          {
            paramDialogInterface = null;
            str = "ftps";
            continue;
          }
          paramDialogInterface = new fb(bb.a(a), "ftps", true);
          continue;
        }
        if (paramInt == 3)
        {
          paramInt = a.a("webdav");
          if (paramInt != -1)
          {
            paramDialogInterface = null;
            str = "webdav";
            continue;
          }
          paramDialogInterface = new fb(bb.a(a), "webdav", true);
        }
      }
      else
      {
        paramDialogInterface.a();
        return;
      }
      paramDialogInterface = null;
      paramInt = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */