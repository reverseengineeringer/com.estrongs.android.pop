package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.ad;
import com.estrongs.fs.b.a;
import com.estrongs.fs.h;

class hw
  implements DialogInterface.OnClickListener
{
  hw(hv paramhv, ad paramad) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = FileExplorerActivity.X();
    h localh = a.e();
    if (!ap.M(localh.getAbsolutePath()))
    {
      ak.a((Context)localObject, 2131231719, 1);
      return;
    }
    paramDialogInterface = new a(cr.a(b.a), localh, false);
    paramDialogInterface.setDescription(String.format(((FileExplorerActivity)localObject).getString(2131230907), new Object[] { ap.cc(localh.getAbsolutePath()) }));
    paramDialogInterface.setTaskDecisionListener(new m((Activity)localObject));
    localObject = new jh((Activity)localObject, ((FileExplorerActivity)localObject).getString(2131232173), paramDialogInterface);
    ((jh)localObject).show();
    paramDialogInterface.a((ci)localObject);
    paramDialogInterface.execute();
    a.k();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */