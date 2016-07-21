package com.estrongs.android.view.music;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.estrongs.android.pop.app.gq;
import com.estrongs.android.pop.app.gr;
import com.estrongs.android.pop.app.u;
import com.estrongs.android.pop.view.a;

class j
  implements ServiceConnection
{
  j(f paramf) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = ((u)paramIBinder).a();
    if (paramComponentName == null) {
      return;
    }
    f.a(a, new gr(paramComponentName));
    f.c(a).a(false);
    f.a(a, f.c(a).A());
    if ((f.b(a)) && ((a.a.startsWith("Spreadtrum")) || (a.a.equalsIgnoreCase("Huawei"))))
    {
      f.c(a).a(null);
      f.c(a).n();
      f.c(a).q();
      f.c(a).z();
      f.d(a);
      return;
    }
    f.c(a).a(f.e(a));
    f.a(a, null);
    f.f(a);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    f.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */