package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import java.util.List;

class aj
  implements View.OnClickListener
{
  aj(DefaultWindowSetting paramDefaultWindowSetting) {}
  
  public void onClick(View paramView)
  {
    paramView = DefaultWindowSetting.a(a).a();
    int i = 0;
    while (i < paramView.size()) {
      if ((((String)paramView.get(i)).equals("#home_page#")) || (((String)paramView.get(i)).equals("#home#"))) {
        i += 1;
      } else {
        paramView.remove(i);
      }
    }
    ad.a(a).f(DefaultWindowSetting.a(a).a());
    DefaultWindowSetting.a(a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */