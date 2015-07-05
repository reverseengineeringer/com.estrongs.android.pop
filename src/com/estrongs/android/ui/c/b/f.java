package com.estrongs.android.ui.c.b;

import android.os.Handler;
import android.widget.LinearLayout;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.c.a.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class f
  extends a
{
  public static int i = 5;
  private boolean j;
  private Handler k;
  
  public f(FileExplorerActivity paramFileExplorerActivity, LinearLayout paramLinearLayout, boolean paramBoolean)
  {
    super(paramFileExplorerActivity, paramLinearLayout, paramBoolean);
  }
  
  private void a(String paramString, int paramInt)
  {
    paramString = (d)e.get(paramString);
    if ((paramInt > 10) && (!h))
    {
      new Thread(new i(this, paramInt, paramString)).start();
      return;
    }
    paramString.b(paramInt);
  }
  
  protected void b()
  {
    j = false;
    k = new Handler();
  }
  
  protected String f()
  {
    return "media_library_block";
  }
  
  protected List<String> g()
  {
    ArrayList localArrayList = new ArrayList();
    Collections.addAll(localArrayList, new String[] { "picture", "music", "video", "book", "application" });
    return localArrayList;
  }
  
  protected void h()
  {
    e = new HashMap();
    d locald1 = new d(a);
    locald1.a(2130837716);
    locald1.a(a.getString(2131427421));
    locald1.b("gallery://local/buckets/");
    e.put("picture", locald1);
    d locald2 = new d(a);
    locald2.a(2130837715);
    locald2.a(a.getString(2131427422));
    locald2.b("music://");
    e.put("music", locald2);
    d locald3 = new d(a);
    locald3.a(2130837723);
    locald3.a(a.getString(2131427425));
    locald3.b("video://");
    e.put("video", locald3);
    d locald4 = new d(a);
    locald4.a(2130837706);
    locald4.a(a.getString(2131427424));
    locald4.b("book://");
    e.put("book", locald4);
    d locald5 = new d(a);
    locald5.a(2130837704);
    locald5.a(a.getString(2131427423));
    locald5.b("app://");
    e.put("application", locald5);
    d locald6 = new d(a);
    locald6.a(2130837708);
    locald6.a(a.getString(2131427359));
    locald6.b(ad.a(a).z());
    e.put("download", locald6);
    Iterator localIterator = e.values().iterator();
    while (localIterator.hasNext())
    {
      d locald7 = (d)localIterator.next();
      locald7.a(new g(this, locald7, locald6, locald1, locald2, locald3, locald4, locald5));
    }
  }
  
  protected int i()
  {
    return 2130903065;
  }
  
  protected int j()
  {
    return i;
  }
  
  protected int k()
  {
    return i;
  }
  
  public void l()
  {
    h = false;
    m();
  }
  
  public void m()
  {
    if (!j)
    {
      j = true;
      new h(this).execute(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */