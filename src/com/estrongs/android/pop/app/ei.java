package com.estrongs.android.pop.app;

import com.estrongs.android.pop.view.a;

class ei
  implements gp
{
  ei(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void a()
  {
    if ((a.a.startsWith("Spreadtrum")) || (a.a.equalsIgnoreCase("Huawei")))
    {
      PopAudioPlayer.b(a);
      PopAudioPlayer.a(a, null);
    }
  }
  
  public void a(int paramInt)
  {
    PopAudioPlayer.a(a, 3, paramInt);
  }
  
  public void b(int paramInt)
  {
    PopAudioPlayer.a(a, 0, paramInt);
  }
  
  public void c(int paramInt)
  {
    PopAudioPlayer.a(a, 4, paramInt);
  }
  
  public void d(int paramInt)
  {
    PopAudioPlayer.a(a, 2, paramInt);
  }
  
  public void e(int paramInt)
  {
    PopAudioPlayer.a(a, 1, paramInt);
  }
  
  public void f(int paramInt)
  {
    PopAudioPlayer.a(a, 0, paramInt);
  }
  
  public void g(int paramInt)
  {
    try
    {
      Thread.sleep(1000L);
      if ((PopAudioPlayer.a(a).d()) || (PopAudioPlayer.a(a).e())) {}
      int i;
      do
      {
        return;
        i = PopAudioPlayer.a(a).i();
        if (i == -1)
        {
          PopAudioPlayer.a(a).q();
          return;
        }
      } while (i == paramInt);
      PopAudioPlayer.a(a, i);
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */