package com.estrongs.fs.impl.g;

import android.net.Uri;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.l;
import com.estrongs.fs.n;
import java.util.HashMap;
import java.util.List;

public class a
  extends l
{
  private HashMap<String, a> a = new HashMap();
  
  public static String[] a(Uri paramUri)
  {
    String str = paramUri.getPath();
    paramUri = str;
    if (str.startsWith("/")) {
      paramUri = str.substring(1);
    }
    return paramUri.split("/");
  }
  
  public h a(String paramString)
  {
    return new n(paramString);
  }
  
  protected List<h> a()
  {
    return null;
  }
  
  public List<h> a(h paramh, TypedMap paramTypedMap)
  {
    if (paramh == null) {
      return null;
    }
    if (!cd.a(paramTypedMap)) {
      return null;
    }
    Object localObject = Uri.parse(paramh.getPath());
    a locala = (a)a.get(((Uri)localObject).getAuthority());
    if (locala == null) {
      return null;
    }
    localObject = a((Uri)localObject);
    int i;
    int j;
    if (localObject != null)
    {
      i = localObject.length;
      if (i == 1) {
        return locala.a();
      }
      if (i == 2)
      {
        i = -1;
        if (paramTypedMap == null) {
          break label128;
        }
        j = paramTypedMap.getInt("from", 1);
        i = paramTypedMap.getInt("to", -1);
      }
    }
    for (;;)
    {
      return locala.a(localObject[1], j, i, paramh.getAbsolutePath());
      return null;
      label128:
      j = 1;
    }
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    if (paramh == null) {
      return null;
    }
    return a(paramh, (TypedMap)null);
  }
  
  protected List<h> a(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    return null;
  }
  
  public void a(String paramString, a parama)
  {
    a.put(paramString, parama);
  }
  
  public boolean a(h paramh, String paramString)
  {
    Object localObject = Uri.parse(paramh.getPath());
    paramh = a((Uri)localObject);
    if (paramh != null)
    {
      int i = paramh.length;
      localObject = (a)a.get(((Uri)localObject).getAuthority());
      if (i == 2) {
        return ((a)localObject).c(paramh[1], paramString);
      }
      if (i == 3) {
        return ((a)localObject).d(paramh[2], paramString);
      }
    }
    return false;
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    Object localObject = Uri.parse(paramString1);
    paramString1 = (a)a.get(((Uri)localObject).getAuthority());
    if (paramString1 == null) {
      return false;
    }
    localObject = a((Uri)localObject);
    if (localObject != null)
    {
      int i = localObject.length;
      if (i == 2) {
        return paramString1.b(localObject[1], paramString2);
      }
      if (i == 3) {
        return paramString1.e(localObject[2]);
      }
    }
    return false;
  }
  
  protected boolean b(String paramString1, String paramString2)
  {
    return false;
  }
  
  public boolean c(String paramString)
  {
    return false;
  }
  
  protected boolean c(String paramString1, String paramString2)
  {
    return false;
  }
  
  protected boolean d(String paramString1, String paramString2)
  {
    return false;
  }
  
  protected boolean e(String paramString)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */