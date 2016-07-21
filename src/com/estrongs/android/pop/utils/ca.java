package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v7.widget.AppCompatCheckBox;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.app.d.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.impl.pcs.b;
import java.util.List;

class ca
  implements DialogInterface.OnClickListener
{
  ca(bv parambv, boolean paramBoolean1, List paramList, ck paramck, a parama, boolean paramBoolean2, Activity paramActivity, boolean paramBoolean3, AppCompatCheckBox paramAppCompatCheckBox, boolean paramBoolean4, p paramp) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((Dialog)paramDialogInterface).setOnDismissListener(null);
    paramDialogInterface.dismiss();
    if (a) {
      b.remove(b.a());
    }
    if (c != null) {
      c.a(b);
    }
    if ((d instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)d).B();
    }
    if (e)
    {
      bv.a(k, f, b);
      return;
    }
    if ((k.a != null) && (k.a.getTaskStatus() != 4)) {
      k.a.requestStop();
    }
    boolean bool2 = g;
    boolean bool1 = bool2;
    if (bool2)
    {
      bool1 = bool2;
      if (h.getVisibility() == 0) {
        bool1 = h.isChecked();
      }
    }
    bv.a(k, d, b, i, bool1, j);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */