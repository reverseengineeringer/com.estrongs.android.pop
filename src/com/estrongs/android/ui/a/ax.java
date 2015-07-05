package com.estrongs.android.ui.a;

import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.a;

class ax
  implements View.OnClickListener
{
  ax(aa paramaa) {}
  
  public void onClick(View paramView)
  {
    if (!Environment.getExternalStorageState().equals("mounted")) {
      ag.a(aa.a(a), 2131427932, 1);
    }
    do
    {
      return;
      aa.a(a).d("du://" + b.b());
    } while (aa.d(a) == null);
    aa.d(a).c("SDCardAnalyst_Show", "SDCardAnalyst_Show");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */