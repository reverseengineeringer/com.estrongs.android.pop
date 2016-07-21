package com.estrongs.io.archive.sevenzip;

import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.local.s;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.util.List;

public class b
  extends a
{
  private e d;
  private List<String> e;
  private int f = 0;
  
  public b(List<String> paramList, e parame)
  {
    e = paramList;
    d = parame;
  }
  
  public boolean a(String paramString1, String paramString2, String paramString3)
  {
    if (f != 0) {
      return false;
    }
    f = 1;
    String str = "";
    for (;;)
    {
      try
      {
        if (paramString2.endsWith(".7z.tmp")) {
          str = " -7za ";
        }
        new File(paramString2).delete();
        if (paramString3 != null)
        {
          paramString1 = ap.j() + "/p7za a " + str + " -w" + a(paramString1) + " -p" + a(paramString3) + " -y " + a(paramString2) + " ";
          break label637;
          if (i < e.size())
          {
            paramString1 = paramString1 + a((String)e.get(i)) + " ";
            i += 1;
            continue;
          }
        }
        else
        {
          paramString1 = ap.j() + "/p7za a " + str + " -w" + a(paramString1) + " -y " + a(paramString2) + " ";
          break label637;
        }
        paramString1 = paramString1 + "\n";
        b();
        c.b.write(paramString1);
        c.b.flush();
        c.b.write("exit\n");
        c.b.flush();
        l3 = 0L;
        l1 = 0L;
        l2 = 0L;
        i = 0;
      }
      catch (Exception paramString1)
      {
        long l3;
        long l1;
        long l2;
        paramString1.printStackTrace();
        boolean bool = a;
        if (!bool) {
          continue;
        }
        return false;
        bool = paramString1.startsWith("Everything is Ok");
        if (!bool) {
          continue;
        }
        i = 1;
        continue;
        new File(paramString2 + ".tmp").delete();
        if (i != 0) {
          break label635;
        }
        if (!a) {
          break label625;
        }
        return false;
        throw new IOException("Exception:" + paramString1.getMessage());
      }
      finally
      {
        new File(paramString2 + ".tmp").delete();
      }
      if (!a)
      {
        paramString1 = c.c.readLine();
        if (paramString1 != null)
        {
          if (paramString1.startsWith("Compressing file  "))
          {
            paramString1 = paramString1.substring("Compressing file  ".length());
            d.a(this, paramString1);
            l3 = new File(paramString1).length();
            l2 = l1;
            continue;
          }
          if (paramString1.startsWith("&&&&&&"))
          {
            paramString1 = paramString1.substring(6).trim().split("&");
            l1 = Long.parseLong(paramString1[0]);
            d.a(this, l1 - l2, l3, l1, Long.parseLong(paramString1[1]));
            continue;
          }
        }
      }
      label625:
      throw new IOException("error");
      label635:
      return true;
      label637:
      int i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */