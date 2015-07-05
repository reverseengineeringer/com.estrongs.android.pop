package com.estrongs.android.pop.utils;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.aw;
import com.estrongs.fs.b.am;
import com.estrongs.fs.impl.pcs.b;
import java.util.List;

class bs
  implements DialogInterface.OnClickListener
{
  bs(bn parambn, boolean paramBoolean1, List paramList, cb paramcb, aw paramaw, ESActivity paramESActivity, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, p paramp) {}
  
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
    if (d != null) {
      d.a(false);
    }
    if ((e instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)e).F();
    }
    if (f)
    {
      bn.a(j, e, b);
      return;
    }
    if ((j.a != null) && (j.a.getTaskStatus() != 4)) {
      j.a.requestStop();
    }
    bn.a(j, e, b, g, h, i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */