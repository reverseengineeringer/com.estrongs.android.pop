package com.estrongs.android.cleaner.scandisk.a;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.util.ap;
import java.util.List;

public class c
  extends a
{
  private final String g = "Download";
  private final int h = 5;
  private PackageManager i = FexApplication.a().getPackageManager();
  
  public c(com.estrongs.android.cleaner.i parami, List<String> paramList)
  {
    super(parami, paramList, 2131231177);
  }
  
  public static String g()
  {
    return ap.bV(ad.a(FexApplication.a()).A());
  }
  
  public int a()
  {
    return 5;
  }
  
  protected void a(com.estrongs.android.cleaner.h paramh, com.estrongs.android.cleaner.scandisk.i parami)
  {
    paramh.c(1);
    paramh.a(false);
    f.a(a, d, false);
    if (b.endsWith(".apk"))
    {
      Object localObject = null;
      PackageInfo localPackageInfo = w.d(i, a);
      if (localPackageInfo != null)
      {
        localObject = applicationInfo;
        sourceDir = a;
        publicSourceDir = a;
        localObject = applicationInfo.loadLabel(i).toString();
      }
      if (localObject != null) {
        paramh.d((String)localObject);
      }
    }
  }
  
  protected boolean a(com.estrongs.android.cleaner.scandisk.i parami)
  {
    return true;
  }
  
  protected boolean c(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    return c != 2;
  }
  
  public String f()
  {
    return "Download";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */