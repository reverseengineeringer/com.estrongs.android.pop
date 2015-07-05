package com.baidu.sapi2.share;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.utils.L;
import java.util.Arrays;

class b$b$a$a$a
  implements Runnable
{
  b$b$a$a$a(b.b.a.a parama, IBinder paramIBinder, ServiceConnection paramServiceConnection) {}
  
  public void run()
  {
    try
    {
      Parcel localParcel1 = b.a(new ShareModel(ShareEvent.INVALIDATE, null, Arrays.asList(new SapiAccount[] { c.b.a.b })));
      Parcel localParcel2 = Parcel.obtain();
      if ((!a.transact(0, localParcel1, localParcel2, 0)) && (c.a != null)) {
        c.b.a(c.a);
      }
      econtext.unbindService(b);
      return;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.b.b.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */