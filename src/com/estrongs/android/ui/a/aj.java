package com.estrongs.android.ui.a;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.a;

class aj
  implements View.OnClickListener
{
  aj(aa paramaa) {}
  
  public void onClick(View paramView)
  {
    aa.a(a).d("app://user");
    if (aa.d(a) != null) {
      aa.d(a).c("AppManager_Show", "AppManager_Show");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */