package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import java.util.ArrayList;

class g
  implements View.OnClickListener
{
  g(f paramf, String paramString) {}
  
  public void onClick(View paramView)
  {
    ad.c(b.a, a);
    AppCheckUpdateList.a(b.a).a().remove(a);
    AppCheckUpdateList.a(b.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */