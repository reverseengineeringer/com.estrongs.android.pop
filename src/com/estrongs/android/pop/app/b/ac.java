package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.widget.Button;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.bd;
import java.util.Calendar;

class ac
  extends ad
{
  int a = 1;
  int b = 1;
  Calendar c = null;
  private String k;
  private String l;
  private int m = 2011;
  
  ac(y paramy, Button paramButton, int paramInt1, int paramInt2)
  {
    super(paramy, paramButton, paramInt1, paramInt2);
  }
  
  private Calendar b()
  {
    if (c == null)
    {
      c = Calendar.getInstance();
      m = c.get(1);
      a = c.get(2);
      b = c.get(5);
      c.set(m, a, b, 0, 0, 0);
    }
    return c;
  }
  
  void a(int paramInt, Object paramObject)
  {
    k = y.e(d).getString(2131428285);
    l = y.e(d).getString(2131428286);
    if (paramInt < a() - 1)
    {
      h = paramInt;
      cd).a = -1L;
      cd).b = -1L;
      if (paramInt == 0) {
        return;
      }
      if (paramInt == 1)
      {
        cd).a = b().getTimeInMillis();
        cd).b = Calendar.getInstance().getTimeInMillis();
        return;
      }
      if (paramInt == 2)
      {
        cd).a = (b().getTimeInMillis() - 86400000L);
        cd).b = b().getTimeInMillis();
        return;
      }
      if (paramInt == 3)
      {
        paramInt = b().get(7);
        cd).a = (b().getTimeInMillis() - (paramInt - 1) * 86400000L);
        cd).b = Calendar.getInstance().getTimeInMillis();
        return;
      }
      if (paramInt == 4)
      {
        paramInt = b().get(5);
        cd).a = (b().getTimeInMillis() - (paramInt - 1) * 86400000L);
        cd).b = Calendar.getInstance().getTimeInMillis();
        return;
      }
      if (paramInt == 5)
      {
        paramInt = b().get(6);
        cd).a = (b().getTimeInMillis() - (paramInt - 1) * 86400000L);
        cd).b = Calendar.getInstance().getTimeInMillis();
        return;
      }
      if (paramInt == 6)
      {
        paramInt = b().get(6);
        cd).a = -1L;
        cd).b = (b().getTimeInMillis() - (paramInt - 1) * 86400000L);
        return;
      }
      a((String)paramObject);
      return;
    }
    paramObject = k;
    String str = y.e(d).getString(2131427602);
    a(new String[] { paramObject }, str, 365, 730).c();
  }
  
  protected void a(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    if (paramInt1 > 0) {
      cd).b = (b().getTimeInMillis() - paramInt1 * 86400000L);
    }
    if (paramInt2 > 0) {
      cd).a = (b().getTimeInMillis() - paramInt2 * 86400000L);
    }
    super.a(paramInt1, paramString1, paramInt2, paramString2);
  }
  
  void a(String paramString)
  {
    String[] arrayOfString = paramString.split(" - ");
    if ((arrayOfString != null) && (arrayOfString.length == 2))
    {
      cd).a = (b().getTimeInMillis() - b(arrayOfString[1]));
      cd).b = (b().getTimeInMillis() - b(arrayOfString[0]));
      return;
    }
    if (paramString.startsWith(" - "))
    {
      cd).b = (b().getTimeInMillis() - b(arrayOfString[0]));
      return;
    }
    cd).a = (b().getTimeInMillis() - b(arrayOfString[0]));
  }
  
  long b(String paramString)
  {
    k = y.e(d).getString(2131428285);
    l = y.e(d).getString(2131428286);
    if ((paramString == null) || (paramString.trim().length() < 1)) {}
    int i;
    do
    {
      return -1L;
      i = paramString.indexOf(k);
      if (i > 0) {
        return bd.b(paramString.substring(0, i));
      }
      i = paramString.indexOf(l);
    } while (i <= 0);
    return bd.b(paramString.substring(0, i));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */