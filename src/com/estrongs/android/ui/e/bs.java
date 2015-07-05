package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.view.cc;
import com.estrongs.android.widget.ae;
import com.estrongs.fs.b.a;
import com.estrongs.fs.h;
import java.util.ArrayList;

class bs
  implements cc
{
  bs(br parambr, ae paramae) {}
  
  public void a(h paramh)
  {
    Object localObject = FileExplorerActivity.J();
    h localh = ((FileExplorerActivity)localObject).B();
    if ((am.M(paramh.getAbsolutePath())) && (am.c(paramh.getAbsolutePath(), localh.getAbsolutePath())))
    {
      ag.a((Context)localObject, 2131427399, 1);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramh);
    paramh = new a(localArrayList, localh, false);
    paramh.setDescription(String.format(b.a.b.getString(2131428726), new Object[] { am.bL(localh.getAbsolutePath()) }));
    paramh.setTaskDecisionListener(new m((Activity)localObject));
    localObject = new ix((Activity)localObject, ((FileExplorerActivity)localObject).getString(2131427460), paramh);
    ((ix)localObject).show();
    paramh.a((cg)localObject);
    paramh.execute();
    a.k();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */