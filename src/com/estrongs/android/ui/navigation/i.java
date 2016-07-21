package com.estrongs.android.ui.navigation;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.DefaultWindowSetting;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.gd;
import com.estrongs.android.ui.view.ak;

class i
  implements View.OnClickListener
{
  i(h paramh) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131625396: 
      if (a.d().c() >= 12)
      {
        ak.a(h.c(a), 2131232454, 0);
        return;
      }
      new gd(h.c(a)).a(new j(this)).a();
      return;
    case 2131625397: 
      paramView = new Intent(h.c(a), DefaultWindowSetting.class);
      h.c(a).startActivity(paramView);
      return;
    }
    new cv(h.c(a)).a(2131230834).b(2131232272).c(2131231265, null).b(2131231270, new k(this)).c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */