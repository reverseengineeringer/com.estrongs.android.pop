package com.estrongs.android.cleaner.scandisk.b;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

public class b
  extends a
{
  private Set<String> b;
  private Set<String> c;
  private Set<String> d;
  private Pattern e;
  
  public b()
  {
    a();
    e = Pattern.compile("");
    d = new HashSet();
    c = new HashSet();
  }
  
  private void a()
  {
    b = new HashSet();
    b.add(".db");
    b.add(".db-journal");
  }
  
  public boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (d.contains(paramString)) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */