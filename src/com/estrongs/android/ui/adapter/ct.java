package com.estrongs.android.ui.adapter;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.GestureManageActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ct
  implements View.OnClickListener
{
  ct(ListAdapter_NewNavi paramListAdapter_NewNavi, int paramInt) {}
  
  public void onClick(View paramView)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    Message localMessage = new Message();
    what = 105;
    if (a == b.a(ListAdapter_NewNavi.GroupType.RecycleBin))
    {
      ListAdapter_NewNavi.c(ListAdapter_NewNavi.a(b));
      ListAdapter_NewNavi.d(b).sendMessage(localMessage);
    }
    do
    {
      do
      {
        return;
        if (a == b.a(ListAdapter_NewNavi.GroupType.AppAssociate))
        {
          ListAdapter_NewNavi.a(b).d("appfolder://");
          ListAdapter_NewNavi.d(b).sendMessage(localMessage);
          return;
        }
        if (a == b.a(ListAdapter_NewNavi.GroupType.RootExplorer))
        {
          ListAdapter_NewNavi.b(ListAdapter_NewNavi.a(b));
          ListAdapter_NewNavi.d(b).sendMessage(localMessage);
          return;
        }
        if (a == b.a(ListAdapter_NewNavi.GroupType.Gesture))
        {
          paramView = new Intent(ListAdapter_NewNavi.a(b), GestureManageActivity.class);
          ListAdapter_NewNavi.a(b).startActivityForResult(paramView, 4126);
          ListAdapter_NewNavi.d(b).sendMessage(localMessage);
          return;
        }
        if (a != b.a(ListAdapter_NewNavi.GroupType.Hidden)) {
          break;
        }
        paramView = (SwitchCompat)paramView.findViewById(2131624348);
      } while (paramView == null);
      if (!paramView.isChecked()) {}
      for (;;)
      {
        paramView.setChecked(bool1);
        return;
        bool1 = false;
      }
      paramView = (SwitchCompat)paramView.findViewById(2131624348);
    } while (paramView == null);
    if (!paramView.isChecked()) {}
    for (bool1 = bool2;; bool1 = false)
    {
      paramView.setChecked(bool1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */