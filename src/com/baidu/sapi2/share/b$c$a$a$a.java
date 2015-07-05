package com.baidu.sapi2.share;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.utils.L;

class b$c$a$a$a
  implements Runnable
{
  b$c$a$a$a(b.c.a.a parama, IBinder paramIBinder, ServiceConnection paramServiceConnection) {}
  
  public void run()
  {
    try
    {
      Parcel localParcel1 = b.a(new ShareModel(ShareEvent.SYNC_REQ));
      Parcel localParcel2 = Parcel.obtain();
      if (!a.transact(0, localParcel1, localParcel2, 0)) {
        if (c.a != null) {
          c.b.a(c.a);
        }
      }
      for (;;)
      {
        econtext.unbindService(b);
        return;
        b.a(localParcel2);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.b.c.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */