package com.estrongs.android.pop.app.analysis;

import android.content.res.Resources;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.estrongs.android.b.a.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.b;
import com.estrongs.android.util.ap;
import com.estrongs.fs.util.j;
import java.text.MessageFormat;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class aa
  extends y
{
  private String c = "";
  private String[] d = { "largefile", "duplicate", "redundancy" };
  
  private boolean e()
  {
    ai localai = ai.b(FexApplication.a());
    long l1 = localai.a("sdcard_available_memory", Long.valueOf(0L));
    if (l1 == 0L) {}
    long l2;
    int i;
    do
    {
      return false;
      c = "";
      long[] arrayOfLong = j.k(b.b());
      l2 = arrayOfLong[1] * arrayOfLong[2];
      if (l1 <= l2) {
        break;
      }
      l2 = l1 - l2;
      i = (int)(100.0D * l2 / l1);
      c = j.c(l2);
    } while ((l2 < 209715200L) && (i < 5));
    return true;
    localai.b("sdcard_available_memory", Long.valueOf(l2));
    return false;
  }
  
  public List<a> a(List<a> paramList)
  {
    int i = 0;
    while (i < d.length)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (locala.m().equals(d[i]))
        {
          locala.b(i);
          locala.d(true);
        }
      }
      i += 1;
    }
    Collections.sort(paramList, new ab(this));
    return paramList;
  }
  
  public boolean b()
  {
    String str = b.b();
    if (ap.e(b, str)) {
      return e();
    }
    return false;
  }
  
  public CharSequence c()
  {
    int i = d();
    String str = MessageFormat.format(FexApplication.a().getString(2131232296), new Object[] { Integer.valueOf(i), c });
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(FexApplication.a().getResources().getColor(2131558683));
    SpannableString localSpannableString = new SpannableString(str);
    i = str.indexOf(c);
    localSpannableString.setSpan(localForegroundColorSpan, i, c.length() + i, 17);
    return localSpannableString;
  }
  
  public int d()
  {
    long l = ai.b(FexApplication.a()).a("sdcard_topview_show_date", Long.valueOf(0L));
    int j = (int)Math.ceil((System.currentTimeMillis() - l) / a);
    int i = j;
    if (j <= 0) {
      i = 1;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */