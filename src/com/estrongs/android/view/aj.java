package com.estrongs.android.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class aj
  implements View.OnClickListener
{
  aj(ai paramai, int paramInt) {}
  
  public void onClick(View paramView)
  {
    try
    {
      Object localObject = (FileExplorerActivity)b.a.ag;
      if (!((FileExplorerActivity)localObject).V())
      {
        ((FileExplorerActivity)localObject).d(2131231914);
        return;
      }
      paramView = (h)b.a.d.get(a);
      if (!af.b(b.a))
      {
        b.a.d.remove(paramView);
        x.remove(paramView);
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
        b.a.h.notifyDataSetChanged();
      }
      return;
    }
    catch (IndexOutOfBoundsException paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */