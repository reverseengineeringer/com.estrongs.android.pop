package com.estrongs.android.pop.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.f.c;

class cj
  implements View.OnClickListener
{
  cj(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = c.a(paramView, a.getString(2131427415), 2, a.t(), false);
    paramView.a(new ck(this, paramView));
    paramView.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */