package com.estrongs.android.pop.view;

import android.content.Context;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import java.util.List;

class ao
  extends ThumbContentViewSwitcher
{
  ao(FileExplorerActivity paramFileExplorerActivity, Context paramContext)
  {
    super(paramContext);
  }
  
  protected boolean a()
  {
    return (FileExplorerActivity.c(a) == null) || (FileExplorerActivity.c(a).size() <= 0);
  }
  
  public void setCurrentScreen(int paramInt)
  {
    a.ab();
    super.setCurrentScreen(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */