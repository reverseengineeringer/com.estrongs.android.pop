package com.estrongs.android.pop.a;

import android.content.Intent;
import com.estrongs.android.pop.FexApplication;

public class a
{
  public static String a(String paramString1, String paramString2, i parami)
  {
    paramString1 = new b(paramString1, paramString2, parami);
    FexApplication.a().bindService(new Intent("ESPermMgrService"), paramString1, 1);
    return null;
  }
  
  public static void a(j paramj)
  {
    paramj = new e(paramj);
    FexApplication.a().bindService(new Intent("ESPermMgrService"), paramj, 1);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    paramString1 = new c(paramString1, paramString2);
    FexApplication.a().bindService(new Intent("ESPermMgrService"), paramString1, 1);
  }
  
  public static void b(String paramString1, String paramString2)
  {
    paramString1 = new d(paramString1, paramString2);
    FexApplication.a().bindService(new Intent("ESPermMgrService"), paramString1, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */