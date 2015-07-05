package com.estrongs.android.ui.e;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

class fx
  implements MenuItem.OnMenuItemClickListener
{
  fx(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    int j = paramMenuItem.size();
    Object localObject1 = paramMenuItem.iterator();
    int i = 0;
    Object localObject2;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = cp.a((h)((Iterator)localObject1).next());
      if ((localObject2 == null) || (((a)localObject2).getTaskStatus() != 2)) {
        break label225;
      }
      i += 1;
    }
    label225:
    for (;;)
    {
      break;
      localObject2 = cp.a(a).getString(2131428240, new Object[] { Integer.valueOf(j), Integer.valueOf(i) });
      localObject1 = g.a(cp.a(a)).inflate(2130903256, null);
      ((TextView)((View)localObject1).findViewById(2131361822)).setText((CharSequence)localObject2);
      localObject2 = (CheckBox)((View)localObject1).findViewById(2131362742);
      ct localct = new ct(cp.a(a));
      localct.a(2131428242);
      localct.a((View)localObject1);
      localct.b(2131427339, new fy(this, paramMenuItem, (CheckBox)localObject2));
      localct.c(2131427340, new fz(this));
      localct.b().show();
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */