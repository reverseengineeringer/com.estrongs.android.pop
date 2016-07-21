package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.f;
import java.util.List;

final class aw
  implements DialogInterface.OnClickListener
{
  aw(Activity paramActivity, List paramList, f paramf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ao.a(a, b, c.e(), true, true);
    if ((a instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)a).B();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */