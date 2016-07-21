package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class gd
{
  gj a;
  private ci b;
  private Context c;
  
  public gd(Context paramContext)
  {
    c = paramContext;
    a(new gg(this, (Activity)paramContext));
  }
  
  private String a(String paramString)
  {
    try
    {
      String str2 = ap.C(paramString);
      String str1 = ap.a(paramString);
      Object localObject1 = ap.A(paramString);
      if ((str2 != null) && (paramString.length() > 0) && (localObject1 != null) && (((String)localObject1).length() > 0)) {
        return paramString;
      }
      str2 = ap.a(paramString, 1);
      String str3;
      if ((localObject1 != null) && (((String)localObject1).length() > 0))
      {
        str3 = ad.a(FexApplication.a()).a((String)localObject1, str1, 1, null);
        if ((str3 != null) && (str3.length() > 0)) {
          return "smb://" + (String)localObject1 + ":" + str3 + "@" + str1 + str2;
        }
      }
      localObject1 = new ArrayList();
      ad.a(c).a((List)localObject1);
      if (((ArrayList)localObject1).size() > 0)
      {
        localObject1 = ((ArrayList)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = (h)((Iterator)localObject1).next();
          str3 = ap.C(((h)localObject2).getAbsolutePath());
          String str4 = ap.a(((h)localObject2).getAbsolutePath());
          localObject2 = ap.A(((h)localObject2).getAbsolutePath());
          if (str4.equalsIgnoreCase(str1))
          {
            str1 = "smb://" + (String)localObject2 + ":" + str3 + "@" + str1 + str2;
            return str1;
          }
        }
      }
    }
    catch (Exception localException) {}
    return paramString;
  }
  
  private void a(gg paramgg)
  {
    b = new cv(c).a(paramgg.aE()).b(2131231270, new gf(this, paramgg)).c(2131231265, new ge(this)).b();
    b.setTitle(2131230867);
  }
  
  public gd a(gj paramgj)
  {
    a = paramgj;
    return this;
  }
  
  public void a()
  {
    b.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */