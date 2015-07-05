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

class da
  implements ExpandableListView.OnGroupClickListener
{
  da(cy paramcy) {}
  
  public boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      paramExpandableListView = new db(this, ad.a(cy.a(a)).p());
      if (!z.n) {
        break label140;
      }
    }
    label140:
    for (paramInt = -2;; paramInt = -1)
    {
      paramExpandableListView = new g((Activity)cy.a(a), b.b(), paramExpandableListView, paramInt);
      paramExpandableListView.a(false);
      paramExpandableListView.b(true);
      paramExpandableListView.c(cy.a(a).getString(2131427340), (DialogInterface.OnClickListener)null);
      paramExpandableListView.a(paramInt);
      paramExpandableListView.a(cy.a(a).getString(2131427715));
      paramExpandableListView.b(cy.a(a).getString(2131427339), new dc(this, paramExpandableListView));
      paramExpandableListView.j();
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */