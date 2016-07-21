package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class fb
  implements DialogInterface.OnClickListener
{
  fb(ez paramez, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ArrayList localArrayList = new ArrayList();
    paramDialogInterface = null;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if (ap.bm(localh.getPath()))
      {
        cr.b(b.a).a(localh.getPath(), localh.getAbsolutePath());
      }
      else
      {
        localArrayList.add(localh.getAbsolutePath());
        if ((localh instanceof g))
        {
          Object localObject = paramDialogInterface;
          if (paramDialogInterface == null) {
            localObject = new ArrayList();
          }
          ((List)localObject).add((g)localh);
          paramDialogInterface = (DialogInterface)localObject;
        }
      }
    }
    if (localArrayList.size() > 0) {
      AppRunner.a(cr.b(b.a), localArrayList, paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */