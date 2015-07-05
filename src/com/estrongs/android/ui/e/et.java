package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class et
  implements DialogInterface.OnClickListener
{
  et(er paramer, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ArrayList localArrayList = new ArrayList();
    paramDialogInterface = null;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if (am.bb(localh.getPath()))
      {
        cp.a(b.a).a(localh.getPath(), localh.getAbsolutePath());
      }
      else
      {
        localArrayList.add(localh.getAbsolutePath());
        if ((localh instanceof f))
        {
          Object localObject = paramDialogInterface;
          if (paramDialogInterface == null) {
            localObject = new ArrayList();
          }
          ((List)localObject).add((f)localh);
          paramDialogInterface = (DialogInterface)localObject;
        }
      }
    }
    if (localArrayList.size() > 0) {
      AppRunner.a(cp.a(b.a), localArrayList, paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */