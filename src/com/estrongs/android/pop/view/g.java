package com.estrongs.android.pop.view;

class g
  implements Runnable
{
  g(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    Thread localThread = new Thread(new h(this));
    FileExplorerActivity.H(a);
    FileExplorerActivity.a(a, localThread);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */