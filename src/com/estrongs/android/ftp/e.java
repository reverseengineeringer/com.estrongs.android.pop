package com.estrongs.android.ftp;

import android.os.Handler;
import android.os.Message;
import com.estrongs.fs.util.j;
import java.net.InetAddress;

class e
  extends Handler
{
  e(ESFtpService paramESFtpService) {}
  
  public void handleMessage(Message paramMessage)
  {
    int i = 1;
    label51:
    try
    {
      int j = what;
      switch (j)
      {
      default: 
        return;
      }
    }
    finally {}
    if ((arg1 > 0) && (arg2 > 0)) {
      i = 3;
    }
    for (;;)
    {
      ESFtpService.a(a, i);
      Object localObject = null;
      paramMessage = (Message)localObject;
      if (i == 0)
      {
        a locala = a.e();
        paramMessage = (Message)localObject;
        if (locala != null)
        {
          localObject = com.estrongs.android.pop.esclasses.e.b(2131427645);
          paramMessage = (Message)localObject;
          if (localObject == null) {
            paramMessage = (String)a.getText(2131427645);
          }
          paramMessage = paramMessage + "ftp:/" + locala.g().toString() + ":" + locala.h() + "/";
        }
      }
      localObject = a;
      if (i == 0) {
        if (paramMessage == null) {}
      }
      for (;;)
      {
        ((ESFtpService)localObject).a(i, paramMessage);
        ESFtpService.a(a, i);
        break;
        if (arg1 > 0) {
          break label51;
        }
        if (arg2 <= 0) {
          break label539;
        }
        i = 2;
        break label51;
        paramMessage = ESFtpService.b(a, 2131427657) + "...";
        continue;
        paramMessage = ESFtpService.b(a, 2131427658) + "...";
      }
      localObject = j.c(arg1) + "/s";
      paramMessage = j.c(arg2) + "/s";
      if (ESFtpService.a(a) == 1)
      {
        a.a(ESFtpService.a(a), ESFtpService.b(a, 2131427458) + ": " + (String)localObject);
        break;
      }
      if (ESFtpService.a(a) == 2)
      {
        a.a(ESFtpService.a(a), ESFtpService.b(a, 2131427659) + ": " + paramMessage);
        break;
      }
      if (ESFtpService.a(a) != 3) {
        break;
      }
      a.a(ESFtpService.a(a), ESFtpService.b(a, 2131427661) + ": " + (String)localObject + ", " + ESFtpService.b(a, 2131427660) + ": " + paramMessage);
      break;
      label539:
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */