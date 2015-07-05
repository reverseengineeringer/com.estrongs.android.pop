package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.g;
import java.util.List;

final class ao
  implements DialogInterface.OnClickListener
{
  ao(Activity paramActivity, List paramList, g paramg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    aj.a(a, b, c.e(), true, true);
    if ((a instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)a).s();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */