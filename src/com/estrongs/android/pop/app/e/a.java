package com.estrongs.android.pop.app.e;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.dianxinos.lockscreen.a.d;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
  implements com.dianxinos.lockscreen.a.c
{
  private long a;
  
  private String a(long paramLong1, long paramLong2)
  {
    Object localObject = new SimpleDateFormat("dd");
    int i = Integer.parseInt(((SimpleDateFormat)localObject).format(Long.valueOf(paramLong1)));
    i = Integer.parseInt(((SimpleDateFormat)localObject).format(Long.valueOf(paramLong2))) - i;
    localObject = FexApplication.a();
    if (i > 0) {
      return ((Context)localObject).getResources().getQuantityString(2131689472, i, new Object[] { Integer.valueOf(i) });
    }
    return ((Context)localObject).getResources().getString(2131231493);
  }
  
  private String b(long paramLong)
  {
    return new SimpleDateFormat("HH:mm").format(Long.valueOf(paramLong));
  }
  
  public String a(long paramLong)
  {
    if (paramLong < 0L) {
      return "";
    }
    String str1 = a(a - paramLong, a);
    String str2 = b(a - paramLong);
    return str1 + ", " + str2;
  }
  
  public void a()
  {
    FexApplication localFexApplication = FexApplication.a();
    Intent localIntent = new Intent(localFexApplication, FileExplorerActivity.class);
    localIntent.addFlags(268435456);
    localIntent.putExtra("action", "show_file_log");
    localFexApplication.startActivity(localIntent);
  }
  
  public String b()
  {
    return FexApplication.a().getString(2131231144);
  }
  
  public List<d> c()
  {
    a = System.currentTimeMillis();
    Object localObject = c.a().a(a, 7L);
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      e locale = (e)((Iterator)localObject).next();
      localArrayList.add(new b(this, locale.f(), locale.c(), locale.d(), locale.g()));
    }
    if (localArrayList.size() == 0) {
      localArrayList.add(new b(this, -1, FexApplication.a().getString(2131231143), -1L, FexApplication.a().getResources().getDrawable(2130838075)));
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */