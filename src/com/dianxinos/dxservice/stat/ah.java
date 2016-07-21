package com.dianxinos.dxservice.stat;

import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.util.Log;
import com.dianxinos.dxservice.a.c;

class ah
  extends PhoneStateListener
{
  ah(af paramaf) {}
  
  public void onServiceStateChanged(ServiceState paramServiceState)
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "operator-alpha-long: " + paramServiceState.getOperatorAlphaLong() + ", operator-alpha-short: " + paramServiceState.getOperatorAlphaShort() + ", operator-numeric: " + paramServiceState.getOperatorNumeric() + ".");
    }
    af.e(a);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */