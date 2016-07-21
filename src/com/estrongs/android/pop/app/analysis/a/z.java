package com.estrongs.android.pop.app.analysis.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class z
  extends BaseAdapter
{
  List<aa> a = null;
  Context b;
  
  public z(Context paramContext)
  {
    b = paramContext;
    a = a(paramContext);
  }
  
  private List<aa> a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new aa(this, "pic://", 2130838074, paramContext.getString(2131230950)));
    localArrayList.add(new aa(this, "music://", 2130838077, paramContext.getString(2131230942)));
    localArrayList.add(new aa(this, "video://", 2130838083, paramContext.getString(2131230959)));
    localArrayList.add(new aa(this, "book://", 2130838069, paramContext.getString(2131230928)));
    localArrayList.add(new aa(this, "app://", 2130838062, paramContext.getString(2131230924)));
    List localList = ap.a();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      String str3 = (String)localIterator.next();
      String str2 = ap.d(str3);
      String str1 = str2;
      if ("0".equals(str2)) {
        str1 = paramContext.getString(2131230936);
      }
      localArrayList.add(new aa(this, str3, 2130838079, str1 + " " + paramContext.getString(2131230932)));
    }
    if (localList.size() > 1) {
      localArrayList.add(new aa(this, "/", 2130837965, paramContext.getString(2131230922)));
    }
    return localArrayList;
  }
  
  public int getCount()
  {
    return a.size();
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
    if (paramView == null)
    {
      paramViewGroup = new ab();
      paramView = LayoutInflater.from(b).inflate(2130903092, null);
      a = ((ImageView)paramView.findViewById(2131624138));
      b = ((TextView)paramView.findViewById(2131624233));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      a.setImageResource(a.get(paramInt)).b);
      b.setText(a.get(paramInt)).c);
      return paramView;
      paramViewGroup = (ab)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */