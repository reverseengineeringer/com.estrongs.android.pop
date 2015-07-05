package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.ApplicationInfo;
import com.estrongs.a.p;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.m;
import com.estrongs.fs.n;
import java.util.ArrayList;
import java.util.List;

class o
  implements DialogInterface.OnClickListener
{
  o(c paramc, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int j = 0;
    paramDialogInterface.dismiss();
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    ArrayList localArrayList4 = new ArrayList();
    paramInt = 0;
    int i;
    ApplicationInfo localApplicationInfo;
    for (;;)
    {
      i = j;
      if (paramInt >= a.size()) {
        break label404;
      }
      localApplicationInfo = ((com.estrongs.fs.impl.b.c)a.get(paramInt)).c();
      if (localApplicationInfo != null) {
        break;
      }
      paramInt += 1;
    }
    String str = ((com.estrongs.fs.impl.b.c)a.get(paramInt)).getAbsolutePath();
    Object localObject2;
    Object localObject1;
    if (c.a(b, str))
    {
      localObject2 = (com.estrongs.fs.impl.b.c)a.get(paramInt);
      if (c.a(b, localArrayList4, str))
      {
        localObject1 = new ab(d.a(b.a), (h)localObject2, false);
        ((ab)localObject1).execute(false);
        localObject1 = ((ab)localObject1).getTaskResult();
      }
    }
    for (;;)
    {
      label187:
      boolean bool;
      if ((localObject1 != null) && (a == 0) && (str.endsWith(".apk")) && (str.length() > 4))
      {
        bool = true;
        localObject1 = str.substring(0, str.length() - 4) + ".odex";
        new ab(d.a(b.a), new n((String)localObject1, m.b), false).execute(false);
      }
      for (;;)
      {
        localArrayList3.add(Boolean.valueOf(bool));
        localArrayList1.add(packageName);
        localArrayList2.add(((com.estrongs.fs.impl.b.c)a.get(paramInt)).getName());
        break;
        localObject1 = l.b(str, "rw");
        if (localObject1 == null) {
          break label466;
        }
        localObject2 = new ab(d.a(b.a), (h)localObject2, false);
        ((ab)localObject2).execute(false);
        localArrayList4.add(localObject1);
        localObject1 = ((ab)localObject2).getTaskResult();
        break label187;
        label404:
        while (i < localArrayList4.size())
        {
          l.b((String[])localArrayList4.get(i));
          i += 1;
        }
        AppRunner.a(b.a, localArrayList1, localArrayList2, localArrayList3);
        paramDialogInterface.dismiss();
        return;
        bool = false;
      }
      label466:
      localObject1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */