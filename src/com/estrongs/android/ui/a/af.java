package com.estrongs.android.ui.a;

import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;

class af
  implements View.OnClickListener
{
  af(aa paramaa) {}
  
  public void onClick(View paramView)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      ag.a(aa.a(a), 2131427932, 1);
      return;
    }
    aa.a(a).d("gallery://local/buckets/");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */