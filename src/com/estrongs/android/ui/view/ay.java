package com.estrongs.android.ui.view;

import android.support.v4.view.bw;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public class ay
  extends bw
{
  private ArrayList<az> a = new ArrayList();
  
  public void a()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((az)localIterator.next()).a();
    }
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (a.size() == 0) {
      return;
    }
    paramInt %= a.size();
    if (paramInt < 0) {
      a.size();
    }
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (a.size() == 0) {
      return null;
    }
    paramInt %= a.size();
    if (paramInt < 0) {
      paramInt += a.size();
    }
    for (;;)
    {
      Object localObject = (az)a.get(paramInt);
      if (localObject == null) {
        return null;
      }
      localObject = ((az)localObject).a(paramInt, paramViewGroup);
      if (localObject != null)
      {
        ViewGroup localViewGroup = (ViewGroup)((View)localObject).getParent();
        if (localViewGroup != null) {
          localViewGroup.removeView((View)localObject);
        }
        paramViewGroup.addView((View)localObject);
      }
      return localObject;
    }
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */