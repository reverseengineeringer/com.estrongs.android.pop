package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.ApplicationInfo;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.fs.impl.b.d;
import java.util.ArrayList;
import java.util.List;

class q
  implements DialogInterface.OnClickListener
{
  q(c paramc, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    paramInt = 0;
    if (paramInt < a.size())
    {
      ApplicationInfo localApplicationInfo = ((d)a.get(paramInt)).h();
      if (localApplicationInfo == null) {}
      for (;;)
      {
        paramInt += 1;
        break;
        localArrayList1.add(packageName);
        localArrayList2.add(((d)a.get(paramInt)).getName());
      }
    }
    AppRunner.b(b.a, localArrayList1, localArrayList2);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */