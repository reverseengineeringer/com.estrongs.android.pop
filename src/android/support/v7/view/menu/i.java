package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.ax;
import android.support.v4.view.n;
import android.support.v7.appcompat.R.bool;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class i
  implements android.support.v4.c.a.a
{
  private static final int[] d = { 1, 4, 5, 3, 2, 0 };
  CharSequence a;
  Drawable b;
  View c;
  private final Context e;
  private final Resources f;
  private boolean g;
  private boolean h;
  private j i;
  private ArrayList<m> j;
  private ArrayList<m> k;
  private boolean l;
  private ArrayList<m> m;
  private ArrayList<m> n;
  private boolean o;
  private int p = 0;
  private ContextMenu.ContextMenuInfo q;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private ArrayList<m> v = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<x>> w = new CopyOnWriteArrayList();
  private m x;
  private boolean y;
  
  public i(Context paramContext)
  {
    e = paramContext;
    f = paramContext.getResources();
    j = new ArrayList();
    k = new ArrayList();
    l = true;
    m = new ArrayList();
    n = new ArrayList();
    o = true;
    e(true);
  }
  
  private static int a(ArrayList<m> paramArrayList, int paramInt)
  {
    int i1 = paramArrayList.size() - 1;
    while (i1 >= 0)
    {
      if (((m)paramArrayList.get(i1)).c() <= paramInt) {
        return i1 + 1;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  private m a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    return new m(this, paramInt1, paramInt2, paramInt3, paramInt4, paramCharSequence, paramInt5);
  }
  
  private void a(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    Resources localResources = d();
    if (paramView != null)
    {
      c = paramView;
      a = null;
      b = null;
      a(false);
      return;
    }
    if (paramInt1 > 0)
    {
      a = localResources.getText(paramInt1);
      label47:
      if (paramInt2 <= 0) {
        break label83;
      }
      b = android.support.v4.content.a.a(e(), paramInt2);
    }
    for (;;)
    {
      c = null;
      break;
      if (paramCharSequence == null) {
        break label47;
      }
      a = paramCharSequence;
      break label47;
      label83:
      if (paramDrawable != null) {
        b = paramDrawable;
      }
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= j.size())) {}
    do
    {
      return;
      j.remove(paramInt);
    } while (!paramBoolean);
    a(true);
  }
  
  private boolean a(ad paramad, x paramx)
  {
    boolean bool = false;
    if (w.isEmpty()) {
      return false;
    }
    if (paramx != null) {
      bool = paramx.onSubMenuSelected(paramad);
    }
    paramx = w.iterator();
    x localx;
    if (paramx.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)paramx.next();
      localx = (x)localWeakReference.get();
      if (localx == null) {
        w.remove(localWeakReference);
      }
    }
    for (;;)
    {
      break;
      if (!bool)
      {
        bool = localx.onSubMenuSelected(paramad);
        continue;
        return bool;
      }
    }
  }
  
  private static int d(int paramInt)
  {
    int i1 = (0xFFFF0000 & paramInt) >> 16;
    if ((i1 < 0) || (i1 >= d.length)) {
      throw new IllegalArgumentException("order does not contain a valid category.");
    }
    return d[i1] << 16 | 0xFFFF & paramInt;
  }
  
  private void d(boolean paramBoolean)
  {
    if (w.isEmpty()) {
      return;
    }
    g();
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      x localx = (x)localWeakReference.get();
      if (localx == null) {
        w.remove(localWeakReference);
      } else {
        localx.updateMenuView(paramBoolean);
      }
    }
    h();
  }
  
  private void e(Bundle paramBundle)
  {
    if (w.isEmpty()) {
      return;
    }
    SparseArray localSparseArray = new SparseArray();
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (WeakReference)localIterator.next();
      x localx = (x)((WeakReference)localObject).get();
      if (localx == null)
      {
        w.remove(localObject);
      }
      else
      {
        int i1 = localx.getId();
        if (i1 > 0)
        {
          localObject = localx.onSaveInstanceState();
          if (localObject != null) {
            localSparseArray.put(i1, localObject);
          }
        }
      }
    }
    paramBundle.putSparseParcelableArray("android:menu:presenters", localSparseArray);
  }
  
  private void e(boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramBoolean) && (f.getConfiguration().keyboard != 1) && (f.getBoolean(R.bool.abc_config_showMenuShortcutsWhenKeyboardPresent))) {}
    for (paramBoolean = bool;; paramBoolean = false)
    {
      h = paramBoolean;
      return;
    }
  }
  
  private void f(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:presenters");
    if ((paramBundle == null) || (w.isEmpty())) {}
    for (;;)
    {
      return;
      Iterator localIterator = w.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (WeakReference)localIterator.next();
        x localx = (x)((WeakReference)localObject).get();
        if (localx == null)
        {
          w.remove(localObject);
        }
        else
        {
          int i1 = localx.getId();
          if (i1 > 0)
          {
            localObject = (Parcelable)paramBundle.get(i1);
            if (localObject != null) {
              localx.onRestoreInstanceState((Parcelable)localObject);
            }
          }
        }
      }
    }
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    int i2 = size();
    int i1 = paramInt2;
    if (paramInt2 < 0) {
      i1 = 0;
    }
    while (i1 < i2)
    {
      if (((m)j.get(i1)).getGroupId() == paramInt1) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public i a(int paramInt)
  {
    p = paramInt;
    return this;
  }
  
  protected i a(Drawable paramDrawable)
  {
    a(0, null, 0, paramDrawable, null);
    return this;
  }
  
  protected i a(View paramView)
  {
    a(0, null, 0, null, paramView);
    return this;
  }
  
  protected i a(CharSequence paramCharSequence)
  {
    a(0, paramCharSequence, 0, null, null);
    return this;
  }
  
  m a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = v;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty())
    {
      paramKeyEvent = null;
      return paramKeyEvent;
    }
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int i4 = localArrayList.size();
    if (i4 == 1) {
      return (m)localArrayList.get(0);
    }
    boolean bool = b();
    int i1 = 0;
    label84:
    if (i1 < i4)
    {
      m localm = (m)localArrayList.get(i1);
      if (bool) {}
      for (int i2 = localm.getAlphabeticShortcut();; i2 = localm.getNumericShortcut())
      {
        if (i2 == meta[0])
        {
          paramKeyEvent = localm;
          if ((i3 & 0x2) == 0) {
            break;
          }
        }
        if (i2 == meta[2])
        {
          paramKeyEvent = localm;
          if ((i3 & 0x2) != 0) {
            break;
          }
        }
        if ((bool) && (i2 == 8))
        {
          paramKeyEvent = localm;
          if (paramInt == 67) {
            break;
          }
        }
        i1 += 1;
        break label84;
      }
    }
    return null;
  }
  
  protected MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i1 = d(paramInt3);
    paramCharSequence = a(paramInt1, paramInt2, paramInt3, i1, paramCharSequence, p);
    if (q != null) {
      paramCharSequence.a(q);
    }
    j.add(a(j, i1), paramCharSequence);
    a(true);
    return paramCharSequence;
  }
  
  protected String a()
  {
    return "android:menu:actionviewstates";
  }
  
  public void a(Bundle paramBundle)
  {
    e(paramBundle);
  }
  
  public void a(j paramj)
  {
    i = paramj;
  }
  
  void a(m paramm)
  {
    l = true;
    a(true);
  }
  
  public void a(x paramx)
  {
    a(paramx, e);
  }
  
  public void a(x paramx, Context paramContext)
  {
    w.add(new WeakReference(paramx));
    paramx.initForMenu(paramContext, this);
    o = true;
  }
  
  void a(MenuItem paramMenuItem)
  {
    int i2 = paramMenuItem.getGroupId();
    int i3 = j.size();
    int i1 = 0;
    if (i1 < i3)
    {
      m localm = (m)j.get(i1);
      if ((localm.getGroupId() != i2) || (!localm.g())) {}
      while (!localm.isCheckable())
      {
        i1 += 1;
        break;
      }
      if (localm == paramMenuItem) {}
      for (boolean bool = true;; bool = false)
      {
        localm.b(bool);
        break;
      }
    }
  }
  
  void a(List<m> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = b();
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int i4 = j.size();
    int i1 = 0;
    label49:
    m localm;
    if (i1 < i4)
    {
      localm = (m)j.get(i1);
      if (localm.hasSubMenu()) {
        ((i)localm.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      }
      if (!bool) {
        break label184;
      }
    }
    label184:
    for (int i2 = localm.getAlphabeticShortcut();; i2 = localm.getNumericShortcut())
    {
      if (((i3 & 0x5) == 0) && (i2 != 0) && ((i2 == meta[0]) || (i2 == meta[2]) || ((bool) && (i2 == 8) && (paramInt == 67))) && (localm.isEnabled())) {
        paramList.add(localm);
      }
      i1 += 1;
      break label49;
      break;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (!r)
    {
      if (paramBoolean)
      {
        l = true;
        o = true;
      }
      d(paramBoolean);
      return;
    }
    s = true;
  }
  
  boolean a(i parami, MenuItem paramMenuItem)
  {
    return (i != null) && (i.onMenuItemSelected(parami, paramMenuItem));
  }
  
  public boolean a(MenuItem paramMenuItem, int paramInt)
  {
    return a(paramMenuItem, null, paramInt);
  }
  
  public boolean a(MenuItem paramMenuItem, x paramx, int paramInt)
  {
    boolean bool2 = false;
    Object localObject = (m)paramMenuItem;
    boolean bool1 = bool2;
    if (localObject != null)
    {
      if (((m)localObject).isEnabled()) {
        break label33;
      }
      bool1 = bool2;
    }
    label33:
    label101:
    do
    {
      return bool1;
      bool1 = ((m)localObject).b();
      paramMenuItem = ((m)localObject).a();
      if ((paramMenuItem != null) && (paramMenuItem.hasSubMenu())) {}
      for (int i1 = 1;; i1 = 0)
      {
        if (!((m)localObject).n()) {
          break label101;
        }
        bool2 = ((m)localObject).expandActionView() | bool1;
        bool1 = bool2;
        if (!bool2) {
          break;
        }
        b(true);
        return bool2;
      }
      if ((!((m)localObject).hasSubMenu()) && (i1 == 0)) {
        break;
      }
      b(false);
      if (!((m)localObject).hasSubMenu()) {
        ((m)localObject).a(new ad(e(), this, (m)localObject));
      }
      localObject = (ad)((m)localObject).getSubMenu();
      if (i1 != 0) {
        paramMenuItem.onPrepareSubMenu((SubMenu)localObject);
      }
      bool2 = a((ad)localObject, paramx) | bool1;
      bool1 = bool2;
    } while (bool2);
    b(true);
    return bool2;
    if ((paramInt & 0x1) == 0) {
      b(true);
    }
    return bool1;
  }
  
  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, f.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = e.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i1;
    label52:
    ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i1 = localList.size();
      if ((paramInt4 & 0x1) == 0) {
        removeGroup(paramInt1);
      }
      paramInt4 = 0;
      if (paramInt4 >= i1) {
        break label214;
      }
      localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (specificIndex >= 0) {
        break label201;
      }
    }
    label201:
    for (paramComponentName = paramIntent;; paramComponentName = paramArrayOfIntent[specificIndex])
    {
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (specificIndex >= 0)) {
        paramArrayOfMenuItem[specificIndex] = paramComponentName;
      }
      paramInt4 += 1;
      break label52;
      i1 = 0;
      break;
    }
    label214:
    return i1;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, f.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (m)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    ad localad = new ad(e, this, paramCharSequence);
    paramCharSequence.a(localad);
    return localad;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public int b(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((m)j.get(i1)).getItemId() == paramInt) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public void b(Bundle paramBundle)
  {
    f(paramBundle);
  }
  
  void b(m paramm)
  {
    o = true;
    a(true);
  }
  
  public void b(x paramx)
  {
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      x localx = (x)localWeakReference.get();
      if ((localx == null) || (localx == paramx)) {
        w.remove(localWeakReference);
      }
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    if (u) {
      return;
    }
    u = true;
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      x localx = (x)localWeakReference.get();
      if (localx == null) {
        w.remove(localWeakReference);
      } else {
        localx.onCloseMenu(this, paramBoolean);
      }
    }
    u = false;
  }
  
  boolean b()
  {
    return g;
  }
  
  public int c(int paramInt)
  {
    return a(paramInt, 0);
  }
  
  public void c(Bundle paramBundle)
  {
    int i2 = size();
    int i1 = 0;
    Object localObject3;
    for (Object localObject1 = null; i1 < i2; localObject1 = localObject3)
    {
      MenuItem localMenuItem = getItem(i1);
      View localView = ax.a(localMenuItem);
      localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (ax.d(localMenuItem))
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((ad)localMenuItem.getSubMenu()).c(paramBundle);
      }
      i1 += 1;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(a(), (SparseArray)localObject1);
    }
  }
  
  public void c(boolean paramBoolean)
  {
    y = paramBoolean;
  }
  
  public boolean c()
  {
    return h;
  }
  
  public boolean c(m paramm)
  {
    boolean bool2 = false;
    if (w.isEmpty()) {
      return bool2;
    }
    g();
    Iterator localIterator = w.iterator();
    boolean bool1 = false;
    if (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      x localx = (x)localWeakReference.get();
      if (localx == null) {
        w.remove(localWeakReference);
      }
      do
      {
        break;
        bool2 = localx.expandItemActionView(this, paramm);
        bool1 = bool2;
      } while (!bool2);
      bool1 = bool2;
    }
    for (;;)
    {
      h();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      x = paramm;
      return bool1;
    }
  }
  
  public void clear()
  {
    if (x != null) {
      d(x);
    }
    j.clear();
    a(true);
  }
  
  public void clearHeader()
  {
    b = null;
    a = null;
    c = null;
    a(false);
  }
  
  public void close()
  {
    b(true);
  }
  
  Resources d()
  {
    return f;
  }
  
  public void d(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      int i1;
      do
      {
        return;
        SparseArray localSparseArray = paramBundle.getSparseParcelableArray(a());
        int i2 = size();
        i1 = 0;
        while (i1 < i2)
        {
          MenuItem localMenuItem = getItem(i1);
          View localView = ax.a(localMenuItem);
          if ((localView != null) && (localView.getId() != -1)) {
            localView.restoreHierarchyState(localSparseArray);
          }
          if (localMenuItem.hasSubMenu()) {
            ((ad)localMenuItem.getSubMenu()).d(paramBundle);
          }
          i1 += 1;
        }
        i1 = paramBundle.getInt("android:menu:expandedactionview");
      } while (i1 <= 0);
      paramBundle = findItem(i1);
    } while (paramBundle == null);
    ax.b(paramBundle);
  }
  
  public boolean d(m paramm)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (!w.isEmpty())
    {
      if (x != paramm) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    g();
    Iterator localIterator = w.iterator();
    bool1 = false;
    if (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      x localx = (x)localWeakReference.get();
      if (localx == null) {
        w.remove(localWeakReference);
      }
      do
      {
        break;
        bool2 = localx.collapseItemActionView(this, paramm);
        bool1 = bool2;
      } while (!bool2);
      bool1 = bool2;
    }
    for (;;)
    {
      h();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      x = null;
      return bool1;
    }
  }
  
  public Context e()
  {
    return e;
  }
  
  public void f()
  {
    if (i != null) {
      i.onMenuModeChange(this);
    }
  }
  
  public MenuItem findItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = (m)j.get(i1);
      if (((m)localObject).getItemId() == paramInt) {}
      MenuItem localMenuItem;
      do
      {
        return (MenuItem)localObject;
        if (!((m)localObject).hasSubMenu()) {
          break;
        }
        localMenuItem = ((m)localObject).getSubMenu().findItem(paramInt);
        localObject = localMenuItem;
      } while (localMenuItem != null);
      i1 += 1;
    }
    return null;
  }
  
  public void g()
  {
    if (!r)
    {
      r = true;
      s = false;
    }
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)j.get(paramInt);
  }
  
  public void h()
  {
    r = false;
    if (s)
    {
      s = false;
      a(true);
    }
  }
  
  public boolean hasVisibleItems()
  {
    if (y) {
      return true;
    }
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((m)j.get(i1)).isVisible()) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public ArrayList<m> i()
  {
    if (!l) {
      return k;
    }
    k.clear();
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      m localm = (m)j.get(i1);
      if (localm.isVisible()) {
        k.add(localm);
      }
      i1 += 1;
    }
    l = false;
    o = true;
    return k;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }
  
  public void j()
  {
    ArrayList localArrayList = i();
    if (!o) {
      return;
    }
    Object localObject = w.iterator();
    int i1 = 0;
    if (((Iterator)localObject).hasNext())
    {
      WeakReference localWeakReference = (WeakReference)((Iterator)localObject).next();
      x localx = (x)localWeakReference.get();
      if (localx == null) {
        w.remove(localWeakReference);
      }
      for (;;)
      {
        break;
        i1 = localx.flagActionItems() | i1;
      }
    }
    if (i1 != 0)
    {
      m.clear();
      n.clear();
      int i3 = localArrayList.size();
      i1 = 0;
      if (i1 < i3)
      {
        localObject = (m)localArrayList.get(i1);
        if (((m)localObject).j()) {
          m.add(localObject);
        }
        for (;;)
        {
          int i2;
          i1 += 1;
          break;
          n.add(localObject);
        }
      }
    }
    else
    {
      m.clear();
      n.clear();
      n.addAll(i());
    }
    o = false;
  }
  
  public ArrayList<m> k()
  {
    j();
    return m;
  }
  
  public ArrayList<m> l()
  {
    j();
    return n;
  }
  
  public CharSequence m()
  {
    return a;
  }
  
  public Drawable n()
  {
    return b;
  }
  
  public View o()
  {
    return c;
  }
  
  public i p()
  {
    return this;
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return a(findItem(paramInt1), paramInt2);
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null) {
      bool = a(paramKeyEvent, paramInt2);
    }
    if ((paramInt2 & 0x2) != 0) {
      b(true);
    }
    return bool;
  }
  
  boolean q()
  {
    return t;
  }
  
  public m r()
  {
    return x;
  }
  
  public void removeGroup(int paramInt)
  {
    int i2 = c(paramInt);
    if (i2 >= 0)
    {
      int i3 = j.size();
      int i1 = 0;
      while ((i1 < i3 - i2) && (((m)j.get(i2)).getGroupId() == paramInt))
      {
        a(i2, false);
        i1 += 1;
      }
      a(true);
    }
  }
  
  public void removeItem(int paramInt)
  {
    a(b(paramInt), true);
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      m localm = (m)j.get(i1);
      if (localm.getGroupId() == paramInt)
      {
        localm.a(paramBoolean2);
        localm.setCheckable(paramBoolean1);
      }
      i1 += 1;
    }
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      m localm = (m)j.get(i1);
      if (localm.getGroupId() == paramInt) {
        localm.setEnabled(paramBoolean);
      }
      i1 += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i3 = j.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      m localm = (m)j.get(i2);
      if ((localm.getGroupId() != paramInt) || (!localm.c(paramBoolean))) {
        break label74;
      }
      i1 = 1;
    }
    label74:
    for (;;)
    {
      i2 += 1;
      break;
      if (i1 != 0) {
        a(true);
      }
      return;
    }
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    g = paramBoolean;
    a(false);
  }
  
  public int size()
  {
    return j.size();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */