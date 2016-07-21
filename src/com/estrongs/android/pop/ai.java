package com.estrongs.android.pop;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.File;
import java.util.Calendar;

public class ai
{
  private static ai b = null;
  private Context a = null;
  private SharedPreferences c;
  private ad d;
  
  private ai(Context paramContext)
  {
    a = paramContext;
    c = a.getSharedPreferences("runtime", 0);
    d = ad.a(a);
  }
  
  public static void a()
  {
    b = null;
  }
  
  public static ai b(Context paramContext)
  {
    if (b == null) {
      b = new ai(paramContext);
    }
    if (paramContext != null) {
      b.a(paramContext);
    }
    return b;
  }
  
  public int A()
  {
    return a("key_permission_notify_shown_count", 0);
  }
  
  public String B()
  {
    return c.getString("apk_signature_tag", null);
  }
  
  public boolean C()
  {
    return b("key_feedback_rating_bar_shown", false);
  }
  
  public String D()
  {
    return a("key_music_player_last_play_list", "");
  }
  
  public String E()
  {
    return a("key_music_player_last_play_item", "");
  }
  
  public boolean F()
  {
    boolean bool = b("key_first_show_encrypted_dialog", true);
    if (bool) {
      a("key_first_show_encrypted_dialog", false);
    }
    return bool;
  }
  
  public int a(String paramString, int paramInt)
  {
    return c.getInt(paramString, paramInt);
  }
  
  public long a(String paramString, Long paramLong)
  {
    paramString = a(paramString, null);
    if (paramString == null) {
      return paramLong.longValue();
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return paramLong.longValue();
  }
  
  public String a(String paramString1, String paramString2)
  {
    return c.getString(paramString1, paramString2);
  }
  
  public void a(int paramInt)
  {
    b("rating_dailog_controll_value", paramInt);
  }
  
  public void a(long paramLong)
  {
    b("cleaner_last_cleaning_time", Long.valueOf(paramLong));
  }
  
  public void a(Context paramContext)
  {
    a = paramContext;
  }
  
  public void a(String paramString)
  {
    b("email_for_encrypt", paramString);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = c.edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }
  
  public void a(boolean paramBoolean)
  {
    a("rating_dialog_shown", paramBoolean);
  }
  
  public long b()
  {
    File localFile = new File(a.c);
    if (localFile.exists()) {
      return localFile.lastModified();
    }
    return -1L;
  }
  
  public void b(int paramInt)
  {
    b("key_permission_notify_shown_count", paramInt);
  }
  
  public void b(long paramLong)
  {
    b("cleaner_total_cleaned_size", Long.valueOf(m() + paramLong));
  }
  
  public void b(String paramString)
  {
    c.edit().putString("apk_signature_tag", paramString);
  }
  
  public void b(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = c.edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }
  
  public void b(String paramString, Long paramLong)
  {
    b(paramString, paramLong + "");
  }
  
  public void b(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = c.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  public void b(boolean paramBoolean)
  {
    a("analysis_snakbar_show", paramBoolean);
  }
  
  public boolean b(String paramString, boolean paramBoolean)
  {
    return c.getBoolean(paramString, paramBoolean);
  }
  
  public void c()
  {
    if (b() > 0L) {
      return;
    }
    long l = d.aT();
    if (l > 0L)
    {
      b("first_launch_time", Long.valueOf(l));
      return;
    }
    b("first_launch_time", Long.valueOf(System.currentTimeMillis()));
  }
  
  public void c(long paramLong)
  {
    b("cleaner_last_cleaned_size", Long.valueOf(paramLong));
  }
  
  public void c(String paramString)
  {
    b("key_music_player_last_play_list", paramString);
  }
  
  public void c(boolean paramBoolean)
  {
    a("key_feedback_rating_bar_shown", paramBoolean);
  }
  
  public int d()
  {
    return a("user_launch_time_count", -1);
  }
  
  public void d(long paramLong)
  {
    b("ad_ignore_time", Long.valueOf(paramLong));
  }
  
  public void d(String paramString)
  {
    b("key_music_player_last_play_item", paramString);
  }
  
  public void e()
  {
    int i = d();
    if (i > 0)
    {
      b("user_launch_time_count", i + 1);
      return;
    }
    b("user_launch_time_count", d.aS() + 1);
  }
  
  public void e(long paramLong)
  {
    b("cleaner_last_scanned_size", Long.valueOf(paramLong));
  }
  
  public void f()
  {
    b("recent_launch_time2", Long.valueOf(a("recent_launch_time1", Long.valueOf(-1L))));
    b("recent_launch_time1", Long.valueOf(Calendar.getInstance().getTimeInMillis()));
  }
  
  public void f(long paramLong)
  {
    b("key_last_analysis_from_home", Long.valueOf(paramLong));
  }
  
  public long g()
  {
    return a("recent_launch_time2", Long.valueOf(-1L));
  }
  
  public void g(long paramLong)
  {
    b("key_permission_notify_last_shown_time", Long.valueOf(paramLong));
  }
  
  public long h()
  {
    long l = Calendar.getInstance().getTimeInMillis();
    b("cleaner_last_scanning_time", Long.valueOf(l));
    return l;
  }
  
  public void i()
  {
    b("click_home_clean_fab", a("click_home_clean_fab", 0) + 1);
  }
  
  public long j()
  {
    return a("cleaner_last_cleaning_time", Long.valueOf(0L));
  }
  
  public int k()
  {
    return a("cleaner_clean_times_count", 0);
  }
  
  public void l()
  {
    b("cleaner_clean_times_count", k() + 1);
  }
  
  public long m()
  {
    return a("cleaner_total_cleaned_size", Long.valueOf(0L));
  }
  
  public long n()
  {
    return a("ad_ignore_time", Long.valueOf(0L));
  }
  
  public int o()
  {
    return a("rating_dailog_controll_value", 0);
  }
  
  public void p()
  {
    b("launch_times_after_show_rating_dialog", q() + 1);
  }
  
  public int q()
  {
    return a("launch_times_after_show_rating_dialog", 0);
  }
  
  public void r()
  {
    b("launch_times_after_show_rating_dialog", 0);
  }
  
  public boolean s()
  {
    return b("rating_dialog_shown", false);
  }
  
  public boolean t()
  {
    return b("private_folder_inited", false);
  }
  
  public void u()
  {
    a("private_folder_inited", true);
  }
  
  public void v()
  {
    a("is_new_user", true);
  }
  
  public String w()
  {
    return a("email_for_encrypt", null);
  }
  
  public boolean x()
  {
    return b("analysis_snakbar_show", false);
  }
  
  public long y()
  {
    return a("key_last_analysis_from_home", Long.valueOf(0L));
  }
  
  public long z()
  {
    return a("key_permission_notify_last_shown_time", Long.valueOf(0L));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */