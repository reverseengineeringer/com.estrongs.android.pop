package com.estrongs.android.view;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.a;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.e;
import com.estrongs.fs.h;

class ce
  implements AdapterView.OnItemClickListener
{
  ce(cd paramcd) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (a.l) {
      if (!((h)a.e(paramInt) instanceof CreateSiteFileObject)) {}
    }
    do
    {
      return;
      paramAdapterView = getTagg;
      if (!paramAdapterView.isChecked()) {}
      for (boolean bool = true;; bool = false)
      {
        paramAdapterView.setChecked(bool);
        a.c(paramInt);
        return;
      }
      Object localObject = (h)a.e(paramInt);
      if ((am.au(((h)localObject).getPath())) && (!r.a().b()))
      {
        paramAdapterView = new cf(this, (h)localObject);
        paramView = new ch(this, (h)localObject);
        localObject = new cj(this, (h)localObject);
        if (ad.a(FexApplication.a()).a(0L) != null) {
          new ct(a.ad).a(2131428551).b(2131428620).d(2131428201, paramAdapterView).e(2131427901, paramView).f(2131428554, (DialogInterface.OnClickListener)localObject).b().show();
        }
        for (;;)
        {
          paramAdapterView = a.a();
          if (paramAdapterView == null) {
            break;
          }
          paramAdapterView.e("PCS_Home_Page_UV", "PCS_Home_Page_UV");
          return;
          new ct(a.ad).a(2131428551).b(2131428620).c(2131428201, paramAdapterView).b(2131427901, paramView).b().show();
        }
      }
    } while (a.h == null);
    a.h.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */