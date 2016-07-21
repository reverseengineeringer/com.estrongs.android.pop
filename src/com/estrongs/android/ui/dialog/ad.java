package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;
import java.util.HashMap;
import java.util.List;

class ad
  extends BaseAdapter
{
  List<ApplicationInfo> a;
  boolean b = false;
  
  public ad(aa paramaa, boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void a(List<ApplicationInfo> paramList)
  {
    a = paramList;
  }
  
  public int getCount()
  {
    if (a != null) {
      return a.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    return a.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView == null)
    {
      localView = k.a(c.mContext).inflate(2130903109, null);
      paramViewGroup = new af(null);
      a = ((ImageView)localView.findViewById(2131624054));
      b = ((TextView)localView.findViewById(2131624352));
      b.setTextColor(at.a(c.mContext).c(2131558661));
      c = ((ImageView)localView.findViewById(2131624353));
      c.setImageDrawable(c.mContext.getResources().getDrawable(2130838431));
      c.setFocusable(true);
      localView.setTag(paramViewGroup);
    }
    for (;;)
    {
      localView.setFocusable(false);
      ApplicationInfo localApplicationInfo = (ApplicationInfo)a.get(paramInt);
      Object localObject = (Drawable)aa.a(c).get(packageName);
      paramView = (View)localObject;
      if (localObject == null) {
        paramView = (View)localObject;
      }
      try
      {
        localObject = c.b.getApplicationIcon(packageName);
        paramView = (View)localObject;
        aa.a(c).put("appInfo.packageName", localObject);
        paramView = (View)localObject;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        for (;;) {}
      }
      a.setImageDrawable(paramView);
      paramView = packageName;
      try
      {
        localObject = c.b.getApplicationLabel(c.b.getApplicationInfo(packageName, 0)).toString();
        paramView = (View)localObject;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1)
      {
        for (;;) {}
      }
      b.setText(paramView);
      c.setOnClickListener(new ae(this, localApplicationInfo, paramView));
      return localView;
      paramViewGroup = (af)paramView.getTag();
      localView = paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */