package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ae;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

class hb
  implements DialogInterface.OnClickListener
{
  hb(ha paramha, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ad.a(b.a.b).u(true);
    paramDialogInterface = am.a().iterator();
    while (paramDialogInterface.hasNext())
    {
      String str = (String)paramDialogInterface.next();
      cp.a(b.a).j(str);
    }
    new ae(b.a.b, (h)a.get(0));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */