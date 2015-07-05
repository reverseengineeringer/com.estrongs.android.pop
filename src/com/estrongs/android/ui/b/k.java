package com.estrongs.android.ui.b;

import com.estrongs.android.util.bd;
import com.estrongs.fs.b.ad;
import org.json.JSONObject;

class k
  extends com.estrongs.fs.a
{
  private com.estrongs.a.a a = null;
  
  public k(com.estrongs.a.a parama)
  {
    a = parama;
    putExtra("task", parama);
  }
  
  public String getAbsolutePath()
  {
    return getPath();
  }
  
  public String getName()
  {
    String str2 = a.summary().optString("title");
    String str1 = str2;
    if (str2 == null) {
      str1 = "";
    }
    return str1;
  }
  
  public String getPath()
  {
    Object localObject;
    if ((a instanceof ad))
    {
      localObject = ((ad)a).c();
      if (!bd.b((CharSequence)localObject)) {}
    }
    String str;
    do
    {
      return (String)localObject;
      str = a.summary().optString("target");
      localObject = str;
    } while (!bd.a(str));
    return "";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */