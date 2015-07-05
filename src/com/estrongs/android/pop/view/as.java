package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class as
  implements DialogInterface.OnClickListener
{
  as(FileExplorerActivity paramFileExplorerActivity, CheckBox paramCheckBox, Thread paramThread) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.isChecked()) {
      ad.a(c).p(false);
    }
    paramDialogInterface.dismiss();
    FexApplication.a().a(true);
    b.start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */