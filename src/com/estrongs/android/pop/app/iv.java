package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.ks;
import com.estrongs.android.util.am;
import java.util.ArrayList;
import java.util.List;

class iv
  implements View.OnClickListener
{
  iv(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onClick(View paramView)
  {
    paramView = am.d(PopVideoPlayer.x(a));
    if (paramView != null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(am.bB(paramView));
      paramView = new ks(a, "video", localArrayList);
      paramView.a(new iw(this));
      paramView.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */