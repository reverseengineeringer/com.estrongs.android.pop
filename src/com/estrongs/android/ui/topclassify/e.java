package com.estrongs.android.ui.topclassify;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

public class e
{
  private Context a;
  private Map<String, b> b = new HashMap();
  
  public e(Context paramContext)
  {
    a = paramContext;
  }
  
  public static boolean c(String paramString)
  {
    return ("book://".equalsIgnoreCase(paramString)) || ("video://".equalsIgnoreCase(paramString)) || ("music://".equalsIgnoreCase(paramString)) || ("pic://".equalsIgnoreCase(paramString)) || ("gallery://".equalsIgnoreCase(paramString));
  }
  
  public b a(String paramString)
  {
    b localb2 = (b)b.get(paramString);
    b localb1 = localb2;
    if (localb2 == null)
    {
      localb1 = localb2;
      if (c(paramString))
      {
        localb1 = b(paramString);
        b.put(paramString, localb1);
      }
    }
    return localb1;
  }
  
  public b b(String paramString)
  {
    ab localab = null;
    if ("video://".equalsIgnoreCase(paramString)) {
      localab = new ab(paramString, a);
    }
    do
    {
      return localab;
      if ("music://".equalsIgnoreCase(paramString)) {
        return new z(paramString, a);
      }
      if ("book://".equalsIgnoreCase(paramString)) {
        return new a(paramString, a);
      }
    } while ((!"pic://".equalsIgnoreCase(paramString)) && (!"gallery://".equalsIgnoreCase(paramString)));
    return new w(paramString, a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */