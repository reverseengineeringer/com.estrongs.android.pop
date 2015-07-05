package com.estrongs.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.baidu.mobstat.StatService;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

public class a
{
  private static final String a = a.class.getSimpleName();
  private static final String[] b = { "FileExplorer", "Shadow", "PopRemoteImageBrowser", "PopVideoPlayer", "PopAudioPlayer", "PopNoteEditor", "ESRingtoneChooser", "ESWallPaperChooser", "ESContentChooser", "ESFileSharingActivity" };
  private static final String[] c = { "Recommend_Show", "Home_Pic", "Home_Pic_Wan", "Home_Music", "Home_Music_Wan", "Home_Video", "Home_Video_Wan", "Home_Doc", "Home_Doc_Wan", "Home_App", "Home_App_Wan", "Home_Download", "Home_Download_Mgr", "Home_Sdcard", "Home_PCS", "Home_Cloud", "Home_Remote", "Home_LAN", "Home_Baidu_Security", "Sidebar_Baidu_Security", "Home_Send", "Home_Task", "Home_Recycle", "Home_NetSearch", "Home_Search_Wan", "Home_News", "Home_Weather", "Home_Hide", "Home_Disk", "Home_Root", "Home_Gesture", "Home_Net_Mgr", "Home_Bluetooth", "Home_FTP", "Home_Clipboard" };
  private static final String[] d = { "Home_Pic_UV", "Home_Pic_Wan_UV", "Home_Music_UV", "Home_Music_Wan_UV", "Home_Video_UV", "Home_Video_Wan_UV", "Home_Doc_UV", "Home_Doc_Wan_UV", "Home_App_UV", "Home_App_Wan_UV", "Home_Download_UV", "Home_Download_Mgr_UV", "Home_Sdcard_UV", "Home_PCS_UV", "Home_Cloud_UV", "Home_Remote_UV", "Home_LAN_UV", "Home_Baidu_Security_UV", "Sidebar_Baidu_Security_UV", "Home_Send_UV", "Home_Task_UV", "Home_Recycle_UV", "Home_NetSearch_UV", "Home_Search_Wan_UV", "Home_News_UV", "Home_Weather_UV", "Home_Hide_UV", "Home_Disk_UV", "Home_Root_UV", "Home_Gesture_UV", "Home_Net_Mgr_UV", "Home_Bluetooth_UV", "Home_FTP_UV", "Home_Clipboard_UV" };
  private static final String[] e = new String[0];
  private static String f = "Google Market";
  private static a k = null;
  private boolean g = false;
  private boolean h = true;
  private String i = null;
  private Context j = null;
  
  private a(Context paramContext, String paramString)
  {
    j = paramContext;
    i = paramString;
    g = b(paramString);
  }
  
  public static a a()
  {
    return k;
  }
  
  public static a a(Context paramContext, boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
    {
      if (k == null) {
        k = new a(paramContext, paramString);
      }
      return k;
    }
    return new a(paramContext, paramString);
  }
  
  public static void a(String paramString)
  {
    f = paramString;
    StatService.setAppChannel(f);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    a locala = a();
    if ((locala != null) && (paramString1 != null) && (paramString2 != null)) {
      locala.c(paramString1, paramString2);
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    a locala = a();
    if ((locala != null) && (paramString1 != null) && (paramString2 != null)) {
      locala.e(paramString1, paramString2);
    }
  }
  
  private boolean b(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = b;
      int n = arrayOfString.length;
      int m = 0;
      while (m < n)
      {
        if (arrayOfString[m].endsWith(paramString)) {
          return true;
        }
        m += 1;
      }
    }
  }
  
  private boolean b(String paramString, long paramLong)
  {
    boolean bool = false;
    long l = j.getSharedPreferences("Event_DB", 0).getLong(paramString, 0L);
    if ((System.currentTimeMillis() - l > paramLong) || (l == 0L)) {
      bool = true;
    }
    return bool;
  }
  
  private boolean c(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = c;
      int n = arrayOfString.length;
      int m = 0;
      while (m < n)
      {
        if (arrayOfString[m].equals(paramString)) {
          return true;
        }
        m += 1;
      }
    }
  }
  
  private boolean d(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = d;
      int n = arrayOfString.length;
      int m = 0;
      while (m < n)
      {
        if (arrayOfString[m].equals(paramString)) {
          return true;
        }
        m += 1;
      }
    }
  }
  
  private boolean e(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = e;
      int n = arrayOfString.length;
      int m = 0;
      while (m < n)
      {
        if (arrayOfString[m].equals(paramString)) {
          return true;
        }
        m += 1;
      }
    }
  }
  
  public void a(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = j.getSharedPreferences("Event_DB", 0).edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }
  
  public boolean b()
  {
    try
    {
      boolean bool = ad.a(FexApplication.a()).aq();
      try
      {
        l = ad.a(FexApplication.a()).ar();
        if ((!bool) && (l != 0L) && (System.currentTimeMillis() - l < 1296000000L))
        {
          h = false;
          if ((!h) || (!g) || ((!FexApplication.a().g()) && ("FileExplorer".equals(i)))) {
            break label130;
          }
          StatService.onResume(j);
          ad.a(FexApplication.a()).d(System.currentTimeMillis());
          return true;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
          long l = 0L;
          continue;
          h = true;
        }
      }
      return false;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public void c(String paramString1, String paramString2)
  {
    if ((h) && (g) && ((FexApplication.a().g()) || (!"FileExplorer".equals(i))) && (c(paramString1))) {
      StatService.onEvent(j, paramString1, paramString2);
    }
  }
  
  public boolean c()
  {
    try
    {
      if ((h) && (g) && ((FexApplication.a().g()) || (!"FileExplorer".equals(i))))
      {
        StatService.onPause(j);
        return true;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }
  
  public void d()
  {
    k = null;
  }
  
  public void d(String paramString1, String paramString2)
  {
    if (FexApplication.a().g()) {
      StatService.onEvent(j, paramString1, paramString2);
    }
  }
  
  public void e(String paramString1, String paramString2)
  {
    if ((h) && (g) && ((FexApplication.a().g()) || (!"FileExplorer".equals(i))) && (d(paramString1)) && (b(paramString1, 86400000L)))
    {
      StatService.onEvent(j, paramString1, paramString2);
      a(paramString1, System.currentTimeMillis());
    }
  }
  
  public void f(String paramString1, String paramString2)
  {
    if ((h) && (g) && ((FexApplication.a().g()) || (!"FileExplorer".equals(i))) && (e(paramString1)) && (b(paramString1, Long.MAX_VALUE)))
    {
      StatService.onEvent(j, paramString1, paramString2);
      a(paramString1, System.currentTimeMillis());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */