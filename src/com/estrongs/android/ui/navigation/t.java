package com.estrongs.android.ui.navigation;

import android.os.Handler;
import android.os.Message;
import android.view.View.OnClickListener;
import android.widget.ExpandableListAdapter;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.a;
import com.estrongs.android.ui.a.aa;
import com.estrongs.android.ui.view.NaviListView;

class t
  extends Handler
{
  t(s params, NaviListView paramNaviListView, FileExplorerActivity paramFileExplorerActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    int j = 0;
    super.handleMessage(paramMessage);
    int i = what;
    int k = arg1;
    int m = arg2;
    Object localObject;
    if (i == 104)
    {
      localObject = ((aa)a.getExpandableListAdapter()).a(k, m);
      if (localObject != null) {}
    }
    label169:
    label182:
    label209:
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            localObject = d;
            if (obj != null) {
              localObject = (View.OnClickListener)obj;
            }
          } while (localObject == null);
          c.a(new u(this, (View.OnClickListener)localObject));
          return;
          if (i == 103)
          {
            if (!a.isGroupExpanded(k))
            {
              i = 1;
              if (j >= a.getExpandableListAdapter().getGroupCount()) {
                break label209;
              }
              if (j != k) {
                break label182;
              }
              if (i == 0) {
                break label169;
              }
              a.expandGroup(k);
            }
            for (;;)
            {
              j += 1;
              break;
              i = 0;
              break;
              a.collapseGroup(k);
              continue;
              if ((a.isGroupExpanded(j)) && (i != 0)) {
                a.collapseGroup(j);
              }
            }
            a.a();
            return;
          }
          if (i != 102) {
            break;
          }
          paramMessage = ((aa)a.getExpandableListAdapter()).a(k, m);
        } while (paramMessage == null);
        c.a(new v(this, paramMessage));
        return;
      } while (i != 101);
      paramMessage = ((aa)a.getExpandableListAdapter()).a(k, m);
    } while (paramMessage == null);
    c.a(new w(this, paramMessage));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */