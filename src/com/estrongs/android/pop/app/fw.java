package com.estrongs.android.pop.app;

class fw
  implements Runnable
{
  fw(fv paramfv) {}
  
  public void run()
  {
    new Thread(new fx(this)).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */