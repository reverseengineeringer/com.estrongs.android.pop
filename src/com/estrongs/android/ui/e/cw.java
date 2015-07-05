package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.ae;
import com.estrongs.fs.b.a;
import com.estrongs.fs.h;

class cw
  implements DialogInterface.OnClickListener
{
  cw(cv paramcv, ae paramae) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = FileExplorerActivity.J();
    h localh = a.e();
    if (!am.K(localh.getAbsolutePath()))
    {
      ag.a((Context)localObject, 2131427399, 1);
      return;
    }
    paramDialogInterface = new a(cp.b(b.a), localh, false);
    paramDialogInterface.setDescription(String.format(b.a.b.getString(2131428726), new Object[] { am.bL(localh.getAbsolutePath()) }));
    paramDialogInterface.setTaskDecisionListener(new m((Activity)localObject));
    localObject = new ix((Activity)localObject, ((FileExplorerActivity)localObject).getString(2131427460), paramDialogInterface);
    ((ix)localObject).show();
    paramDialogInterface.a((cg)localObject);
    paramDialogInterface.execute();
    a.k();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */