package com.estrongs.android.scanner.service;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.scanner.l;

class j
  extends Handler
{
  j(FileScannerService paramFileScannerService) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      super.handleMessage(paramMessage);
      return;
    case 160325: 
      paramMessage = paramMessage.getData();
      int i = paramMessage.getInt("EVENT_ID");
      int j = paramMessage.getInt("PATH_TYPE");
      paramMessage = paramMessage.getString("PATH");
      l.a().a(i, paramMessage, j);
      return;
    }
    l.a().f();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */