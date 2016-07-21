package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.e;
import java.util.Map;

@me
public class jd
  extends jr
{
  private final Map<String, String> a;
  private final Context b;
  private String c;
  private long d;
  private long e;
  private String f;
  private String g;
  
  public jd(qa paramqa, Map<String, String> paramMap)
  {
    super(paramqa, "createCalendarEvent");
    a = paramMap;
    b = paramqa.c();
    c();
  }
  
  private String a(String paramString)
  {
    if (TextUtils.isEmpty((CharSequence)a.get(paramString))) {
      return "";
    }
    return (String)a.get(paramString);
  }
  
  private void c()
  {
    c = a("description");
    f = a("summary");
    d = e("start_ticks");
    e = e("end_ticks");
    g = a("location");
  }
  
  private long e(String paramString)
  {
    paramString = (String)a.get(paramString);
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  public void a()
  {
    if (b == null)
    {
      b("Activity context is not available.");
      return;
    }
    if (!ae.e().e(b).f())
    {
      b("This feature is not available on the device.");
      return;
    }
    AlertDialog.Builder localBuilder = ae.e().d(b);
    localBuilder.setTitle(ae.h().a(e.create_calendar_title, "Create calendar event"));
    localBuilder.setMessage(ae.h().a(e.create_calendar_message, "Allow Ad to create a calendar event?"));
    localBuilder.setPositiveButton(ae.h().a(e.accept, "Accept"), new je(this));
    localBuilder.setNegativeButton(ae.h().a(e.decline, "Decline"), new jf(this));
    localBuilder.create().show();
  }
  
  Intent b()
  {
    Intent localIntent = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
    localIntent.putExtra("title", c);
    localIntent.putExtra("eventLocation", g);
    localIntent.putExtra("description", f);
    if (d > -1L) {
      localIntent.putExtra("beginTime", d);
    }
    if (e > -1L) {
      localIntent.putExtra("endTime", e);
    }
    localIntent.setFlags(268435456);
    return localIntent;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */