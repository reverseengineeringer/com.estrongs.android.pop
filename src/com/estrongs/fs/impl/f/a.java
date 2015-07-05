package com.estrongs.fs.impl.f;

import android.text.format.DateFormat;
import java.util.Calendar;

public class a
{
  public String a;
  public String b;
  public String c;
  public int d;
  public Calendar e;
  
  public a(String paramString1, String paramString2)
  {
    int k = paramString1.lastIndexOf(",");
    int i = Integer.parseInt(paramString1.substring(k + 1).trim());
    int j = paramString1.lastIndexOf(",", k - 1);
    k = Integer.parseInt(paramString1.substring(j + 1, k).trim());
    int m = paramString1.lastIndexOf(",", j - 1);
    d = Integer.parseInt(paramString1.substring(m + 1, j).trim());
    j = paramString1.lastIndexOf(",", m - 1);
    c = paramString1.substring(j + 1, m);
    b = paramString1.substring(paramString1.indexOf(",", paramString2.length()) + 1, j);
    a = paramString2;
    e = Calendar.getInstance();
    e.set((k >> 9 & 0x7F) + 1980, k >> 5 & 0xE, k & 0x1F, i >> 11 & 0x1F, i >> 5 & 0x3F, (i & 0x1F) * 2);
  }
  
  public boolean a()
  {
    return (d & 0x10) > 0;
  }
  
  public String toString()
  {
    return "DIR=" + a + " FILENAME=" + b + " SIZE=" + c + " ATTRIBUTE=" + d + " DATE=" + DateFormat.format("yyyy-MM-dd kk:mm:ss", e);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */