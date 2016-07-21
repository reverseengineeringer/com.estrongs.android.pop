package com.estrongs.fs.impl.c;

import android.content.pm.ApplicationInfo;
import com.estrongs.android.pop.FexApplication;
import java.io.File;
import java.util.List;

public class d
  extends b
{
  public ApplicationInfo a;
  public List<b> b;
  
  public d(ApplicationInfo paramApplicationInfo, List<b> paramList, String paramString1, String paramString2)
  {
    a = paramApplicationInfo;
    b = paramList;
    absolutePath = paramString1;
    setName(paramString2);
    size = -1L;
    type = com.estrongs.fs.w.a;
    putExtra("child_count", Integer.valueOf(paramList.size()));
    paramApplicationInfo = new File(sourceDir);
    if (paramApplicationInfo.exists()) {
      lastModified = paramApplicationInfo.lastModified();
    }
  }
  
  public com.estrongs.fs.impl.b.d a()
  {
    return new com.estrongs.fs.impl.b.d(a.sourceDir, com.estrongs.fs.w.b, com.estrongs.android.pop.utils.w.a(FexApplication.a().getPackageManager(), a), a);
  }
  
  public void a(long paramLong)
  {
    size = paramLong;
  }
  
  public boolean exists()
  {
    return (b != null) && (b.size() > 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */