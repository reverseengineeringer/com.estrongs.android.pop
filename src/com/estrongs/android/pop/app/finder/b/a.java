package com.estrongs.android.pop.app.finder.b;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.app.finder.data.FinderGroupData;
import com.estrongs.android.pop.app.finder.data.FinderGroupData.GroupType;
import com.estrongs.android.pop.app.finder.data.FinderItemData;
import com.estrongs.android.util.bl;
import java.util.Collection;
import java.util.Iterator;

public class a
  extends RecyclerView.ViewHolder
{
  private Context a;
  private TextView b;
  private LinearLayout c;
  private int d;
  private int e;
  private int f;
  private FinderGroupData g;
  private com.estrongs.android.pop.app.finder.a.b h;
  
  public a(Context paramContext, View paramView)
  {
    super(paramView);
    a = paramContext;
    a();
  }
  
  private void a(LinearLayout paramLinearLayout, int paramInt)
  {
    int j = paramLinearLayout.getChildCount();
    if ((paramInt != 1) && (j < paramInt))
    {
      int i = 0;
      while (i < paramInt - j)
      {
        View localView = new View(a);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -2, 1.0F);
        localLayoutParams.setMargins(d, d, d, d);
        paramLinearLayout.addView(localView, localLayoutParams);
        i += 1;
      }
    }
  }
  
  private void a(FinderItemData paramFinderItemData)
  {
    if (h != null)
    {
      g.a(paramFinderItemData);
      h.a(g, f);
    }
  }
  
  private void a(FinderItemData paramFinderItemData, LinearLayout paramLinearLayout)
  {
    View localView = View.inflate(a, 2130903231, null);
    AppCompatCheckBox localAppCompatCheckBox = (AppCompatCheckBox)bl.a(localView, 2131624905);
    localAppCompatCheckBox.setText(a(paramFinderItemData));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -2, 1.0F);
    localLayoutParams.setMargins(d, d, d, d);
    localAppCompatCheckBox.setOnClickListener(new b(this, paramFinderItemData));
    localAppCompatCheckBox.setEnabled(paramFinderItemData.c());
    localAppCompatCheckBox.setChecked(paramFinderItemData.a());
    paramLinearLayout.addView(localView, localLayoutParams);
  }
  
  private void a(Collection<FinderItemData> paramCollection, int paramInt, FinderGroupData.GroupType paramGroupType)
  {
    c.removeAllViews();
    LinearLayout localLinearLayout = null;
    Iterator localIterator = paramCollection.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      Object localObject = (FinderItemData)localIterator.next();
      int j;
      if (i % paramInt == 0)
      {
        j = 1;
        label53:
        if (j != 0)
        {
          localLinearLayout = new LinearLayout(a);
          localLinearLayout.setOrientation(0);
        }
        switch (e.a[paramGroupType.ordinal()])
        {
        default: 
          b((FinderItemData)localObject, localLinearLayout);
        }
      }
      for (;;)
      {
        if (i == paramCollection.size() - 1) {
          a(localLinearLayout, paramInt);
        }
        if (j != 0)
        {
          localObject = new LinearLayout.LayoutParams(-1, -2);
          c.addView(localLinearLayout, (ViewGroup.LayoutParams)localObject);
        }
        i += 1;
        break;
        j = 0;
        break label53;
        a((FinderItemData)localObject, localLinearLayout);
        continue;
        b((FinderItemData)localObject, localLinearLayout);
        continue;
        b((FinderItemData)localObject, localLinearLayout);
        continue;
        c((FinderItemData)localObject, localLinearLayout);
      }
    }
  }
  
  private void b(FinderItemData paramFinderItemData, LinearLayout paramLinearLayout)
  {
    View localView = View.inflate(a, 2130903232, null);
    TextView localTextView = (TextView)bl.a(localView, 2131624906);
    localTextView.setText(a(paramFinderItemData));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -2, 1.0F);
    localLayoutParams.setMargins(d, d, d, d);
    localTextView.setOnClickListener(new c(this, paramFinderItemData));
    localTextView.setEnabled(paramFinderItemData.c());
    localTextView.setSelected(paramFinderItemData.a());
    paramLinearLayout.addView(localView, localLayoutParams);
  }
  
  private void c(FinderItemData paramFinderItemData, LinearLayout paramLinearLayout)
  {
    View localView = View.inflate(a, 2130903230, null);
    AppCompatCheckBox localAppCompatCheckBox = (AppCompatCheckBox)bl.a(localView, 2131624903);
    Object localObject = (ImageView)bl.a(localView, 2131624902);
    ((TextView)bl.a(localView, 2131624904)).setText(a(paramFinderItemData));
    localObject = new LinearLayout.LayoutParams(0, -2, 1.0F);
    ((LinearLayout.LayoutParams)localObject).setMargins(d, d, d, d);
    localAppCompatCheckBox.setOnClickListener(new d(this, paramFinderItemData));
    localAppCompatCheckBox.setClickable(paramFinderItemData.c());
    localAppCompatCheckBox.setChecked(paramFinderItemData.a());
    paramLinearLayout.addView(localView, (ViewGroup.LayoutParams)localObject);
  }
  
  public String a(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  public String a(com.estrongs.android.pop.app.finder.data.a parama)
  {
    if (b != null) {
      return b;
    }
    return a(a);
  }
  
  public void a()
  {
    b = ((TextView)bl.a(itemView, 2131624907));
    c = ((LinearLayout)bl.a(itemView, 2131624908));
    d = b(2131165312);
    e = b(2131165259);
  }
  
  public void a(com.estrongs.android.pop.app.finder.a.b paramb)
  {
    h = paramb;
  }
  
  public void a(FinderGroupData paramFinderGroupData, int paramInt)
  {
    g = paramFinderGroupData;
    f = paramInt;
    b.setText(a(paramFinderGroupData));
    a(paramFinderGroupData.a(), c, d);
  }
  
  public int b(int paramInt)
  {
    return a.getResources().getDimensionPixelOffset(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */