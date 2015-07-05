package com.estrongs.fs.impl.local;

import android.content.Context;
import com.estrongs.a.a;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.c;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class w
{
  private static w a;
  private Context b = null;
  private NumberFormat c = NumberFormat.getInstance();
  
  private w(Context paramContext)
  {
    b = paramContext;
    c.setMaximumFractionDigits(1);
  }
  
  public static w a(Context paramContext)
  {
    if (a == null) {
      a = new w(paramContext);
    }
    for (;;)
    {
      return a;
      if (paramContext != null) {
        ab = paramContext;
      }
    }
  }
  
  public List<h> a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        if (ad.a(b).h() != 2) {
          continue;
        }
        bool1 = true;
        boolean bool2 = ad.a(b).p();
        HashMap localHashMap = new HashMap();
        LinkedList localLinkedList = new LinkedList();
        try
        {
          localy = new y(this, null);
          if ((paramString.equals("/")) || (paramString.endsWith("/"))) {
            continue;
          }
          a = (paramString + "/");
          b = null;
          c = bool1;
          d = bool2;
          e = localHashMap;
          f = false;
          h = localLinkedList;
          l.a(paramString, localy);
          return localLinkedList;
        }
        catch (Exception localException1)
        {
          paramString = localLinkedList;
        }
      }
      catch (Exception localException2)
      {
        boolean bool1;
        y localy;
        paramString = null;
        continue;
      }
      localException1.printStackTrace();
      return paramString;
      bool1 = false;
      continue;
      a = paramString;
    }
  }
  
  public boolean a(c paramc, Object paramObject)
  {
    paramObject = (y)paramObject;
    if (f) {
      g.add(paramc);
    }
    do
    {
      return true;
      if ((d) && (i))
      {
        i = false;
        return true;
      }
    } while ((!d) && (o.charAt(0) == '.'));
    v localv = new v(b, n);
    localv.a(j);
    localv.setName(o);
    if (d) {
      localv.setFileType(m.a);
    }
    for (;;)
    {
      localv.b(e);
      localv.a(p);
      paramc = a.getCurrentTask();
      if (paramc != null) {
        paramc.sendMessage(11, new Object[] { localv });
      }
      h.add(localv);
      return true;
      localv.setFileType(m.b);
    }
  }
  
  public boolean a(String paramString1, long paramLong, int paramInt1, int paramInt2, String paramString2, Object paramObject)
  {
    y localy = (y)paramObject;
    c localc = new c("");
    o = paramString2;
    boolean bool;
    if ((paramString1.charAt(0) == 'd') || (paramString1.charAt(0) == 'e'))
    {
      bool = true;
      d = bool;
      if (!d) {
        break label195;
      }
      b = (a + o + "/");
      label99:
      if (!d) {
        break label229;
      }
    }
    label195:
    label229:
    for (e = 0L;; e = paramLong)
    {
      j = paramInt1;
      j *= 1000L;
      q = paramInt2;
      p = paramString1.substring(1, 10);
      if ((paramString1.charAt(0) == 'l') || (paramString1.charAt(0) == 'e')) {
        n = true;
      }
      return a(localc, paramObject);
      bool = false;
      break;
      b = (a + o);
      break label99;
    }
  }
  
  public boolean b(String paramString)
  {
    return l.d(paramString) != null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */