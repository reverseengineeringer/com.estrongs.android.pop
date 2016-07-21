package com.estrongs.android.pop.b;

import android.app.Activity;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.g;
import com.estrongs.fs.b.ad;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class a
{
  private static final String a = ;
  private static HashMap<String, Integer> b = new HashMap();
  private static HashMap<String, Integer> c = new HashMap();
  private static Set<String> d = new HashSet();
  private static Set<String> e = new HashSet();
  
  static
  {
    b.put("ftp", Integer.valueOf(1));
    b.put("sftp", Integer.valueOf(1));
    b.put("webdav", Integer.valueOf(1));
    c.put("ftp", Integer.valueOf(1));
    c.put("sftp", Integer.valueOf(1));
    c.put("webdav", Integer.valueOf(1));
  }
  
  public static int a(String paramString)
  {
    return -1;
  }
  
  public static void a(Activity paramActivity, String paramString, int paramInt, Runnable paramRunnable)
  {
    String str = "";
    Object localObject = "";
    if (paramInt == 1)
    {
      localObject = paramActivity.getString(2131231394, new Object[] { paramString.toUpperCase() });
      str = paramActivity.getString(2131231389, new Object[] { paramString.toUpperCase() });
      localObject = new cv(paramActivity).a((CharSequence)localObject).b(str).b(2131231270, new c(paramActivity, paramString, paramRunnable));
      if (paramInt == 3) {
        break label198;
      }
    }
    label198:
    for (paramActivity = null;; paramActivity = new b(paramString, paramRunnable, paramActivity))
    {
      ((cv)localObject).c(2131231265, paramActivity).c();
      return;
      if (paramInt == 2)
      {
        localObject = paramActivity.getString(2131232515, new Object[] { paramString.toUpperCase() });
        str = paramActivity.getString(2131231788, new Object[] { paramString.toUpperCase() });
        break;
      }
      if (paramInt != 3) {
        break;
      }
      localObject = paramActivity.getString(2131232515, new Object[] { paramString.toUpperCase() });
      str = paramActivity.getString(2131231691, new Object[] { paramString.toUpperCase() });
      break;
    }
  }
  
  private static String b(String paramString)
  {
    return String.format("ftp://cmelody:passw0rd@192.168.1.21/plugins/%1$s/es_%2$s.zip", new Object[] { c.get(paramString), paramString });
  }
  
  private static void b(Activity paramActivity, String paramString, Runnable paramRunnable)
  {
    ad localad;
    if ("ftps".equalsIgnoreCase(paramString))
    {
      str1 = b("ftp");
      localad = new ad(com.estrongs.fs.d.a(paramActivity), str1, a);
      if (!a.endsWith(File.separator)) {
        break label148;
      }
    }
    label148:
    for (String str1 = a + ap.d(str1);; str1 = a + File.separator + ap.d(str1))
    {
      String str2 = paramActivity.getString(2131231394, new Object[] { paramString.toUpperCase() });
      String str3 = paramActivity.getString(2131231393, new Object[] { paramString.toUpperCase() });
      localad.setDescription(str2);
      new d(paramActivity, str2, str3, localad, str1, paramString, paramRunnable, paramActivity).show();
      localad.execute();
      return;
      str1 = b(paramString);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */