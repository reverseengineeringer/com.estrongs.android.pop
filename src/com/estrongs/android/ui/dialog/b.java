package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.f;

class b
  implements DialogInterface.OnClickListener
{
  b(a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = FileExplorerActivity.X();
    f localf = new f(a.a);
    localf.setDescription(String.format(a.a(a).getString(2131230908), new Object[] { ap.cc(a.a.getAbsolutePath()) }));
    localf.setTaskDecisionListener(new m(paramDialogInterface));
    new kh(paramDialogInterface, paramDialogInterface.getString(2131230861), localf).show();
    localf.execute();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */