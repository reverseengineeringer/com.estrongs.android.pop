package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.fs.b.ao;

class cb
  implements DialogInterface.OnClickListener
{
  cb(bv parambv) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if ((a.a != null) && (a.a.getTaskStatus() != 4)) {
      a.a.requestStop();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */