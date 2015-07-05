package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import java.util.ArrayList;

class c
  implements View.OnClickListener
{
  c(AppCheckUpdateList paramAppCheckUpdateList) {}
  
  public void onClick(View paramView)
  {
    ad.d(a);
    AppCheckUpdateList.a(a).a().clear();
    AppCheckUpdateList.a(a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */