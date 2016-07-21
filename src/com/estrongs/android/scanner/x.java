package com.estrongs.android.scanner;

import android.util.Log;
import com.estrongs.android.cleaner.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class x
{
  private static List<String> a;
  
  public static List<String> a()
  {
    if (a == null)
    {
      a = new ArrayList();
      Iterator localIterator = j.d().iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        String str1 = str2;
        if (!str2.endsWith("/")) {
          str1 = str2 + "/";
        }
        Log.i("LocalPathUtils", "root:" + str1);
        a.add(str1);
      }
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */