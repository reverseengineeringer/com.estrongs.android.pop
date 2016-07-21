package com.estrongs.android.pop.app.b;

import android.util.Pair;
import com.estrongs.android.scanner.g;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
{
  private static int a(String paramString)
  {
    return com.estrongs.android.scanner.b.a.a(paramString, ap.bR(paramString));
  }
  
  private static long a(long paramLong)
  {
    int i = (int)Math.floor(paramLong / 86400000L);
    int j = (int)Math.floor((paramLong - i * 86400000L) / 3600000L);
    int k = (int)Math.floor((paramLong - i * 86400000L - j * 3600000L) / 60000L);
    if (i > 0) {
      return i * 86400000L;
    }
    if (j > 0) {
      return j * 3600000L;
    }
    return k * 60000L;
  }
  
  public static Pair a(h paramh, long paramLong, g paramg)
  {
    paramg = a(paramh, paramg);
    if (paramg == null) {
      return null;
    }
    paramLong = a(paramLong - paramh.lastModified());
    paramh = new ArrayList();
    paramh.add(paramg);
    return new Pair(Long.valueOf(paramLong), paramh);
  }
  
  public static b a(h paramh, g paramg)
  {
    b localb = new b();
    String str = paramh.getAbsolutePath();
    int i = a(str);
    if (i == 100) {}
    do
    {
      return null;
      paramg = a(str, paramg);
    } while (paramg == null);
    c = i;
    e = ap.bB(str);
    d = paramg;
    i.add(new i(str, paramh.getName(), paramh.length(), paramg, paramh.lastModified()));
    j = i.size();
    return localb;
  }
  
  private static b a(List<b> paramList, h paramh, g paramg)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (a(localb, paramh, paramg)) {
        return localb;
      }
    }
    paramh = a(paramh, paramg);
    if (paramh != null)
    {
      paramList.add(paramh);
      return paramh;
    }
    return null;
  }
  
  private static String a(String paramString, g paramg)
  {
    String str2 = com.estrongs.android.scanner.b.b.a().b(paramString);
    String str1 = str2;
    if (str2 == null) {
      str1 = com.estrongs.android.scanner.b.b.a().d(paramString);
    }
    paramString = str1;
    if (paramg != null)
    {
      paramString = str1;
      if (str1 != null) {
        paramString = paramg.a(str1);
      }
    }
    return paramString;
  }
  
  private static boolean a(long paramLong1, long paramLong2)
  {
    int i = (int)Math.floor(paramLong2 / 86400000L);
    int j = (int)Math.floor((paramLong2 - i * 86400000L) / 3600000L);
    int k = (int)Math.floor((paramLong2 - i * 86400000L - j * 3600000L) / 60000L);
    if (i > 0) {
      return (paramLong1 < (i + 1) * 86400000L) && (paramLong1 >= i * 86400000L);
    }
    if (j > 0) {
      return (paramLong1 < (j + 1) * 3600000L) && (paramLong1 >= j * 3600000L);
    }
    return (paramLong1 < (k + 1) * 60000L) && (paramLong1 >= k * 60000L);
  }
  
  public static boolean a(Pair<Long, List<b>> paramPair, h paramh, long paramLong, g paramg)
  {
    if (paramh.getFileType().a()) {}
    while ((paramh.lastModified() > paramLong) || (paramLong - paramh.lastModified() > 2505600000L)) {
      return true;
    }
    if (paramPair == null) {
      return false;
    }
    return a(paramh, paramPair, paramLong, paramg);
  }
  
  private static boolean a(b paramb, h paramh, g paramg)
  {
    String str1 = paramh.getAbsolutePath();
    String str2 = ap.bB(str1);
    int i = a(str1);
    paramg = a(str1, paramg);
    if (paramg == null) {
      return true;
    }
    if ((i == c) && (str2.equals(e)) && (paramg.equals(d)))
    {
      paramb.i.add(new i(str1, paramh.getName(), paramh.length(), paramg, paramh.lastModified()));
      j = paramb.i.size();
      return true;
    }
    return false;
  }
  
  private static boolean a(h paramh, Pair<Long, List<b>> paramPair, long paramLong, g paramg)
  {
    long l = ((Long)first).longValue();
    paramPair = (List)second;
    if (!a(paramLong - paramh.lastModified(), l)) {
      return false;
    }
    if (a(paramPair, paramh, paramg) != null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */