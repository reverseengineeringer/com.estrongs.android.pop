package com.estrongs.android.ui.dialog;

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
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.fs.b.am;
import com.estrongs.fs.b.an;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Set;

class bt
  extends BaseExpandableListAdapter
{
  bt(bj parambj) {}
  
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
      paramView = LayoutInflater.from(a.a).inflate(2130903075, null);
      paramViewGroup = new bx();
      a = ((TextView)paramView.findViewById(2131362021));
      b = ((TextView)paramView.findViewById(2131361897));
      c = ((ImageView)paramView.findViewById(2131361892));
      d = paramView.findViewById(2131361896);
      paramView.setTag(paramViewGroup);
      ((ImageView)paramView.findViewById(2131361895)).setImageDrawable(al.a(paramView.getContext()).k());
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, a.a(a.a, 46.0F)));
      c.setOnClickListener(new bu(this));
      paramView.setOnClickListener(new bv(this));
      AppFolderInfoManager.RemnantFolder localRemnantFolder = (AppFolderInfoManager.RemnantFolder)a.i.get(paramInt1)).c.get(paramInt2);
      String str = bj.a(a, a);
      localObject = (am)localRemnantFolder.a();
      if (localObject == null) {
        break label541;
      }
      localObject = ((am)localObject).b();
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
      i = 2130837966;
      label475:
      ((ImageView)localObject).setImageResource(i);
      e = paramInt1;
      f = paramInt2;
      c.setTag(paramViewGroup);
      paramViewGroup = paramView.findViewById(2131361896);
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
      paramViewGroup = (bx)paramView.getTag();
      break;
      localObject = a.a.getString(2131427959);
      break label420;
      i = 2130837969;
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
      paramViewGroup = LayoutInflater.from(a.a).inflate(2130903073, null);
      paramViewGroup.setLayoutParams(new AbsListView.LayoutParams(-1, a.a(a.a, 54.0F)));
    }
    Object localObject = (bs)a.i.get(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131361891);
    paramView = (ImageView)paramViewGroup.findViewById(2131361895);
    localTextView.setText(((bs)localObject).a() + " (" + ((bs)localObject).b() + ")");
    localObject = AppFolderInfoManager.d().a(b);
    if (localObject != null)
    {
      localObject = new File((String)localObject);
      if (((File)localObject).exists()) {
        paramView.setImageDrawable(com.estrongs.android.d.f.e(new com.estrongs.fs.impl.local.f((File)localObject)));
      }
    }
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt == 0) {
        paramView.setImageDrawable(a.a.getResources().getDrawable(2130837647));
      }
      paramView = (ImageView)paramViewGroup.findViewById(2131362017);
      if (paramBoolean)
      {
        paramView.setImageResource(2130837512);
        paramView = paramViewGroup.findViewById(2131361896);
        if (!paramBoolean) {
          break label268;
        }
      }
      label268:
      for (paramInt = 8;; paramInt = 0)
      {
        paramView.setVisibility(paramInt);
        return paramViewGroup;
        paramView.setImageResource(2130837511);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */