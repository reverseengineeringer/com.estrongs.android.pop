package com.baidu.mobstat;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

class v
  extends Handler
{
  v(Download paramDownload) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (Download.a == what)
    {
      Download.a(a, true);
      Download.b(a, false);
      Download.b().sendEmptyMessage(Download.a);
      Log.d("UpdateVersionService", "down file succ");
    }
    do
    {
      return;
      if (Download.b == what)
      {
        Log.d("UpdateVersionService", "down file fail");
        Download.a(a, false);
        Download.b(a, false);
        Download.b().sendEmptyMessage(Download.b);
        return;
      }
    } while (Download.c != what);
    Download.a(a, false);
    Download.b(a, false);
    Download.b().sendEmptyMessage(Download.c);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */