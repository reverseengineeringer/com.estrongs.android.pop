package com.estrongs.android.pop.view;

import android.content.Context;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import java.util.List;

class bt
  extends ThumbContentViewSwitcher
{
  bt(FileExplorerActivity paramFileExplorerActivity, Context paramContext)
  {
    super(paramContext);
  }
  
  public void a(int paramInt)
  {
    if (a.q) {
      a.f(false);
    }
    super.a(paramInt);
  }
  
  protected boolean a()
  {
    return (FileExplorerActivity.d(a) == null) || (FileExplorerActivity.d(a).size() <= 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */