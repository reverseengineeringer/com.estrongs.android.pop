package com.estrongs.android.ui.drag;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.widget.LinearLayout;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class p
{
  private DragLayer a;
  private List<DragWindowView> b;
  private d c;
  private boolean d;
  private FileExplorerActivity e;
  
  public p(FileExplorerActivity paramFileExplorerActivity, DragLayer paramDragLayer, d paramd)
  {
    a = paramDragLayer;
    c = paramd;
    b = new ArrayList();
    e = paramFileExplorerActivity;
    if (e.getResources().getConfiguration().orientation == 1) {}
    for (;;)
    {
      d = bool;
      try
      {
        c();
        return;
      }
      catch (Exception paramFileExplorerActivity)
      {
        paramFileExplorerActivity.printStackTrace();
      }
      bool = false;
    }
  }
  
  private void a(DragWindowView paramDragWindowView, int paramInt)
  {
    if (paramDragWindowView == null) {
      return;
    }
    b.add(paramDragWindowView);
    paramDragWindowView.setPosition(paramInt);
  }
  
  private void c()
  {
    int j = 0;
    int i = 0;
    if (d)
    {
      localObject = new LinearLayout[4];
      localObject[0] = ((LinearLayout)a.findViewById(2131624643));
      localObject[1] = ((LinearLayout)a.findViewById(2131624647));
      localObject[2] = ((LinearLayout)a.findViewById(2131624648));
      localObject[3] = ((LinearLayout)a.findViewById(2131624752));
      while (i < localObject.length)
      {
        a((DragWindowView)localObject[i].findViewById(2131624644), i * 3 + 0);
        a((DragWindowView)localObject[i].findViewById(2131624645), i * 3 + 1);
        a((DragWindowView)localObject[i].findViewById(2131624646), i * 3 + 2);
        i += 1;
      }
    }
    Object localObject = new LinearLayout[2];
    localObject[0] = ((LinearLayout)a.findViewById(2131624643));
    localObject[1] = ((LinearLayout)a.findViewById(2131624647));
    i = j;
    while (i < localObject.length)
    {
      a((DragWindowView)localObject[i].findViewById(2131624644), i * 6 + 0);
      a((DragWindowView)localObject[i].findViewById(2131624645), i * 6 + 1);
      a((DragWindowView)localObject[i].findViewById(2131624646), i * 6 + 2);
      a((DragWindowView)localObject[i].findViewById(2131624653), i * 6 + 3);
      a((DragWindowView)localObject[i].findViewById(2131624753), i * 6 + 4);
      a((DragWindowView)localObject[i].findViewById(2131624754), i * 6 + 5);
      i += 1;
    }
    localObject = b.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((DragWindowView)((Iterator)localObject).next()).setActivity(e);
    }
  }
  
  public void a()
  {
    int k = b().c();
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= k) {
        break;
      }
      DragWindowView localDragWindowView = (DragWindowView)b.get(i);
      localDragWindowView.setVisibility(0);
      localDragWindowView.a();
      c.a(localDragWindowView);
      i += 1;
    }
    while (j < b.size())
    {
      ((DragWindowView)b.get(j)).setVisibility(4);
      j += 1;
    }
  }
  
  public i b()
  {
    return e.au();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */