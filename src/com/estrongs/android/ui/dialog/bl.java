package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.ExpandableListView;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.d.a;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class bl
{
  Activity a;
  Set<String> b = new HashSet();
  bv c;
  String d = "";
  String e = "";
  boolean f = false;
  ci g;
  View h = null;
  ArrayList<bu> i = new ArrayList();
  private c j = null;
  
  public bl(a parama, String paramString1, String paramString2, ArrayList<AppFolderInfoManager.RemnantFolder> paramArrayList, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a = parama.G();
    i.add(new bu(paramString1, paramString2, paramArrayList));
    a(paramArrayList);
    d = a.getString(2131231132);
    e = a.getString(2131231134);
    bk.a(a);
    paramArrayList = FexApplication.a();
    if (paramString1 != null) {}
    for (;;)
    {
      paramString1 = a(paramArrayList, paramString1);
      g = new cv(FexApplication.a()).a(2131230724).a(paramString1).b(a.getString(2131230845), new bm(this, paramOnDismissListener, parama)).c(a.getResources().getString(2131231265), null).b();
      g.getWindow().setType(2003);
      g.setOnDismissListener(new bo(this, paramOnDismissListener));
      g.setCanceledOnTouchOutside(false);
      g.show();
      c();
      a(0, true);
      return;
      paramString1 = paramString2;
    }
  }
  
  private AppFolderInfoManager.RemnantFolder a(int paramInt)
  {
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext())
    {
      bu localbu = (bu)localIterator.next();
      if (paramInt < c.size()) {
        return (AppFolderInfoManager.RemnantFolder)c.get(paramInt);
      }
      paramInt -= c.size();
    }
    return null;
  }
  
  private ao a(int paramInt, boolean paramBoolean)
  {
    if (paramInt >= d()) {}
    AppFolderInfoManager.RemnantFolder localRemnantFolder;
    do
    {
      return null;
      ArrayList localArrayList = new ArrayList();
      localRemnantFolder = a(paramInt);
      if (localRemnantFolder != null) {
        break;
      }
    } while (!paramBoolean);
    b(paramInt);
    return null;
    try
    {
      ao localao2 = (ao)localRemnantFolder.a();
      if (localao2 != null)
      {
        if ((localao2.getTaskStatus() == 4) && (paramBoolean)) {
          b(paramInt);
        }
        return localao2;
      }
    }
    finally {}
    localList.add(new f(new File(a)));
    ao localao1 = new ao(localList, d.a(), true);
    localRemnantFolder.a(localao1);
    localao1.addProgressListener(new bp(this));
    localao1.addTaskStatusChangeListener(new br(this, paramBoolean, paramInt));
    localao1.a(ao.f);
    localao1.execute();
    return localao1;
  }
  
  private String a(String paramString)
  {
    int k = paramString.lastIndexOf("/");
    if (k == -1) {
      return paramString;
    }
    return paramString.substring(k + 1);
  }
  
  private void a(ArrayList<AppFolderInfoManager.RemnantFolder> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      AppFolderInfoManager.RemnantFolder localRemnantFolder = (AppFolderInfoManager.RemnantFolder)paramArrayList.next();
      if (!b) {
        b.add(a);
      }
    }
  }
  
  private void b(int paramInt)
  {
    paramInt += 1;
    if (paramInt < d()) {
      a(paramInt, true);
    }
  }
  
  private int d()
  {
    Iterator localIterator = i.iterator();
    for (int k = 0; localIterator.hasNext(); k = nextc.size() + k) {}
    return k;
  }
  
  private void e()
  {
    ((TextView)h.findViewById(2131624545)).setText(Html.fromHtml(a.getString(2131231197) + "<font size='8px' color='red'>(" + a.getString(2131231198) + ")</font>"));
  }
  
  int a()
  {
    return b.size();
  }
  
  protected View a(Context paramContext, String paramString)
  {
    h = k.a(paramContext).inflate(2130903147, null);
    paramContext = (ExpandableListView)h.findViewById(2131624390);
    c = new bv(this);
    paramContext.setAdapter(c);
    paramContext.setDividerHeight(0);
    paramContext.setGroupIndicator(null);
    e();
    paramContext = (CheckBox)h.findViewById(2131624546);
    paramContext.setChecked(f);
    paramContext.setOnCheckedChangeListener(new bt(this));
    return h;
  }
  
  public void a(String paramString1, String paramString2, ArrayList<AppFolderInfoManager.RemnantFolder> paramArrayList)
  {
    i.add(new bu(paramString1, paramString2, paramArrayList));
    a(paramArrayList);
    c.notifyDataSetChanged();
    a(0, true);
  }
  
  List<h> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(new f(new File((String)localIterator.next())));
    }
    return localArrayList;
  }
  
  public void c()
  {
    int k = a.getResources().getDisplayMetrics().widthPixels;
    int m = a.getResources().getDisplayMetrics().heightPixels;
    g.getWindow().setLayout(Math.min(k, m), -2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */