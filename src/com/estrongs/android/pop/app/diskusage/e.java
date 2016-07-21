package com.estrongs.android.pop.app.diskusage;

import android.content.ContextWrapper;
import android.content.res.Resources;
import com.estrongs.android.h.f;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.s;
import com.estrongs.android.util.v;
import com.estrongs.android.util.w;
import com.estrongs.android.widget.af;
import com.estrongs.fs.util.h;
import com.estrongs.fs.util.i;
import com.estrongs.fs.util.j;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class e
  extends af
{
  public static String a = "fileIcon";
  public static String b = "fileName";
  public static String c = "fileSize";
  public static String d = "fileType";
  public static String e = "fileNum";
  public static String f = "fileSizePrecent";
  public static String g = "fileSizeRate";
  public static final DecimalFormat h = new DecimalFormat("0.00");
  private static final g t = new g(null);
  public Map<String, com.estrongs.fs.util.g> i = new HashMap();
  private long k;
  private boolean l = false;
  private boolean m = true;
  private File n;
  private com.estrongs.fs.util.g o;
  private h p;
  private long q;
  private ContextWrapper r;
  private List<Map.Entry<File, com.estrongs.fs.util.g>> s = new ArrayList(10);
  
  public e(ContextWrapper paramContextWrapper)
  {
    r = paramContextWrapper;
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    if (b.equals(paramString)) {
      if (super.c() != null) {}
    }
    do
    {
      do
      {
        return;
        s.a.a(paramBoolean);
        Arrays.sort(super.c(), s.a);
        return;
        if (!d.equals(paramString)) {
          break;
        }
      } while (super.c() == null);
      s.b.a(paramBoolean);
      Arrays.sort(super.c(), s.b);
      return;
    } while (!c.equals(paramString));
    t.a(paramBoolean);
    try
    {
      Collections.sort(s, t);
      paramString = new File[s.size()];
      int j = 0;
      while (j < s.size())
      {
        paramString[j] = ((File)((Map.Entry)s.get(j)).getKey());
        j += 1;
      }
      super.a(paramString);
      return;
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;) {}
    }
  }
  
  public com.estrongs.fs.util.g a(File paramFile)
  {
    return (com.estrongs.fs.util.g)i.get(paramFile.getAbsolutePath());
  }
  
  protected Object a(File paramFile, String paramString)
  {
    if ((n == null) || (n != paramFile))
    {
      n = paramFile;
      o = ((com.estrongs.fs.util.g)i.get(paramFile.getAbsolutePath()));
    }
    if (o == null) {
      paramFile = null;
    }
    do
    {
      do
      {
        return paramFile;
        if (a.equals(paramString))
        {
          paramString = paramFile.getName();
          if (paramFile.isDirectory()) {
            return r.getResources().getDrawable(2130837904);
          }
          return f.a(String.valueOf(bg.b(paramString)));
        }
        if (!b.equals(paramString)) {
          break;
        }
        paramString = paramFile.getName();
        paramFile = paramString;
      } while (!paramString.endsWith(".lnk"));
      paramFile = paramString;
    } while (paramString.lastIndexOf(".lnk") <= 0);
    return paramString.substring(0, paramString.lastIndexOf(".lnk"));
    if (c.equals(paramString)) {
      return j.c(o.b());
    }
    if (e.equals(paramString)) {
      return "" + o.c() + " / " + o.d();
    }
    if (f.equals(paramString)) {
      return h.format(o.b() * 100.0D / (q * 1.0D)) + "%";
    }
    if (g.equals(paramString)) {
      return Float.valueOf((float)o.b() / (float)q);
    }
    return null;
  }
  
  public void a()
  {
    l = true;
    if (o != null) {
      o.a();
    }
  }
  
  public void a(int paramInt)
  {
    boolean bool = true;
    String str = "";
    if ((paramInt == 0) || (1 == paramInt)) {
      str = b;
    }
    for (;;)
    {
      if (paramInt % 2 != 0) {
        bool = false;
      }
      a(str, bool);
      return;
      if ((2 == paramInt) || (3 == paramInt)) {
        str = d;
      } else if ((4 == paramInt) || (5 == paramInt)) {
        str = c;
      }
    }
  }
  
  public void a(long paramLong)
  {
    q = paramLong;
  }
  
  public void a(h paramh)
  {
    p = paramh;
  }
  
  public boolean a(File[] paramArrayOfFile)
  {
    l = false;
    if (paramArrayOfFile == null) {
      return false;
    }
    if (!m) {
      i.clear();
    }
    HashMap localHashMap = new HashMap();
    int i1 = paramArrayOfFile.length;
    int j = 0;
    Object localObject;
    if (j < i1)
    {
      localObject = paramArrayOfFile[j];
      if (!l) {}
    }
    else
    {
      s.clear();
      localObject = localHashMap.entrySet().iterator();
    }
    for (;;)
    {
      if ((!((Iterator)localObject).hasNext()) || (l))
      {
        localHashMap.clear();
        if (!l) {
          break label259;
        }
        localHashMap.clear();
        s.clear();
        return false;
        if (!i.containsKey(((File)localObject).getAbsolutePath()))
        {
          o = new i(p, k);
          o.a((File)localObject);
          i.put(((File)localObject).getAbsolutePath(), o);
        }
        for (;;)
        {
          localHashMap.put(localObject, i.get(((File)localObject).getAbsolutePath()));
          j += 1;
          break;
          p.a((File)localObject);
        }
      }
      s.add(((Iterator)localObject).next());
    }
    label259:
    super.a(paramArrayOfFile);
    return true;
  }
  
  public void b(long paramLong)
  {
    k = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */