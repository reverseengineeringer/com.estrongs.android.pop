package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ga
{
  gg a;
  private cg b;
  private Context c;
  
  public ga(Context paramContext)
  {
    c = paramContext;
    a(new gd(this, (Activity)paramContext));
  }
  
  private String a(String paramString)
  {
    try
    {
      String str2 = am.A(paramString);
      String str1 = am.a(paramString);
      Object localObject1 = am.y(paramString);
      if ((str2 != null) && (paramString.length() > 0) && (localObject1 != null) && (((String)localObject1).length() > 0)) {
        return paramString;
      }
      str2 = am.a(paramString, 1);
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
          str3 = am.A(((h)localObject2).getAbsolutePath());
          String str4 = am.a(((h)localObject2).getAbsolutePath());
          localObject2 = am.y(((h)localObject2).getAbsolutePath());
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
  
  private void a(gd paramgd)
  {
    b = new ct(c).a(paramgd.aq()).b(2131427339, new gc(this, paramgd)).c(2131427340, new gb(this)).b();
    b.setTitle(2131427361);
  }
  
  public ga a(gg paramgg)
  {
    a = paramgg;
    return this;
  }
  
  public void a()
  {
    b.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */