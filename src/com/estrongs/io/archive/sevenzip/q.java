package com.estrongs.io.archive.sevenzip;

import android.content.res.Resources;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.impl.local.r;
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

public class q
  extends a
{
  String d = null;
  private e e;
  private String f;
  private HashMap<String, d> g = new HashMap();
  private int h = 0;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;
  
  public q(String paramString1, String paramString2, e parame)
  {
    f = paramString1;
    d = paramString2;
    if (d.equals("AUTO")) {
      d = null;
    }
    e = parame;
  }
  
  private void c(String paramString)
  {
    for (;;)
    {
      int m;
      String str;
      synchronized (g)
      {
        if (g.size() != 0) {
          return;
        }
        b();
        if ("UTF-8".equals(d)) {
          d = null;
        }
        if (paramString == null) {
          break label581;
        }
        paramString = " -p" + a(paramString) + " ";
        if ((d != null) && (d.length() != 0))
        {
          paramString = am.j() + "/p7za l " + " -charset " + d + paramString + a(f);
          paramString = paramString + "\n";
          c.b.write(paramString);
          c.b.flush();
          c.b.write("exit\n");
          c.b.flush();
          m = 0;
          if (a) {
            break label577;
          }
          str = c.c.readLine();
          if (str == null) {
            break label577;
          }
          if (str.startsWith("----------- ---------  -------- -----  ----"))
          {
            if (m != 0) {
              break label587;
            }
            m = 1;
            continue;
          }
        }
        else
        {
          paramString = am.j() + "/p7za l " + paramString + a(f);
          continue;
        }
        if (str.contains("Wrong password?")) {
          throw new IOException(FexApplication.a().getResources().getString(2131427897));
        }
      }
      if (m == 1)
      {
        d locald = new d();
        paramString = str;
        if (str.startsWith("*")) {
          paramString = str.substring(1);
        }
        paramString = paramString.trim();
        int n = 0;
        while (paramString.charAt(n) != ' ') {
          n += 1;
        }
        b = paramString.substring(0, n).trim();
        paramString = paramString.substring(n).trim();
        n = 0;
        while (paramString.charAt(n) != ' ') {
          n += 1;
        }
        c = Long.parseLong(paramString.substring(0, n).trim());
        paramString = paramString.substring(n).trim();
        int i1 = 0;
        for (;;)
        {
          n = i1;
          if (paramString.charAt(i1) == ' ') {
            break;
          }
          i1 += 1;
        }
        for (;;)
        {
          i1 = n;
          if (paramString.charAt(n) != ' ') {
            break;
          }
          n += 1;
        }
        while (paramString.charAt(i1) != ' ') {
          i1 += 1;
        }
        a = new SimpleDateFormat("mm-dd-yy HH:mm").parse(paramString.substring(0, i1).trim()).getTime();
        d = paramString.substring(i1).trim();
        g.put(d, locald);
        continue;
        label577:
        return;
        label581:
        paramString = " ";
        continue;
        label587:
        if (m == 1) {
          m = 2;
        }
      }
      else if (m == 2)
      {
        m = 3;
      }
    }
  }
  
  public boolean a(String paramString1, List<String> paramList, String paramString2)
  {
    if (h != 0) {
      return false;
    }
    h = 1;
    String str2 = "Error";
    for (;;)
    {
      int m;
      int n;
      try
      {
        b();
        String str3 = f;
        String str1 = paramString1;
        if (paramString1.endsWith("/")) {
          str1 = paramString1.substring(0, paramString1.length() - 1);
        }
        str1 = str1.trim();
        if (d != null)
        {
          paramString1 = am.j() + "/p7za rarx " + " -charset " + d + " ";
          if (paramString2 != null)
          {
            paramString1 = paramString1 + "-o" + " -p" + a(paramString2) + " -y " + a(str3);
            break label701;
            paramString2 = paramString1;
            if (m >= paramList.size()) {
              continue;
            }
            paramString1 = paramString1 + " " + a((String)paramList.get(m));
            m += 1;
            continue;
          }
        }
        else
        {
          paramString1 = am.j() + "/p7za rarx ";
          continue;
        }
        paramString1 = paramString1 + "-o" + " -y " + a(str3);
        break label701;
        paramString1 = paramString2 + "\n";
        c.b.write("mkdir " + a(str1) + "\n");
        c.b.write("cd " + a(str1) + "\n");
        c.b.write(paramString1);
        c.b.flush();
        c.b.write("exit\n");
        c.b.flush();
        m = 0;
        n = 0;
        paramString1 = str2;
        if (!a)
        {
          paramList = c.c.readLine();
          if (paramList != null)
          {
            if (paramList.startsWith("Extracting  "))
            {
              paramString2 = paramList.substring("Extracting  ".length()).trim();
              e.a(this, paramString2);
              if (!paramList.contains("Wrong password?")) {
                break label698;
              }
              paramString1 = FexApplication.a().getResources().getString(2131427897);
              break label713;
            }
            if (paramList.startsWith("&&&&"))
            {
              paramList = paramList.substring(4).trim().split("&");
              if (paramList.length != 4) {
                break label716;
              }
              long l1 = Long.parseLong(paramList[2]);
              long l2 = Long.parseLong(paramList[0]);
              long l3 = Long.parseLong(paramList[1]);
              e.a(this, l2, l3, l1, Long.parseLong(paramList[3]));
              break label716;
            }
            if (paramList.startsWith("All OK"))
            {
              m = 1;
              continue;
            }
            if ((n == 0) || (!paramList.startsWith("Total errors"))) {
              continue;
            }
            paramString1 = FexApplication.a().getResources().getString(2131427897);
            continue;
          }
        }
        if (m != 0) {
          break label696;
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        if (a) {
          return false;
        }
        throw new IOException("Exception:" + paramString1.getMessage());
      }
      if (a) {
        return false;
      }
      throw new IOException(paramString1);
      label696:
      return true;
      label698:
      break label713;
      label701:
      paramString2 = paramString1;
      if (paramList != null)
      {
        m = 0;
        continue;
        label713:
        continue;
        label716:
        n = 1;
      }
    }
  }
  
  public List<d> b(String arg1)
  {
    c(???);
    synchronized (g)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = g.entrySet().iterator();
      if (localIterator.hasNext()) {
        localArrayList.add((d)((Map.Entry)localIterator.next()).getValue());
      }
    }
    return localList;
  }
  
  public boolean d()
  {
    if (i) {
      return j;
    }
    i = true;
    for (;;)
    {
      try
      {
        r localr = l.e();
        String str = f;
        str = am.j() + "/p7za t " + a(str);
        str = str + "\n";
        b.write(str);
        b.flush();
        b.write("abcdefghijkn\n");
        b.flush();
        b.write("exit\n");
        b.flush();
        m = 0;
        str = c.readLine();
        if ((str != null) && (m < 20))
        {
          if (!str.startsWith("Enter password (will not be echoed)")) {
            continue;
          }
          j = true;
        }
        a.destroy();
      }
      catch (Exception localException)
      {
        int m;
        localException.printStackTrace();
        continue;
      }
      return j;
      m += 1;
    }
  }
  
  public boolean e()
  {
    if (k) {
      return l;
    }
    k = true;
    for (;;)
    {
      try
      {
        r localr = l.e();
        String str = f;
        str = am.j() + "/p7za l " + a(str);
        str = str + "\n";
        b.write(str);
        b.flush();
        b.write("abcdefghijkn\n");
        b.flush();
        b.write("exit\n");
        b.flush();
        m = 0;
        str = c.readLine();
        if ((str != null) && (m < 10))
        {
          if (!str.startsWith("Enter password (will not be echoed)")) {
            continue;
          }
          l = true;
        }
        a.destroy();
      }
      catch (Exception localException)
      {
        int m;
        localException.printStackTrace();
        continue;
      }
      return l;
      m += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */