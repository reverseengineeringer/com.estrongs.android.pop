package com.estrongs.android.widget;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v7.widget.GridLayoutManager;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.ck;
import com.estrongs.android.view.dw;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ak
  extends eb
{
  ak(aj paramaj, Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  public void a(int paramInt)
  {
    int i = 1;
    p = paramInt;
    if (ag.getResources().getConfiguration().orientation == 1) {}
    for (paramInt = i; paramInt != 0; paramInt = 0)
    {
      g.setSpanCount(3);
      return;
    }
    g.setSpanCount(4);
  }
  
  public void a_(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if ((localh instanceof CreateSiteFileObject)) {
        localArrayList.add(localh);
      } else if ((ap.aV(localh.getPath())) && (ap.aA(localh.getPath()))) {
        localArrayList.add(localh);
      } else if ((ap.aE(localh.getPath())) && (!u.a().b())) {
        localArrayList.add(localh);
      }
    }
    paramList.removeAll(localArrayList);
    if (t != null) {
      i.a(t);
    }
    i.a(paramList);
  }
  
  protected int x()
  {
    return 2130903275;
  }
  
  protected int y()
  {
    return 2130903274;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */