package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ag;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

class hi
  implements DialogInterface.OnClickListener
{
  hi(hh paramhh, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ad.a(cr.b(b.a)).t(true);
    paramDialogInterface = ap.a().iterator();
    while (paramDialogInterface.hasNext())
    {
      String str = (String)paramDialogInterface.next();
      cr.b(b.a).o(str);
    }
    new ag(cr.b(b.a), (h)a.get(0));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */