package com.estrongs.android.pop.view;

class aj
  implements Runnable
{
  aj(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    Thread localThread = new Thread(new ak(this));
    FileExplorerActivity.Q(a);
    FileExplorerActivity.a(a, localThread);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */