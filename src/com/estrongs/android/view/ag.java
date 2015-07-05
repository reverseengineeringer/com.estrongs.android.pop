package com.estrongs.android.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class ag
  implements View.OnClickListener
{
  ag(af paramaf, int paramInt) {}
  
  public void onClick(View paramView)
  {
    try
    {
      Object localObject = (FileExplorerActivity)b.a.ad;
      if (!((FileExplorerActivity)localObject).H())
      {
        ((FileExplorerActivity)localObject).d(2131428090);
        return;
      }
      paramView = (h)b.a.d.get(a);
      if (!ac.b(b.a))
      {
        b.a.d.remove(paramView);
        y.remove(paramView);
        if (b.a.d.size() != 0) {
          break label159;
        }
        b.a.e.b(b.a);
      }
      for (;;)
      {
        localObject = new ArrayList(1);
        ((List)localObject).add(paramView);
        b.a.a((List)localObject);
        return;
        label159:
        b.a.i.notifyDataSetChanged();
      }
      return;
    }
    catch (IndexOutOfBoundsException paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */