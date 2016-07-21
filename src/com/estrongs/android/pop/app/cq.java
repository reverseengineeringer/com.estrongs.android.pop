package com.estrongs.android.pop.app;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.adapter.y;
import com.estrongs.android.view.a.a;

class cq
  implements CompoundButton.OnCheckedChangeListener
{
  cq(GestureManageActivity paramGestureManageActivity) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean) {
      GestureManageActivity.a(a).setText(2131231536);
    }
    for (;;)
    {
      GestureManageActivity.b(a).d(paramBoolean);
      GestureManageActivity.c(a).d(paramBoolean);
      GestureManageActivity.d(a).a(paramBoolean);
      GestureManageActivity.e(a).l(paramBoolean);
      com.estrongs.android.ui.guesture.b.b = paramBoolean;
      a.invalidateOptionsMenu();
      return;
      GestureManageActivity.a(a).setText(2131231535);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */