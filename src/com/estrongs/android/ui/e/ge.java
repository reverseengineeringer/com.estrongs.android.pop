package com.estrongs.android.ui.e;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

class ge
  implements MenuItem.OnMenuItemClickListener
{
  ge(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    int j = paramMenuItem.size();
    Object localObject1 = paramMenuItem.iterator();
    int i = 0;
    Object localObject2;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = cr.a((h)((Iterator)localObject1).next());
      if ((localObject2 == null) || (((a)localObject2).getTaskStatus() != 2)) {
        break label225;
      }
      i += 1;
    }
    label225:
    for (;;)
    {
      break;
      localObject2 = cr.b(a).getString(2131231379, new Object[] { Integer.valueOf(j), Integer.valueOf(i) });
      localObject1 = k.a(cr.b(a)).inflate(2130903436, null);
      ((TextView)((View)localObject1).findViewById(2131624200)).setText((CharSequence)localObject2);
      localObject2 = (CheckBox)((View)localObject1).findViewById(2131625529);
      cv localcv = new cv(cr.b(a));
      localcv.a(2131231381);
      localcv.a((View)localObject1);
      localcv.b(2131231270, new gf(this, paramMenuItem, (CheckBox)localObject2));
      localcv.c(2131231265, new gg(this));
      localcv.b().show();
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */