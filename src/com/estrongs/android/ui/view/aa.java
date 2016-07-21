package com.estrongs.android.ui.view;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

class aa
  extends Thread
{
  aa(z paramz, Bundle paramBundle) {}
  
  public void run()
  {
    boolean bool = CreateOAuthServiceProvider.a(b.a, a);
    Message localMessage = CreateOAuthServiceProvider.c(b.a).obtainMessage(CreateOAuthServiceProvider.f);
    obj = Boolean.valueOf(bool);
    CreateOAuthServiceProvider.c(b.a).sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */