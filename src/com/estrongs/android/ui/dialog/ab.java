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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;
import java.util.HashMap;
import java.util.List;

class ab
  extends BaseAdapter
{
  List<ApplicationInfo> a;
  boolean b = false;
  
  public ab(y paramy, boolean paramBoolean)
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
      localView = g.a(c.mContext).inflate(2130903047, null);
      paramViewGroup = new ad(null);
      a = ((ImageView)localView.findViewById(2131361853));
      b = ((TextView)localView.findViewById(2131361854));
      b.setTextColor(al.a(c.mContext).d(2131230738));
      c = ((ImageView)localView.findViewById(2131361855));
      c.setImageDrawable(c.mContext.getResources().getDrawable(2130838059));
      c.setFocusable(true);
      localView.setTag(paramViewGroup);
    }
    for (;;)
    {
      localView.setFocusable(false);
      ApplicationInfo localApplicationInfo = (ApplicationInfo)a.get(paramInt);
      Object localObject = (Drawable)y.a(c).get(packageName);
      paramView = (View)localObject;
      if (localObject == null) {
        paramView = (View)localObject;
      }
      try
      {
        localObject = c.b.getApplicationIcon(packageName);
        paramView = (View)localObject;
        y.a(c).put("appInfo.packageName", localObject);
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
      c.setOnClickListener(new ac(this, localApplicationInfo, paramView));
      return localView;
      paramViewGroup = (ad)paramView.getTag();
      localView = paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */