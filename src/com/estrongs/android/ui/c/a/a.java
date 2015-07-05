package com.estrongs.android.ui.c.a;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

public abstract class a
{
  protected FileExplorerActivity a;
  protected View b;
  
  public a(FileExplorerActivity paramFileExplorerActivity)
  {
    a = paramFileExplorerActivity;
  }
  
  public void a(View paramView)
  {
    b = paramView;
    b(b);
  }
  
  protected abstract void b(View paramView);
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */