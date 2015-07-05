package com.estrongs.android.widget;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.android.view.cb;
import com.estrongs.android.view.cd;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class aj
  extends cd
{
  aj(ai paramai, Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  public void a(int paramInt)
  {
    int i = 1;
    k = paramInt;
    if (ad.getResources().getConfiguration().orientation == 1) {}
    for (paramInt = i; paramInt != 0; paramInt = 0)
    {
      g.setNumColumns(3);
      return;
    }
    g.setNumColumns(4);
  }
  
  protected int an()
  {
    return 2130903164;
  }
  
  protected int ao()
  {
    return 2130903163;
  }
  
  public void b(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if ((localh instanceof CreateSiteFileObject)) {
        localArrayList.add(localh);
      } else if ((am.aL(localh.getPath())) && (am.aq(localh.getPath()))) {
        localArrayList.add(localh);
      } else if ((am.au(localh.getPath())) && (!r.a().b())) {
        localArrayList.add(localh);
      }
    }
    paramList.removeAll(localArrayList);
    if (o != null) {
      f.a(o);
    }
    f.a(paramList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */