package com.estrongs.fs.impl.pcs;

import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import org.json.JSONObject;

public class a
  extends com.estrongs.fs.a
{
  public String a = null;
  public String b = null;
  public String c = null;
  public long d = 0L;
  private String e = null;
  
  public a(String paramString1, String paramString2, String paramString3)
  {
    b = paramString2;
    c = paramString3;
    e = paramString1;
    if (!paramString3.startsWith("/")) {
      new StringBuilder().append("/").append(paramString3).toString();
    }
  }
  
  public a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this(paramString1 + ":" + paramString2, paramString3, paramString4);
  }
  
  public a(JSONObject paramJSONObject)
  {
    this(paramJSONObject.optString("user_info"), paramJSONObject.optString("source"), "/apps/Downloads/");
    a(paramJSONObject.optLong("size"));
    b(paramJSONObject.optLong("end_time"));
    putExtra("name", paramJSONObject.optString("title"));
  }
  
  private void a()
  {
    path = (String.format("pcs://%s@pcs/files", new Object[] { e }) + c);
    if (bd.b(a)) {
      path += a;
    }
    if (!path.endsWith(".pcs")) {
      path += ".pcs";
    }
    absolutePath = path;
  }
  
  public void a(long paramLong)
  {
    size = paramLong;
  }
  
  void b(long paramLong)
  {
    lastModified = paramLong;
  }
  
  public final String getAbsolutePath()
  {
    if (path == null) {
      a();
    }
    return absolutePath;
  }
  
  public String getName()
  {
    Object localObject = getExtra("name");
    if (localObject != null) {
      name = localObject.toString();
    }
    if (bd.a(name)) {
      name = am.d(b);
    }
    return name;
  }
  
  public String getPath()
  {
    if (path == null) {
      a();
    }
    return path;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.pcs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */