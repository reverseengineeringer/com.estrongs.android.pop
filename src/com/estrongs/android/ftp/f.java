package com.estrongs.android.ftp;

import android.os.Handler;
import android.os.Message;

class f
  implements d
{
  f(ESFtpService paramESFtpService) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    Message localMessage = a.a.obtainMessage(1, paramInt1, paramInt2);
    a.a.sendMessage(localMessage);
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    Message localMessage = a.a.obtainMessage(2, (int)paramLong1, (int)paramLong2);
    a.a.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */