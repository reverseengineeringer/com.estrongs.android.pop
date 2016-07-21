package com.estrongs.android.view;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;

class ef
  implements View.OnClickListener
{
  ef(ee paramee, int paramInt, ci paramci) {}
  
  public void onClick(View paramView)
  {
    if (c.a.q) {
      if (!((h)c.a.e(a) instanceof CreateSiteFileObject)) {}
    }
    do
    {
      return;
      paramView = b.l;
      if (!paramView.isChecked()) {}
      for (boolean bool = true;; bool = false)
      {
        paramView.setChecked(bool);
        c.a.c(a);
        return;
      }
      Object localObject = (h)c.a.e(a);
      if ((ap.aE(((h)localObject).getPath())) && (!u.a().b()))
      {
        paramView = new eg(this, (h)localObject);
        ei localei = new ei(this, (h)localObject);
        localObject = new ek(this, (h)localObject);
        if (ad.a(FexApplication.a()).a(0L) != null)
        {
          new cv(c.a.ag).a(2131231137).b(2131232362).d(2131230863, paramView).e(2131232267, localei).f(2131232468, (DialogInterface.OnClickListener)localObject).b().show();
          return;
        }
        new cv(c.a.ag).a(2131231137).b(2131232362).c(2131230863, paramView).b(2131232267, localei).b().show();
        return;
      }
    } while (c.a.j == null);
    c.a.j.a(c.a.h, b.itemView, a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */