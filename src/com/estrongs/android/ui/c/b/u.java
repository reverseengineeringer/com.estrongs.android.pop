package com.estrongs.android.ui.c.b;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.LinearLayout;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.ui.c.a.h;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.widget.g;
import com.estrongs.fs.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class u
  extends a
{
  public u(FileExplorerActivity paramFileExplorerActivity, LinearLayout paramLinearLayout, boolean paramBoolean)
  {
    super(paramFileExplorerActivity, paramLinearLayout, paramBoolean);
  }
  
  private void a(h paramh)
  {
    boolean bool;
    String[] arrayOfString;
    if (e() < 6)
    {
      bool = true;
      if (!bool) {
        break label141;
      }
      if (e() != 1) {
        break label97;
      }
      arrayOfString = new String[2];
      arrayOfString[0] = a.getString(2131428438);
      arrayOfString[1] = a.getString(2131427373);
    }
    for (;;)
    {
      new ct(a).a(2131428042).a(arrayOfString, -1, new al(this, bool, paramh)).d(false).c();
      return;
      bool = false;
      break;
      label97:
      arrayOfString = new String[3];
      arrayOfString[0] = a.getString(2131428438);
      arrayOfString[1] = a.getString(2131427373);
      arrayOfString[2] = a.getString(2131427347);
      continue;
      label141:
      if (e() == 1)
      {
        arrayOfString = new String[1];
        arrayOfString[0] = a.getString(2131427373);
      }
      else
      {
        arrayOfString = new String[2];
        arrayOfString[0] = a.getString(2131427373);
        arrayOfString[1] = a.getString(2131427347);
      }
    }
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(e.keySet());
    Object localObject = f.iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.remove((String)((Iterator)localObject).next());
    }
    localObject = new String[localArrayList.size()];
    int i = 0;
    while (i < localArrayList.size())
    {
      String str = (String)localArrayList.get(i);
      localObject[i] = ((h)e.get(str)).a();
      i += 1;
    }
    new ct(a).a(2131428042).a((CharSequence[])localObject, -1, new am(this, localArrayList, paramBoolean, paramString)).d(false).c();
  }
  
  private void m()
  {
    Object localObject = new ah(this, com.estrongs.android.pop.ad.a(a).p());
    localObject = new ai(this, a, b.b(), (i)localObject);
    ((g)localObject).a(a.getText(2131428436));
    ((g)localObject).b(a.getString(2131427362), new aj(this, (g)localObject));
    ((g)localObject).c(a.getString(2131427340), new ak(this));
    ((g)localObject).c(true);
  }
  
  private String n()
  {
    return f() + "_count";
  }
  
  protected void b() {}
  
  protected void c()
  {
    super.c();
    SharedPreferences.Editor localEditor = g.edit();
    localEditor.putInt(n(), f.size());
    localEditor.commit();
  }
  
  protected String f()
  {
    return "tookit_block";
  }
  
  protected List<String> g()
  {
    com.estrongs.android.pop.view.utils.v[] arrayOfv = n.b().c(a);
    ArrayList localArrayList = new ArrayList();
    if ((cc.a()) && (!com.estrongs.android.pop.z.W))
    {
      localArrayList.add("pcs_disk");
      localArrayList.add("remote_manager");
      if ((!cc.a()) || (arrayOfv == null) || (arrayOfv.length <= 0)) {
        break label217;
      }
      localArrayList.add("baidu_tool");
    }
    for (;;)
    {
      if (!com.estrongs.android.pop.z.al) {
        localArrayList.add("send");
      }
      localArrayList.add("task_manager");
      if (localArrayList.size() < 6) {
        localArrayList.add("recycle");
      }
      if (localArrayList.size() < 6) {
        localArrayList.add("ftp");
      }
      if (localArrayList.size() < 6) {
        localArrayList.add("downloader");
      }
      if (localArrayList.size() < 6) {
        localArrayList.add("disk_usage");
      }
      if (localArrayList.size() < 6) {
        localArrayList.add("music_player");
      }
      return localArrayList;
      localArrayList.add("cloud");
      break;
      label217:
      if (!com.estrongs.android.pop.z.d) {
        localArrayList.add("my_network");
      }
    }
  }
  
  protected void h()
  {
    e = new HashMap();
    if (!com.estrongs.android.pop.z.ae)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838094);
      ((h)localObject).a(a.getString(2131428434));
      ((h)localObject).a(new v(this));
      ((h)localObject).b("remote_manager");
      e.put("remote_manager", localObject);
    }
    Object localObject = n.b().c(a);
    h localh;
    if ((cc.a()) && (localObject != null) && (localObject.length > 0))
    {
      localh = new h(a);
      localh.a(2130838097);
      localh.a(0B);
      localh.a(new ag(this, (com.estrongs.android.pop.view.utils.v[])localObject));
      localh.b("baidu_tool");
      e.put("baidu_tool", localh);
    }
    if (!com.estrongs.android.pop.z.d)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838086);
      ((h)localObject).a(a.getString(2131428435));
      ((h)localObject).a(new an(this));
      ((h)localObject).b("lan");
      e.put("lan", localObject);
    }
    if (!com.estrongs.android.pop.z.al)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838099);
      ((h)localObject).a(a.getString(2131428436));
      ((h)localObject).a(new ao(this));
      ((h)localObject).b("send");
      e.put("send", localObject);
    }
    if (!com.estrongs.android.pop.z.B)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838102);
      ((h)localObject).a(a.getString(2131428037));
      ((h)localObject).a(new ap(this));
      ((h)localObject).b("task_manager");
      e.put("task_manager", localObject);
    }
    if (!com.estrongs.android.pop.z.ag)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838093);
      ((h)localObject).a(a.getString(2131428402));
      ((h)localObject).a(new aq(this));
      ((h)localObject).b("recycle");
      e.put("recycle", localObject);
    }
    if (!com.estrongs.android.pop.z.U)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838073);
      ((h)localObject).a(a.getString(2131427412));
      ((h)localObject).a(new ar(this));
      ((h)localObject).b("cloud");
      e.put("cloud", localObject);
    }
    if ((cc.a()) && (!com.estrongs.android.pop.z.W))
    {
      localObject = new h(a);
      ((h)localObject).a(2130838101);
      ((h)localObject).a(a.getString(2131428653));
      ((h)localObject).a(new as(this));
      ((h)localObject).b("pcs_disk");
      e.put("pcs_disk", localObject);
    }
    localObject = new h(a);
    ((h)localObject).a(2130838080);
    ((h)localObject).a(a.getString(2131427411));
    ((h)localObject).a(new aw(this));
    ((h)localObject).b("ftp");
    e.put("ftp", localObject);
    if (com.estrongs.android.pop.z.e)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838070);
      ((h)localObject).a(a.getString(2131427413));
      ((h)localObject).a(new w(this));
      ((h)localObject).b("bluetooth");
      e.put("bluetooth", localObject);
    }
    if (!com.estrongs.android.pop.z.T)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838075);
      ((h)localObject).a(a.getString(2131428223));
      ((h)localObject).a(new x(this));
      ((h)localObject).b("downloader");
      e.put("downloader", localObject);
    }
    if (!com.estrongs.android.pop.z.D)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838077);
      ((h)localObject).a(a.getString(2131427495));
      ((h)localObject).a(new y(this));
      ((h)localObject).b("net_manager");
      e.put("net_manager", localObject);
    }
    if (!com.estrongs.android.pop.z.Z)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838083);
      ((h)localObject).a(a.getString(2131427416));
      ((h)localObject).a(new z(this));
      ((h)localObject).b("hidelist");
      e.put("hidelist", localObject);
    }
    if (!com.estrongs.android.pop.z.C)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838096);
      ((h)localObject).a(a.getString(2131427814));
      ((h)localObject).a(new aa(this));
      ((h)localObject).b("root");
      e.put("root", localObject);
    }
    if (!com.estrongs.android.pop.z.R)
    {
      localObject = new h(a);
      ((h)localObject).a(2130838081);
      ((h)localObject).a(a.getString(2131428356));
      ((h)localObject).a(new ab(this));
      ((h)localObject).b("gesture");
      e.put("gesture", localObject);
    }
    localObject = new h(a);
    ((h)localObject).a(2130838076);
    ((h)localObject).a(a.getString(2131428505));
    ((h)localObject).a(new ac(this));
    ((h)localObject).b("my_network");
    e.put("my_network", localObject);
    localObject = new h(a);
    ((h)localObject).a(2130838074);
    ((h)localObject).a(a.getString(2131427638));
    ((h)localObject).a(new ad(this));
    ((h)localObject).b("disk_usage");
    e.put("disk_usage", localObject);
    localObject = new h(a);
    ((h)localObject).a(2130838089);
    ((h)localObject).a(a.getString(2131428014));
    ((h)localObject).a(new ae(this));
    ((h)localObject).b("music_player");
    e.put("music_player", localObject);
    localObject = e.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      localh = (h)((Iterator)localObject).next();
      localh.a(new af(this, localh));
    }
  }
  
  protected int i()
  {
    return 2130903067;
  }
  
  protected int j()
  {
    return 3;
  }
  
  protected int k()
  {
    return g.getInt(n(), 6);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */