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
import com.estrongs.android.widget.f;

class ja
  implements ExpandableListView.OnGroupClickListener
{
  ja(iy paramiy) {}
  
  public boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      paramExpandableListView = new jb(this, ad.a(iy.a(a)).q());
      if (!z.n) {
        break label140;
      }
    }
    label140:
    for (paramInt = -2;; paramInt = -1)
    {
      paramExpandableListView = new f((Activity)iy.a(a), b.b(), paramExpandableListView, paramInt);
      paramExpandableListView.a(false);
      paramExpandableListView.b(true);
      paramExpandableListView.c(iy.a(a).getString(2131231265), (DialogInterface.OnClickListener)null);
      paramExpandableListView.a(paramInt);
      paramExpandableListView.a(iy.a(a).getString(2131231887));
      paramExpandableListView.b(iy.a(a).getString(2131231270), new jc(this, paramExpandableListView));
      paramExpandableListView.j();
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */