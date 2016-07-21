package com.estrongs.android.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class ae
  implements View.OnClickListener
{
  ae(y paramy) {}
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131625399)
    {
      y.f();
      a.b();
      if ((y.a(a) instanceof FileExplorerActivity))
      {
        paramView = (FileExplorerActivity)y.a(a);
        if (paramView.j()) {
          paramView.i();
        }
      }
    }
    while ((paramView.getId() != 2131625400) || (y.h().size() <= 0)) {
      return;
    }
    paramView = (FileExplorerActivity)y.a(a);
    if (!paramView.V())
    {
      paramView.d(2131231914);
      return;
    }
    Object localObject = (LinkedList)y.h().clone();
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    localObject = ((LinkedList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      af localaf = (af)((Iterator)localObject).next();
      localArrayList1.add(localaf.d());
      localArrayList2.add(Boolean.valueOf(localaf.f()));
    }
    a.a(localArrayList1, localArrayList2);
    paramView.B();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */