package com.estrongs.io.archive.sevenzip;

import android.content.res.Resources;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.impl.local.m;
import com.estrongs.fs.impl.local.s;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class c
  extends a
{
  String d = null;
  private e e;
  private long f;
  private String g;
  private HashMap<String, d> h = new HashMap();
  private int i = 0;
  private q j;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  
  public c(String paramString1, String paramString2, e parame)
  {
    g = paramString1;
    d = paramString2;
    if (d == null) {
      d = "AUTO";
    }
    e = parame;
    if (g.endsWith(".rar")) {
      j = new q(paramString1, paramString2, parame);
    }
  }
  
  private boolean a(int paramInt)
  {
    return (paramInt == 32) || (paramInt == 9) || (paramInt == 10);
  }
  
  private String d(String paramString)
  {
    if (paramString != null)
    {
      paramString = " -p" + a(paramString) + " ";
      paramString = ap.j() + "/p7za l -detect " + paramString + a(g);
      paramString = paramString + "\n";
      c.b.write(paramString);
      c.b.flush();
      c.b.write("exit\n");
      c.b.flush();
    }
    for (;;)
    {
      if (!a)
      {
        paramString = c.c.readLine();
        if (paramString != null)
        {
          if (paramString.startsWith("######detect string:"))
          {
            return paramString.substring("######detect string:".length());
            paramString = " ";
            break;
          }
          if (paramString.contains("Wrong password?")) {
            throw new IOException(FexApplication.a().getResources().getString(2131231784));
          }
        }
      }
    }
    return null;
  }
  
  private void e(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      Object localObject;
      synchronized (h)
      {
        if (h.size() != 0) {
          return;
        }
        b();
        if (d.equals("AUTO"))
        {
          d = d(paramString);
          b();
          if (g.endsWith(".7z"))
          {
            localObject = " -7za ";
            if (paramString == null) {
              break label598;
            }
            paramString = " -p" + a(paramString) + " ";
            if ((d == null) || (d.length() == 0)) {
              break label317;
            }
            paramString = ap.j() + "/p7za l " + (String)localObject + " -charset " + d + paramString + a(g);
            paramString = paramString + "\n";
            c.b.write(paramString);
            c.b.flush();
            c.b.write("exit\n");
            c.b.flush();
            if (a) {
              break label588;
            }
            paramString = c.c.readLine();
            if (paramString == null) {
              break label588;
            }
            if (!paramString.startsWith("------------------- ----- ------------ ------------  ------------------------")) {
              break label360;
            }
            if (i1 != 0) {
              break label604;
            }
            i1 = 1;
            continue;
          }
        }
        else
        {
          if (!d.equals("UTF-8")) {
            continue;
          }
          d = null;
        }
      }
      if (g.endsWith(".zip"))
      {
        localObject = " -zipf ";
        continue;
        label317:
        paramString = ap.j() + "/p7za l " + (String)localObject + paramString + a(g);
        continue;
        label360:
        if (paramString.contains("Wrong password?")) {
          throw new IOException(FexApplication.a().getResources().getString(2131231784));
        }
        if (i1 == 1)
        {
          if (bg.p(g))
          {
            localObject = new d();
            d = paramString.substring(53).trim();
            c = -1L;
            b = "";
            h.put(d, localObject);
            continue;
          }
          localObject = new d();
          d = paramString.substring(53).trim();
          c = Long.parseLong(paramString.substring(26, 39).trim());
          b = paramString.substring(20, 26).trim();
          a = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss").parse(paramString.substring(0, 20).trim()).getTime();
          h.put(d, localObject);
          continue;
        }
        if (i1 != 2) {
          continue;
        }
        if (!bg.p(g)) {
          f = Long.parseLong(paramString.substring(26, 39).trim());
        }
      }
      else
      {
        label588:
        localObject = "";
        continue;
        label598:
        paramString = " ";
        continue;
        label604:
        if (i1 != 1) {
          continue;
        }
        i1 = 2;
        continue;
      }
      i1 = 3;
    }
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    return a(paramString1, null, paramString2);
  }
  
  public boolean a(String paramString1, List<String> paramList, String paramString2)
  {
    if (j != null) {
      return j.a(paramString1, paramList, paramString2);
    }
    if (i != 0) {
      return false;
    }
    i = 1;
    String str2 = "Error";
    for (;;)
    {
      int i1;
      long l1;
      long l2;
      try
      {
        e(paramString2);
        b();
        String str3 = g;
        String str1 = paramString1;
        if (paramString1.endsWith("/")) {
          str1 = paramString1.substring(0, paramString1.length() - 1);
        }
        str1 = str1.trim();
        paramString1 = "";
        if (g.endsWith(".7z"))
        {
          paramString1 = " -7za ";
          if (d != null)
          {
            paramString1 = ap.j() + "/p7za x " + paramString1 + " -charset " + d + " ";
            if (paramString2 == null) {
              continue;
            }
            paramString1 = paramString1 + "-o" + a(str1) + " -p" + a(paramString2) + " -y " + a(str3);
            break label742;
            paramString2 = paramString1;
            if (i1 >= paramList.size()) {
              continue;
            }
            paramString1 = paramString1 + " " + a((String)paramList.get(i1));
            i1 += 1;
            continue;
          }
        }
        else
        {
          if (!g.endsWith(".zip")) {
            continue;
          }
          paramString1 = " -zipf ";
          continue;
        }
        paramString1 = ap.j() + "/p7za x " + paramString1;
        continue;
        paramString1 = paramString1 + "-o" + a(str1) + " -y " + a(str3);
        break label742;
        paramString1 = paramString2 + "\n";
        c.b.write(paramString1);
        c.b.flush();
        c.b.write("exit\n");
        c.b.flush();
        l3 = 0L;
        l1 = 0L;
        l2 = 0L;
        i1 = 0;
        paramString1 = str2;
      }
      catch (Exception paramString1)
      {
        long l3;
        int i2;
        paramString1.printStackTrace();
        if (!a) {
          continue;
        }
        return false;
        boolean bool = paramList.startsWith("Everything is Ok");
        if (!bool) {
          continue;
        }
        i1 = 1;
        continue;
        throw new IOException("Exception:" + paramString1.getMessage());
      }
      if (!a)
      {
        paramList = c.c.readLine();
        if (paramList != null)
        {
          if (paramList.startsWith("Extracting  "))
          {
            paramString2 = paramList.substring("Extracting  ".length());
            i2 = 0;
            if ((i2 < paramString2.length()) && (!a(paramString2.charAt(i2))))
            {
              i2 += 1;
              continue;
            }
            paramString2 = paramString2.substring(0, i2);
            e.a(this, paramString2);
            paramString2 = (d)h.get(paramString2);
            if (paramString2 != null) {
              l3 = c;
            }
            if (!paramList.contains("Wrong password?")) {
              break label739;
            }
            paramString1 = FexApplication.a().getResources().getString(2131231784);
            break label754;
          }
          if (paramList.startsWith("&&&&&&"))
          {
            paramList = paramList.substring(6).trim().split("&");
            l1 = Long.parseLong(paramList[0]);
            e.a(this, l1 - l2, l3, l1, Long.parseLong(paramList[1]));
            continue;
          }
        }
      }
      if (i1 == 0)
      {
        if (a) {
          return false;
        }
        throw new IOException(paramString1);
      }
      return true;
      label739:
      break label754;
      label742:
      paramString2 = paramString1;
      if (paramList != null)
      {
        i1 = 0;
        continue;
        label754:
        l2 = l1;
      }
    }
  }
  
  public List<d> b(String arg1)
  {
    if (j != null) {
      return j.b(???);
    }
    e(???);
    synchronized (h)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = h.entrySet().iterator();
      if (localIterator.hasNext()) {
        localArrayList.add((d)((Map.Entry)localIterator.next()).getValue());
      }
    }
    return localList;
  }
  
  public boolean c(String paramString)
  {
    bool1 = false;
    if (j != null) {
      return j.d();
    }
    for (;;)
    {
      try
      {
        locals = m.e();
        String str = g;
        if (paramString == null) {
          continue;
        }
        paramString = " -p" + a(paramString) + " ";
        paramString = ap.j() + "/p7za l -y " + paramString + a(str);
        paramString = paramString + "\n";
        b.write(paramString);
        b.flush();
        b.write("exit\n");
        b.flush();
        i1 = 0;
        paramString = c.readLine();
        if ((paramString == null) || (i1 >= 10)) {
          continue;
        }
        boolean bool2 = paramString.contains("Wrong password?");
        if (!bool2) {
          continue;
        }
      }
      catch (Exception paramString)
      {
        s locals;
        int i1;
        bool1 = true;
        continue;
        bool1 = true;
        continue;
      }
      try
      {
        a.destroy();
        return bool1;
      }
      catch (Exception paramString) {}
      paramString.printStackTrace();
      return bool1;
      paramString = " ";
      continue;
      i1 += 1;
    }
  }
  
  public boolean d()
  {
    if (j != null) {
      return j.d();
    }
    if (k) {
      return l;
    }
    k = true;
    for (;;)
    {
      try
      {
        s locals = m.e();
        String str = g;
        str = ap.j() + "/p7za t " + a(str);
        str = str + "\n";
        b.write(str);
        b.flush();
        b.write("abcdefghijkn\n");
        b.flush();
        b.write("exit\n");
        b.flush();
        i1 = 0;
        str = c.readLine();
        if ((str != null) && (i1 < 20))
        {
          if (!str.startsWith("Enter password (will not be echoed) :")) {
            continue;
          }
          l = true;
        }
        a.destroy();
      }
      catch (Exception localException)
      {
        int i1;
        localException.printStackTrace();
        continue;
      }
      return l;
      i1 += 1;
    }
  }
  
  public boolean e()
  {
    if (j != null) {
      return j.e();
    }
    if (m) {
      return n;
    }
    m = true;
    for (;;)
    {
      try
      {
        s locals = m.e();
        String str = g;
        str = ap.j() + "/p7za l " + a(str);
        str = str + "\n";
        b.write(str);
        b.flush();
        b.write("abcdefghijkn\n");
        b.flush();
        b.write("exit\n");
        b.flush();
        i1 = 0;
        str = c.readLine();
        if ((str != null) && (i1 < 10))
        {
          if (!str.startsWith("Enter password (will not be echoed) :")) {
            continue;
          }
          n = true;
        }
        a.destroy();
      }
      catch (Exception localException)
      {
        int i1;
        localException.printStackTrace();
        continue;
      }
      return n;
      i1 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */