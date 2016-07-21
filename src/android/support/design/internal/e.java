package android.support.design.internal;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView.Adapter;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

class e
  extends RecyclerView.Adapter<m>
{
  private final ArrayList<g> b = new ArrayList();
  private android.support.v7.view.menu.m c;
  private ColorDrawable d;
  private boolean e;
  
  e(b paramb)
  {
    c();
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2)
    {
      android.support.v7.view.menu.m localm = ((i)b.get(paramInt1)).a();
      if (localm.getIcon() == null)
      {
        if (d == null) {
          d = new ColorDrawable(0);
        }
        localm.setIcon(d);
      }
      paramInt1 += 1;
    }
  }
  
  private void c()
  {
    if (e) {
      return;
    }
    e = true;
    b.clear();
    b.add(new f(null));
    int k = -1;
    int i = 0;
    int j = 0;
    int i3 = b.a(a).i().size();
    int i1 = 0;
    while (i1 < i3)
    {
      android.support.v7.view.menu.m localm1 = (android.support.v7.view.menu.m)b.a(a).i().get(i1);
      if (localm1.isChecked()) {
        a(localm1);
      }
      if (localm1.isCheckable()) {
        localm1.a(false);
      }
      int m;
      int i2;
      int n;
      if (localm1.hasSubMenu())
      {
        SubMenu localSubMenu = localm1.getSubMenu();
        if (localSubMenu.hasVisibleItems())
        {
          if (i1 != 0) {
            b.add(new h(b.k(a), 0));
          }
          b.add(new i(localm1, null));
          m = 0;
          int i4 = b.size();
          int i5 = localSubMenu.size();
          i2 = 0;
          while (i2 < i5)
          {
            android.support.v7.view.menu.m localm2 = (android.support.v7.view.menu.m)localSubMenu.getItem(i2);
            n = m;
            if (localm2.isVisible())
            {
              n = m;
              if (m == 0)
              {
                n = m;
                if (localm2.getIcon() != null) {
                  n = 1;
                }
              }
              if (localm2.isCheckable()) {
                localm2.a(false);
              }
              if (localm1.isChecked()) {
                a(localm1);
              }
              b.add(new i(localm2, null));
            }
            i2 += 1;
            m = n;
          }
          if (m != 0) {
            a(i4, b.size());
          }
        }
        m = j;
        j = k;
        k = i;
        i = m;
        i1 += 1;
        m = j;
        j = i;
        i = k;
        k = m;
      }
      else
      {
        n = localm1.getGroupId();
        if (n != k)
        {
          i2 = b.size();
          if (localm1.getIcon() != null)
          {
            i = 1;
            label405:
            k = i;
            m = i2;
            if (i1 == 0) {
              break label548;
            }
            b.add(new h(b.k(a), b.k(a)));
            j = i;
          }
        }
        for (i = i2 + 1;; i = m)
        {
          if ((j != 0) && (localm1.getIcon() == null)) {
            localm1.setIcon(17170445);
          }
          b.add(new i(localm1, null));
          k = i;
          m = n;
          i = j;
          j = m;
          break;
          i = 0;
          break label405;
          k = j;
          m = i;
          if (j == 0)
          {
            k = j;
            m = i;
            if (localm1.getIcon() != null)
            {
              k = 1;
              a(i, b.size());
              m = i;
            }
          }
          label548:
          j = k;
        }
      }
    }
    e = false;
  }
  
  public m a(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return new j(b.c(a), paramViewGroup, b.d(a));
    case 1: 
      return new l(b.c(a), paramViewGroup);
    case 2: 
      return new k(b.c(a), paramViewGroup);
    }
    return new d(b.e(a));
  }
  
  public void a()
  {
    c();
    notifyDataSetChanged();
  }
  
  public void a(Bundle paramBundle)
  {
    int i = paramBundle.getInt("android:menu:checked", 0);
    if (i != 0)
    {
      e = true;
      localObject1 = b.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (g)((Iterator)localObject1).next();
        if ((localObject2 instanceof i))
        {
          localObject2 = ((i)localObject2).a();
          if ((localObject2 != null) && (((android.support.v7.view.menu.m)localObject2).getItemId() == i)) {
            a((android.support.v7.view.menu.m)localObject2);
          }
        }
      }
      e = false;
      c();
    }
    Object localObject1 = paramBundle.getSparseParcelableArray("android:menu:action_views");
    Object localObject2 = b.iterator();
    label182:
    while (((Iterator)localObject2).hasNext())
    {
      paramBundle = (g)((Iterator)localObject2).next();
      if ((paramBundle instanceof i))
      {
        android.support.v7.view.menu.m localm = ((i)paramBundle).a();
        if (localm != null) {}
        for (paramBundle = localm.getActionView();; paramBundle = null)
        {
          if (paramBundle == null) {
            break label182;
          }
          paramBundle.restoreHierarchyState((SparseArray)((SparseArray)localObject1).get(localm.getItemId()));
          break;
        }
      }
    }
  }
  
  public void a(m paramm)
  {
    if ((paramm instanceof j)) {
      ((NavigationMenuItemView)itemView).a();
    }
  }
  
  public void a(m paramm, int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      return;
    case 0: 
      localObject = (NavigationMenuItemView)itemView;
      ((NavigationMenuItemView)localObject).setIconTintList(b.f(a));
      if (b.g(a)) {
        ((NavigationMenuItemView)localObject).a(((NavigationMenuItemView)localObject).getContext(), b.h(a));
      }
      if (b.i(a) != null) {
        ((NavigationMenuItemView)localObject).setTextColor(b.i(a));
      }
      if (b.j(a) != null) {}
      for (paramm = b.j(a).getConstantState().newDrawable();; paramm = null)
      {
        ((NavigationMenuItemView)localObject).setBackgroundDrawable(paramm);
        ((NavigationMenuItemView)localObject).a(((i)b.get(paramInt)).a(), 0);
        return;
      }
    case 1: 
      ((TextView)itemView).setText(((i)b.get(paramInt)).a().getTitle());
      return;
    }
    Object localObject = (h)b.get(paramInt);
    itemView.setPadding(0, ((h)localObject).a(), 0, ((h)localObject).b());
  }
  
  public void a(android.support.v7.view.menu.m paramm)
  {
    if ((c == paramm) || (!paramm.isCheckable())) {
      return;
    }
    if (c != null) {
      c.setChecked(false);
    }
    c = paramm;
    paramm.setChecked(true);
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public Bundle b()
  {
    Bundle localBundle = new Bundle();
    if (c != null) {
      localBundle.putInt("android:menu:checked", c.getItemId());
    }
    SparseArray localSparseArray = new SparseArray();
    Iterator localIterator = b.iterator();
    label129:
    while (localIterator.hasNext())
    {
      Object localObject = (g)localIterator.next();
      if ((localObject instanceof i))
      {
        android.support.v7.view.menu.m localm = ((i)localObject).a();
        if (localm != null) {}
        for (localObject = localm.getActionView();; localObject = null)
        {
          if (localObject == null) {
            break label129;
          }
          ParcelableSparseArray localParcelableSparseArray = new ParcelableSparseArray();
          ((View)localObject).saveHierarchyState(localParcelableSparseArray);
          localSparseArray.put(localm.getItemId(), localParcelableSparseArray);
          break;
        }
      }
    }
    localBundle.putSparseParcelableArray("android:menu:action_views", localSparseArray);
    return localBundle;
  }
  
  public int getItemCount()
  {
    return b.size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    g localg = (g)b.get(paramInt);
    if ((localg instanceof h)) {
      return 2;
    }
    if ((localg instanceof f)) {
      return 3;
    }
    if ((localg instanceof i))
    {
      if (((i)localg).a().hasSubMenu()) {
        return 1;
      }
      return 0;
    }
    throw new RuntimeException("Unknown item type.");
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */