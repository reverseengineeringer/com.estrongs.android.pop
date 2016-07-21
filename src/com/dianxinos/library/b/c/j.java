package com.dianxinos.library.b.c;

class j
  implements Runnable
{
  private final Runnable a;
  
  public j(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      throw new NullPointerException("invalid argument: ori=null");
    }
    a = paramRunnable;
  }
  
  public void run()
  {
    try
    {
      a.run();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable = localThrowable;
      localThrowable.printStackTrace();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */