package com.estrongs.android.pop.bt;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import java.io.PrintStream;

public class OBEXFtpServerService
  extends Service
{
  private e a;
  private f b;
  
  public void a()
  {
    try
    {
      if ((a != null) && (!a.a()))
      {
        a.b();
        a = null;
      }
      if ((b != null) && (!b.a()))
      {
        b.b();
        b = null;
      }
      if (a == null)
      {
        a = new e(this, new a(this));
        a.start();
      }
      ag.a(this, 2131427752, 1);
      System.out.println("*************************************************");
      return;
    }
    finally {}
  }
  
  public void b()
  {
    try
    {
      if (a != null)
      {
        a.b();
        a = null;
      }
      if (b != null)
      {
        b.b();
        b = null;
      }
      System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
      ag.a(this, 2131427753, 1);
      return;
    }
    finally {}
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    try
    {
      com.estrongs.android.pop.esclasses.e.a(this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onDestroy()
  {
    b();
    super.onDestroy();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    if (FileExplorerActivity.J() == null)
    {
      FexApplication.a().stopService(new Intent().setClassName(FexApplication.a(), OBEXFtpServerService.class.getName()));
      System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.OBEXFtpServerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */