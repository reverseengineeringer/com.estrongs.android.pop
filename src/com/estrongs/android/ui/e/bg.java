package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.dx;
import com.estrongs.android.widget.ad;
import com.estrongs.fs.b.a;
import com.estrongs.fs.h;
import java.util.ArrayList;

class bg
  implements dx
{
  bg(bf parambf, ad paramad) {}
  
  public void a(h paramh)
  {
    Object localObject = FileExplorerActivity.X();
    h localh = ((FileExplorerActivity)localObject).Q();
    if ((ap.O(paramh.getAbsolutePath())) && (ap.c(paramh.getAbsolutePath(), localh.getAbsolutePath())))
    {
      ak.a((Context)localObject, 2131231719, 1);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramh);
    paramh = new a(localArrayList, localh, false);
    paramh.setDescription(String.format(m.a(b.a).getString(2131230907), new Object[] { ap.cc(localh.getAbsolutePath()) }));
    paramh.setTaskDecisionListener(new com.estrongs.android.pop.m((Activity)localObject));
    localObject = new jh((Activity)localObject, ((FileExplorerActivity)localObject).getString(2131232173), paramh);
    ((jh)localObject).show();
    paramh.a((ci)localObject);
    paramh.execute();
    a.k();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */