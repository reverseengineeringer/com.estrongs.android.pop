package com.estrongs.android.ui.dialog;

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
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.am;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class bj
{
  ESActivity a;
  Set<String> b = new HashSet();
  bt c;
  String d = "";
  String e = "";
  boolean f = false;
  cg g;
  View h = null;
  ArrayList<bs> i = new ArrayList();
  
  public bj(ESActivity paramESActivity, String paramString1, String paramString2, ArrayList<AppFolderInfoManager.RemnantFolder> paramArrayList, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a = paramESActivity;
    i.add(new bs(paramString1, paramString2, paramArrayList));
    a(paramArrayList);
    d = paramESActivity.getString(2131427428);
    e = paramESActivity.getString(2131427429);
    bd.a(paramESActivity);
    paramArrayList = FexApplication.a();
    if (paramString1 != null) {}
    for (;;)
    {
      paramString1 = a(paramArrayList, paramString1);
      g = new ct(FexApplication.a()).a(2131427488).a(paramString1).b(paramESActivity.getString(2131427347), new bk(this, paramESActivity, paramOnDismissListener)).c(paramESActivity.getResources().getString(2131427340), null).b();
      g.getWindow().setType(2003);
      g.setOnDismissListener(new bm(this, paramOnDismissListener, paramESActivity));
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
      bs localbs = (bs)localIterator.next();
      if (paramInt < c.size()) {
        return (AppFolderInfoManager.RemnantFolder)c.get(paramInt);
      }
      paramInt -= c.size();
    }
    return null;
  }
  
  private am a(int paramInt, boolean paramBoolean)
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
      am localam2 = (am)localRemnantFolder.a();
      if (localam2 != null)
      {
        if ((localam2.getTaskStatus() == 4) && (paramBoolean)) {
          b(paramInt);
        }
        return localam2;
      }
    }
    finally {}
    localList.add(new f(new File(a)));
    am localam1 = new am(localList, d.a(), true);
    localRemnantFolder.a(localam1);
    localam1.addProgressListener(new bn(this));
    localam1.addTaskStatusChangeListener(new bp(this, paramBoolean, paramInt));
    localam1.a(am.f);
    localam1.execute();
    return localam1;
  }
  
  private String a(String paramString)
  {
    int j = paramString.lastIndexOf("/");
    if (j == -1) {
      return paramString;
    }
    return paramString.substring(j + 1);
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
    for (int j = 0; localIterator.hasNext(); j = nextc.size() + j) {}
    return j;
  }
  
  private void e()
  {
    ((TextView)h.findViewById(2131362018)).setText(Html.fromHtml(a.getString(2131428491) + "<font size='8px' color='red'>(" + a.getString(2131428492) + ")</font>"));
  }
  
  int a()
  {
    return b.size();
  }
  
  protected View a(Context paramContext, String paramString)
  {
    h = g.a(paramContext).inflate(2130903074, null);
    paramContext = (ExpandableListView)h.findViewById(2131361893);
    c = new bt(this);
    paramContext.setAdapter(c);
    paramContext.setDividerHeight(0);
    paramContext.setGroupIndicator(null);
    e();
    paramContext = (CheckBox)h.findViewById(2131362019);
    paramContext.setChecked(f);
    paramContext.setOnCheckedChangeListener(new br(this));
    return h;
  }
  
  public void a(String paramString1, String paramString2, ArrayList<AppFolderInfoManager.RemnantFolder> paramArrayList)
  {
    i.add(new bs(paramString1, paramString2, paramArrayList));
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
    int j = a.getResources().getDisplayMetrics().widthPixels;
    int k = a.getResources().getDisplayMetrics().heightPixels;
    g.getWindow().setLayout(Math.min(j, k), -2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */