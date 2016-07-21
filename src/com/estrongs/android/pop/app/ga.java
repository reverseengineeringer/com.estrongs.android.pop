package com.estrongs.android.pop.app;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.estrongs.android.pop.view.a;

class ga
  implements ServiceConnection
{
  ga(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = ((u)paramIBinder).a();
    if (paramComponentName == null) {}
    do
    {
      return;
      PopAudioPlayer.a(a, new gr(paramComponentName));
      PopAudioPlayer.y(a);
      if ((PopAudioPlayer.u(a)) && ((a.a.startsWith("Spreadtrum")) || (a.a.equalsIgnoreCase("Huawei"))))
      {
        PopAudioPlayer.z(a).a(null);
        PopAudioPlayer.z(a).n();
        PopAudioPlayer.z(a).q();
        PopAudioPlayer.z(a).z();
        PopAudioPlayer.b(a);
        return;
      }
      PopAudioPlayer.z(a).a(PopAudioPlayer.A(a));
      PopAudioPlayer.a(a, null);
    } while (!a.d());
    PopAudioPlayer.a(a, PopAudioPlayer.z(a));
    PopAudioPlayer.B(a);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    PopAudioPlayer.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */