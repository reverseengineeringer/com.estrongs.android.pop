package com.dianxinos.lockscreen;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Environment;
import android.provider.Settings.System;
import com.dianxinos.lockscreen.c.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

public class i
{
  private static final boolean a = g.a;
  private static i j;
  private a b;
  private Context c;
  private ContentResolver d;
  private int e = 100;
  private int f = 0;
  private int g = -1;
  private long h = 0L;
  private boolean i = false;
  
  private i(Context paramContext)
  {
    c = paramContext.getApplicationContext();
    d = c.getContentResolver();
    b = a.a(paramContext);
  }
  
  public static i a(Context paramContext)
  {
    if (j == null) {}
    try
    {
      if (j == null) {
        j = new i(paramContext);
      }
      return j;
    }
    finally {}
  }
  
  private void a(int paramInt, long paramLong1, long paramLong2)
  {
    if (Settings.System.getInt(d, "stay_on_while_plugged_in", 0) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      Object localObject = b.a(paramInt, bool);
      paramLong1 = localObject[0] + paramLong1;
      paramLong2 += localObject[1];
      if (a)
      {
        localObject = String.format(Locale.ENGLISH, "newSavedLevelGap=%d, newSavedTimeGap=%d, screenOn=%b, plugType=%d", new Object[] { Long.valueOf(paramLong1), Long.valueOf(paramLong2), Boolean.valueOf(bool), Integer.valueOf(paramInt) });
        g.a("GlobalChargeTag", (String)localObject);
        a((String)localObject);
      }
      b.a(paramInt, bool, paramLong1, paramLong2);
      return;
    }
  }
  
  public static void a(String paramString)
  {
    Object localObject;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localObject = Environment.getExternalStorageDirectory().getAbsolutePath();
    }
    try
    {
      localObject = new FileOutputStream(new File((String)localObject, "chargeData.txt"), true);
      PrintWriter localPrintWriter = new PrintWriter((OutputStream)localObject);
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTimeInMillis(System.currentTimeMillis());
      localPrintWriter.print(new SimpleDateFormat("yyyy-MM-dd HH:mmZ ").format(localCalendar.getTime()));
      localPrintWriter.println(paramString);
      localPrintWriter.close();
      ((FileOutputStream)localObject).close();
      return;
    }
    catch (FileNotFoundException paramString)
    {
      while (!a) {}
      g.c("ChargingTimeHelper", "Exception: " + paramString);
      return;
    }
    catch (IOException paramString)
    {
      while (!a) {}
      g.c("ChargingTimeHelper", "Exception: " + paramString);
    }
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, long paramLong, boolean paramBoolean)
  {
    if (paramInt1 == 0) {
      return;
    }
    if ((g != -1) && ((paramInt2 > g) || ((paramInt2 == g) && (paramBoolean))))
    {
      if ((i) && (paramInt2 < paramInt3)) {
        a(paramInt1, paramInt2 - g, paramLong - h);
      }
      i = true;
    }
    while (paramBoolean)
    {
      h = 0L;
      f = 0;
      e = 100;
      g = -1;
      i = false;
      return;
      g.a("ChargingTimeHelper", "skip updating, mPreLevel: " + g + ", curLevel: " + paramInt2);
    }
    if (paramInt2 - g > 0) {
      h = paramLong;
    }
    f = paramInt1;
    e = paramInt3;
    g = paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */