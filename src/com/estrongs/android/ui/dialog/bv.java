package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder;
import com.estrongs.android.h.a.e;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Set;

class bv
  extends BaseExpandableListAdapter
{
  bv(bl parambl) {}
  
  public Object getChild(int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return 0L;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    int i;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(a.a).inflate(2130903148, null);
      paramViewGroup = new bz();
      a = ((TextView)paramView.findViewById(2131624547));
      b = ((TextView)paramView.findViewById(2131624394));
      c = ((ImageView)paramView.findViewById(2131624389));
      d = paramView.findViewById(2131624393);
      paramView.setTag(paramViewGroup);
      ((ImageView)paramView.findViewById(2131624392)).setImageDrawable(at.a(paramView.getContext()).n());
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, g.a(a.a, 46.0F)));
      c.setOnClickListener(new bw(this));
      paramView.setOnClickListener(new bx(this));
      AppFolderInfoManager.RemnantFolder localRemnantFolder = (AppFolderInfoManager.RemnantFolder)a.i.get(paramInt1)).c.get(paramInt2);
      String str = bl.a(a, a);
      localObject = (ao)localRemnantFolder.a();
      if (localObject == null) {
        break label541;
      }
      localObject = ((ao)localObject).b();
      int k = e;
      int j = f;
      long l2 = c;
      i = k;
      long l1 = l2;
      if (a.f)
      {
        i = (int)(k - (h + j + l));
        j = f;
        l1 = l2 - (g + i + k);
      }
      localObject = i + " " + a.d + ", " + j + " " + a.e;
      str = str + " (" + j.c(l1) + ")";
      label420:
      a.setText(str);
      b.setText((CharSequence)localObject);
      boolean bool = a.b.contains(a);
      localObject = c;
      if (!bool) {
        break label558;
      }
      i = 2130838293;
      label475:
      ((ImageView)localObject).setImageResource(i);
      e = paramInt1;
      f = paramInt2;
      c.setTag(paramViewGroup);
      paramViewGroup = paramView.findViewById(2131624393);
      if (!paramBoolean) {
        break label565;
      }
    }
    label541:
    label558:
    label565:
    for (paramInt1 = 0;; paramInt1 = 8)
    {
      paramViewGroup.setVisibility(paramInt1);
      return paramView;
      paramViewGroup = (bz)paramView.getTag();
      break;
      localObject = a.a.getString(2131231746);
      break label420;
      i = 2130838296;
      break label475;
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    return a.i.get(paramInt)).c.size();
  }
  
  public Object getGroup(int paramInt)
  {
    return null;
  }
  
  public int getGroupCount()
  {
    return a.i.size();
  }
  
  public long getGroupId(int paramInt)
  {
    return 0L;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = LayoutInflater.from(a.a).inflate(2130903146, null);
      paramViewGroup.setLayoutParams(new AbsListView.LayoutParams(-1, g.a(a.a, 54.0F)));
    }
    Object localObject = (bu)a.i.get(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131624309);
    paramView = (ImageView)paramViewGroup.findViewById(2131624392);
    localTextView.setText(((bu)localObject).a() + " (" + ((bu)localObject).b() + ")");
    localObject = AppFolderInfoManager.d().a(b);
    if (localObject != null)
    {
      localObject = new File((String)localObject);
      if (((File)localObject).exists())
      {
        localObject = new f((File)localObject);
        e.a(((h)localObject).getAbsolutePath(), paramView, (h)localObject);
      }
    }
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt == 0) {
        paramView.setImageDrawable(a.a.getResources().getDrawable(2130837895));
      }
      paramView = (ImageView)paramViewGroup.findViewById(2131624544);
      if (paramBoolean)
      {
        paramView.setImageResource(2130838044);
        paramView = paramViewGroup.findViewById(2131624393);
        if (!paramBoolean) {
          break label276;
        }
      }
      label276:
      for (paramInt = 8;; paramInt = 0)
      {
        paramView.setVisibility(paramInt);
        return paramViewGroup;
        paramView.setImageResource(2130838008);
        break;
      }
    }
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */