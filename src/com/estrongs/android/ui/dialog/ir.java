package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnGroupClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.g;

class ir
  implements ExpandableListView.OnGroupClickListener
{
  ir(ip paramip) {}
  
  public boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      paramExpandableListView = new is(this, ad.a(ip.a(a)).p());
      if (!z.n) {
        break label140;
      }
    }
    label140:
    for (paramInt = -2;; paramInt = -1)
    {
      paramExpandableListView = new g((Activity)ip.a(a), b.b(), paramExpandableListView, paramInt);
      paramExpandableListView.a(false);
      paramExpandableListView.b(true);
      paramExpandableListView.c(ip.a(a).getString(2131427340), (DialogInterface.OnClickListener)null);
      paramExpandableListView.a(paramInt);
      paramExpandableListView.a(ip.a(a).getString(2131428131));
      paramExpandableListView.b(ip.a(a).getString(2131427339), new it(this, paramExpandableListView));
      paramExpandableListView.j();
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */