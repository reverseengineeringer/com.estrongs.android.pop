package com.estrongs.android.ui.controller;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ax;
import android.support.v4.view.cn;
import android.support.v7.app.ActionBar;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode.Callback;
import android.support.v7.view.menu.y;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import android.support.v7.widget.SearchView.SearchAutoComplete;
import android.support.v7.widget.Toolbar;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.esclasses.ESAbsToolbarActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.c.e;
import com.estrongs.android.ui.controller.widget.ESFloatingActionButton;
import com.estrongs.android.ui.e.ch;
import com.estrongs.android.ui.e.cq;
import com.estrongs.android.ui.e.il;
import com.estrongs.android.ui.e.jq;
import com.estrongs.android.ui.e.ka;
import com.estrongs.android.ui.e.m;
import com.estrongs.android.ui.fastscroller.AbsRecyclerViewFastScroller;
import com.estrongs.android.ui.fastscroller.vertical.VerticalRecyclerViewFastScroller;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ck;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.er;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

public class h
  extends a
{
  private MenuItem A;
  private SearchView B;
  private String C;
  private MenuItem D;
  private ProgressBar E;
  private SearchView.OnQueryTextListener F;
  private SparseArray<MenuItem.OnMenuItemClickListener> G;
  private Hashtable<Integer, MenuItem.OnMenuItemClickListener> H = new Hashtable();
  private m I;
  private Menu J;
  private jq K;
  private Hashtable<Integer, MenuItem.OnMenuItemClickListener> L = new Hashtable();
  private ESFloatingActionButton M;
  private boolean N = false;
  private il O = new il();
  private bm P;
  private com.estrongs.android.ui.fastscroller.d Q;
  private RelativeLayout R = null;
  private TextView S;
  private ImageView T;
  private View U;
  private View V;
  private ka W;
  private boolean X;
  private ActionMode Y;
  private boolean Z = false;
  private ActionMode.Callback aa = new i(this);
  public ck o = null;
  public ch p = null;
  private final int q = 1;
  private final int r = 2;
  private final int s = 3;
  private final int t = 4;
  private final int u = 5;
  private final int v = 6;
  private final String[] w = { "scan", "new", "analyse", "remote_settings", "clear_recycle", "extract", "refresh" };
  private ActionBar x;
  private Toolbar y;
  private Hashtable<Integer, MenuItem.OnMenuItemClickListener> z = new Hashtable();
  
  public h(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  private void A()
  {
    y = ((Toolbar)a.findViewById(2131624405));
    a.setSupportActionBar(y);
    x = a.getSupportActionBar();
    x.setHomeAsUpIndicator(2130838125);
    x.setDisplayShowHomeEnabled(true);
    x.setHomeButtonEnabled(true);
    x.setDisplayShowTitleEnabled(false);
    x.setDisplayHomeAsUpEnabled(true);
    D();
  }
  
  private void B()
  {
    try
    {
      Field localField = Toolbar.class.getDeclaredField("mMenuView");
      localField.setAccessible(true);
      a((ActionMenuView)localField.get(y));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      localNullPointerException.printStackTrace();
    }
  }
  
  private void C()
  {
    Object localObject = D.getSubMenu();
    if (localObject == null) {
      return;
    }
    ((SubMenu)localObject).removeGroup(2);
    ((SubMenu)localObject).removeGroup(3);
    ((SubMenu)localObject).removeGroup(4);
    G = new SparseArray();
    ((SubMenu)localObject).add(2, 2000, 0, a(2131232559));
    MenuItem localMenuItem = ((SubMenu)localObject).findItem(2000);
    com.estrongs.android.util.bl.a(a, localMenuItem, 2130838638);
    G.put(2000, new ae(this));
    ((SubMenu)localObject).add(3, 3000, 0, a(2131232307));
    localMenuItem = ((SubMenu)localObject).findItem(3000);
    com.estrongs.android.util.bl.a(a, localMenuItem, 2130838557);
    G.put(3000, new af(this));
    ((SubMenu)localObject).add(3, 3001, 0, a(2131232304));
    localMenuItem = ((SubMenu)localObject).findItem(3001);
    com.estrongs.android.util.bl.a(a, localMenuItem, 2130838570);
    G.put(3001, new ag(this));
    ((SubMenu)localObject).add(3, 3002, 0, a(2131232308));
    localMenuItem = ((SubMenu)localObject).findItem(3002);
    com.estrongs.android.util.bl.a(a, localMenuItem, 2130838627);
    G.put(3002, new ah(this));
    ((SubMenu)localObject).add(3, 3003, 0, a(2131232302));
    localMenuItem = ((SubMenu)localObject).findItem(3003);
    com.estrongs.android.util.bl.a(a, localMenuItem, 2130838520);
    G.put(3003, new p(this));
    ((SubMenu)localObject).add(3, 3004, 0, a(2131232303));
    localMenuItem = ((SubMenu)localObject).findItem(3004);
    com.estrongs.android.util.bl.a(a, localMenuItem, 2130838541);
    G.put(3004, new q(this));
    ((SubMenu)localObject).add(4, 4000, 0, a(2131232299));
    localObject = ((SubMenu)localObject).findItem(4000);
    com.estrongs.android.util.bl.a(a, (MenuItem)localObject, 2130838598);
    G.put(4000, new r(this));
  }
  
  private void D()
  {
    this.i = new AdvancedAddressBar(a);
    this.i.setIsNarrowMode(true);
    x.setDisplayShowCustomEnabled(true);
    int i = a.getResources().getDisplayMetrics().widthPixels;
    a.getResources().getDimensionPixelSize(2131165413);
    x.setCustomView(2130903322);
    n = new u(this, a);
  }
  
  private com.estrongs.android.ui.fastscroller.d E()
  {
    if (Q == null) {
      Q = new w(this);
    }
    return Q;
  }
  
  private TextView a(SearchView paramSearchView)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject2 = null;
    Object localObject1 = paramSearchView;
    for (paramSearchView = (SearchView)localObject2;; paramSearchView = (SearchView)localObject2)
    {
      int i = 0;
      for (;;)
      {
        localObject2 = paramSearchView;
        if (i < ((ViewGroup)localObject1).getChildCount())
        {
          localObject2 = ((ViewGroup)localObject1).getChildAt(i);
          if ((localObject2 instanceof SearchView.SearchAutoComplete)) {
            localObject2 = (TextView)localObject2;
          }
        }
        else
        {
          if ((localObject2 == null) && (localArrayList.size() != 0)) {
            break;
          }
          return (TextView)localObject2;
        }
        if ((localObject2 instanceof ViewGroup)) {
          localArrayList.add((ViewGroup)localObject2);
        }
        i += 1;
      }
      localObject1 = (ViewGroup)localArrayList.remove(0);
    }
  }
  
  private void a(ActionMenuView paramActionMenuView)
  {
    try
    {
      Object localObject = ActionMenuView.class.getDeclaredField("mPresenter");
      ((Field)localObject).setAccessible(true);
      paramActionMenuView = (android.support.v7.view.menu.d)((Field)localObject).get(paramActionMenuView);
      localObject = paramActionMenuView.getCallback();
      if (!(localObject instanceof ai)) {
        paramActionMenuView.setCallback(new ai(this, (y)localObject, paramActionMenuView));
      }
      return;
    }
    catch (NoSuchFieldException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (NullPointerException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
    }
  }
  
  @SuppressLint({"NewApi"})
  private void a(com.estrongs.android.view.a.a parama, boolean paramBoolean)
  {
    boolean bool1 = f.aZ();
    boolean bool2 = parama.i();
    if (!bool1)
    {
      M.setVisibility(8);
      return;
    }
    M.setIsRamAnimView(bool2);
    M.setEnabled(parama.isEnabled());
    if (bool2)
    {
      P.a(parama, e, paramBoolean);
      M.setVisibility(0);
      if (cn.f(M) == 0.0F)
      {
        cn.c(M, 1.0F);
        cn.h(M, 1.0F);
        cn.i(M, 1.0F);
      }
      M.setOnClickListener(new t(this, parama));
      return;
    }
    label181:
    Drawable localDrawable;
    if (paramBoolean)
    {
      M.setBackgroundTintList(new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { e.c(2131558590) }));
      localDrawable = b(parama.b());
      localDrawable.mutate();
      localDrawable = android.support.v4.b.a.a.f(localDrawable);
      android.support.v4.b.a.a.a(localDrawable, e.c(2131558713));
      if (!parama.isEnabled()) {
        break label299;
      }
      localDrawable.setAlpha(255);
    }
    for (;;)
    {
      M.setImageDrawable(localDrawable);
      break;
      M.setBackgroundTintList(new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { e.c(2131558588) }));
      break label181;
      label299:
      localDrawable.setAlpha(127);
    }
  }
  
  private void a(List<com.estrongs.android.view.a.a> paramList)
  {
    if (!f.aZ())
    {
      M.setVisibility(8);
      return;
    }
    M.setBackgroundTintList(new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { e.c(2131558588) }));
    Drawable localDrawable = b(2130837530);
    localDrawable = com.estrongs.android.util.bl.a(a, localDrawable, 2131558713);
    M.setImageDrawable(localDrawable);
    M.setVisibility(0);
    M.setOnClickListener(new s(this, paramList));
  }
  
  private boolean a(int paramInt, MenuItem paramMenuItem)
  {
    MenuItem.OnMenuItemClickListener localOnMenuItemClickListener = (MenuItem.OnMenuItemClickListener)G.get(paramInt);
    if (localOnMenuItemClickListener != null) {
      return localOnMenuItemClickListener.onMenuItemClick(paramMenuItem);
    }
    return false;
  }
  
  private static boolean a(String[] paramArrayOfString, String paramString)
  {
    if ((paramString == null) || (paramArrayOfString == null)) {}
    for (;;)
    {
      return false;
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (paramString.equals(paramArrayOfString[i])) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  private static String[] a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    if ((paramArrayOfString2 == null) || (paramArrayOfString1 == null)) {}
    ArrayList localArrayList;
    do
    {
      return null;
      localArrayList = new ArrayList();
      int j = paramArrayOfString2.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfString2[i];
        if (a(paramArrayOfString1, str)) {
          localArrayList.add(str);
        }
        i += 1;
      }
    } while (localArrayList.isEmpty());
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  private void c(Menu paramMenu)
  {
    A = paramMenu.findItem(2131625664);
    A.setTitle(2131230886);
    B = ((SearchView)ax.a(A));
    paramMenu = a(B);
    if (paramMenu != null) {
      paramMenu.setTextColor(at.a(a).c(2131558620));
    }
    ax.a(A, new aa(this));
    F = new ad(this);
    C();
  }
  
  private void d(String paramString)
  {
    Object localObject = a.O();
    if (localObject == null) {}
    while (a.h(((cr)localObject).c())) {
      return;
    }
    if ((localObject instanceof e)) {}
    for (localObject = "externalstorage://";; localObject = ((cr)localObject).c())
    {
      a.a((String)localObject, paramString, C);
      return;
    }
  }
  
  public void a()
  {
    if ((d) && (!c))
    {
      Object localObject = g.inflate(2130903134, null);
      LinearLayout localLinearLayout = (LinearLayout)((View)localObject).findViewById(2131624524);
      a.f.addView((View)localObject);
      a.z = c();
      localObject = new LinearLayout.LayoutParams(a.getResources().getDisplayMetrics().widthPixels * 3 / 10, -1);
      localLinearLayout.addView(a.z, (ViewGroup.LayoutParams)localObject);
      a.g = g.inflate(2130903337, null);
      localObject = new LinearLayout.LayoutParams(0, -1);
      weight = 1.0F;
      localLinearLayout.addView(a.g, (ViewGroup.LayoutParams)localObject);
      a.ae();
      a.setTabletSideBar(a.z);
      a.getWindow().setBackgroundDrawable(e.h());
      A();
      E = ((ProgressBar)a.findViewById(2131624429));
      E.setVisibility(8);
      M = ((ESFloatingActionButton)a.findViewById(2131624938));
      P = new bm(a, M);
      R = ((RelativeLayout)a.findViewById(2131624523));
      p = new ch(a, b);
      p.e(2131558722);
      o = p.l();
      if (!"edit_mode".equals(a.q)) {
        break label398;
      }
      p.f(a.e);
      p.n();
    }
    for (;;)
    {
      R.setVisibility(8);
      return;
      a.g = g.inflate(2130903337, null);
      a.f.addView(a.g);
      a.ae();
      break;
      label398:
      o.a(a.q, Boolean.valueOf(false));
    }
  }
  
  public void a(int paramInt1, int paramInt2, float paramFloat)
  {
    Object localObject1 = null;
    if (Math.abs(paramFloat) < 1.0E-4F) {}
    for (float f = 0.0F; (!i.a()) && (f == 0.0F); f = Math.abs(paramFloat)) {
      return;
    }
    Object localObject2 = z().c(paramInt1);
    if (localObject2 != null) {}
    for (localObject2 = ((com.estrongs.android.ui.d.h)localObject2).d();; localObject2 = null)
    {
      com.estrongs.android.ui.d.h localh = z().c(paramInt2);
      if (localh != null) {
        localObject1 = localh.d();
      }
      Object localObject3 = localObject1;
      if (localObject1 == null)
      {
        localObject3 = new String[2];
        a.a(a.h(paramInt2), localh, localh.a(), (String[])localObject3);
        localObject1 = localObject3[0];
        Object localObject4 = localObject3[1];
        localObject3 = new ArrayList();
        if (localObject4 != null) {
          ((ArrayList)localObject3).add(localObject4);
        }
        ((ArrayList)localObject3).add(localObject1);
        localh.a((ArrayList)localObject3);
      }
      localObject1 = i;
      if (f > 0.0F) {}
      for (boolean bool = true;; bool = false)
      {
        ((AdvancedAddressBar)localObject1).setIsScreenSwitching(bool);
        if (paramFloat <= 0.0F) {
          break;
        }
        i.a((List)localObject2, (List)localObject3, paramFloat);
        return;
      }
      i.a((List)localObject3, (List)localObject2, paramFloat);
      return;
    }
  }
  
  public void a(Configuration paramConfiguration)
  {
    if ((W != null) && (W.c())) {
      W.d();
    }
    if ((p != null) && (p.k != null))
    {
      p.j();
      p.k.j();
    }
    if (Y != null) {
      Y.finish();
    }
    for (;;)
    {
      super.a(paramConfiguration);
      return;
      if (!Z)
      {
        cr localcr = a.O();
        if ((localcr != null) && (((localcr instanceof e)) || ((localcr instanceof er))))
        {
          a.p = false;
        }
        else
        {
          if (localcr != null) {
            localcr.a(false);
          }
          a.l();
          a(new z(this, localcr));
        }
      }
    }
  }
  
  public void a(cr paramcr, String paramString)
  {
    super.a(paramcr, paramString);
  }
  
  public void a(cr paramcr, String paramString, String[] paramArrayOfString, int paramInt)
  {
    super.a(paramcr, paramString, paramArrayOfString, paramInt);
  }
  
  public void a(List<com.estrongs.fs.h> paramList, int paramInt)
  {
    int i = 0;
    if ("edit_mode".equals(a.q))
    {
      R.setVisibility(0);
      p.a(a.P(), paramList);
    }
    if (Y != null) {
      if (paramList != null) {
        break label70;
      }
    }
    for (;;)
    {
      j = i;
      k = paramInt;
      Y.invalidate();
      return;
      label70:
      i = paramList.size();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(new v(this, paramBoolean));
  }
  
  public boolean a(Menu paramMenu)
  {
    J = paramMenu;
    B();
    a.getMenuInflater().inflate(2131755011, paramMenu);
    D = paramMenu.findItem(2131625662);
    D.setIcon(at.a(a).g(2130838565));
    D.setTitle(a.getString(2131231405));
    c(paramMenu);
    if (I == null)
    {
      I = new m(a);
      I.e();
      I.a(false, true);
    }
    if (K == null) {
      K = new jq(a);
    }
    return true;
  }
  
  public boolean a(Menu paramMenu, String paramString)
  {
    SubMenu localSubMenu = D.getSubMenu();
    localSubMenu.removeGroup(1);
    z.clear();
    paramMenu.removeGroup(6);
    L.clear();
    label135:
    label170:
    Object localObject1;
    Object localObject2;
    if ((a.o) || (a.p) || (R.getVisibility() == 0))
    {
      A.setVisible(false);
      n.a(false);
      D.setVisible(false);
      if (!ax.d(A)) {
        break label608;
      }
      if (a.O() != null)
      {
        if (!a.h(paramString))
        {
          bool = true;
          localSubMenu.setGroupVisible(2, true);
          localSubMenu.setGroupVisible(3, bool);
          if ((a.O() instanceof e)) {
            break label602;
          }
          bool = true;
          localSubMenu.setGroupVisible(4, bool);
        }
      }
      else
      {
        localSubMenu.setGroupVisible(1, false);
        localSubMenu.setGroupVisible(6, false);
      }
    }
    else
    {
      do
      {
        return false;
        n.e();
        localObject1 = null;
        if (f.aZ()) {
          localObject1 = O.a(paramString);
        }
        paramMenu = I.b();
      } while (paramMenu == null);
      localObject2 = a(paramMenu, (String[])localObject1);
      if (localObject2 != null)
      {
        N = true;
        localObject1 = localObject2;
        if (ac.a() < 14) {
          localObject1 = new String[] { localObject2[0] };
        }
        if (localObject1.length == 1)
        {
          localObject2 = (com.estrongs.android.view.a.a)I.c().get(localObject1[0]);
          if (!ap.ai(paramString)) {
            break label656;
          }
        }
      }
    }
    label351:
    label533:
    label602:
    label608:
    label656:
    for (boolean bool = f.be();; bool = false)
    {
      paramMenu = I.a(paramMenu, localObject1[0]);
      a((com.estrongs.android.view.a.a)localObject2, bool);
      int i = paramMenu.length;
      paramMenu = I.a(paramMenu, "message_box");
      if (i != paramMenu.length) {
        n.e();
      }
      for (;;)
      {
        if (paramMenu.length != 0) {
          break label533;
        }
        D.setVisible(false);
        break;
        localObject2 = new ArrayList();
        int j = localObject1.length;
        i = 0;
        while (i < j)
        {
          String str = localObject1[i];
          paramMenu = I.a(paramMenu, str);
          ((ArrayList)localObject2).add((com.estrongs.android.view.a.a)I.c().get(str));
          i += 1;
        }
        a((List)localObject2);
        break label351;
        N = false;
        M.setVisibility(8);
        break label351;
        paramMenu = I.a(paramMenu, "search");
        if (paramMenu.length != i) {
          n.a(true);
        } else {
          n.a(false);
        }
      }
      paramMenu = I.b(paramMenu);
      if (X) {
        D.setOnMenuItemClickListener(null);
      }
      for (;;)
      {
        D.setVisible(true);
        break;
        D.setOnMenuItemClickListener(new x(this, paramMenu));
      }
      bool = false;
      break label135;
      bool = false;
      break label170;
      localSubMenu.setGroupVisible(2, false);
      localSubMenu.setGroupVisible(3, false);
      localSubMenu.setGroupVisible(4, false);
      localSubMenu.setGroupVisible(1, true);
      localSubMenu.setGroupVisible(6, true);
      return false;
    }
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    int j = paramMenuItem.getGroupId();
    MenuItem.OnMenuItemClickListener localOnMenuItemClickListener;
    if (j == 1)
    {
      localOnMenuItemClickListener = (MenuItem.OnMenuItemClickListener)z.get(Integer.valueOf(i));
      if (localOnMenuItemClickListener != null)
      {
        localOnMenuItemClickListener.onMenuItemClick(paramMenuItem);
        return true;
      }
    }
    else if (j == 6)
    {
      localOnMenuItemClickListener = (MenuItem.OnMenuItemClickListener)L.get(Integer.valueOf(i));
      if (localOnMenuItemClickListener != null)
      {
        localOnMenuItemClickListener.onMenuItemClick(paramMenuItem);
        return true;
      }
    }
    else
    {
      if (a(i, paramMenuItem)) {
        return true;
      }
      if (i == 16908332)
      {
        a.s();
        return true;
      }
    }
    return false;
  }
  
  public void b() {}
  
  public void b(String paramString)
  {
    Object localObject;
    com.estrongs.android.view.a.a locala;
    if (p != null)
    {
      R.setVisibility(0);
      localObject = o.a("paste_mode");
      locala = ((com.estrongs.android.ui.e.a)localObject).a(0);
      localObject = ((com.estrongs.android.ui.e.a)localObject).a(1);
      if (a.i(paramString)) {
        break label119;
      }
      if ((locala != null) && (locala.isEnabled())) {
        locala.d(false);
      }
      if ((localObject != null) && (((com.estrongs.android.view.a.a)localObject).isEnabled())) {
        ((com.estrongs.android.view.a.a)localObject).d(false);
      }
    }
    for (;;)
    {
      if (!"paste_mode".equals(o.a())) {
        o.a("paste_mode", Boolean.valueOf(false));
      }
      c(paramString);
      return;
      label119:
      if ((locala != null) && (!locala.isEnabled())) {
        locala.d(true);
      }
      if ((localObject != null) && (!((com.estrongs.android.view.a.a)localObject).isEnabled())) {
        ((com.estrongs.android.view.a.a)localObject).d(true);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (!r()) {
      return;
    }
    ax.c(A);
  }
  
  public boolean b(Menu paramMenu)
  {
    String str = null;
    cr localcr = a.O();
    if (localcr != null) {
      str = localcr.c();
    }
    return a(paramMenu, str);
  }
  
  public View c()
  {
    return g.inflate(2130903341, null);
  }
  
  @SuppressLint({"NewApi"})
  public void c(String paramString)
  {
    if ("edit_mode".equals(a.q)) {
      o.a(a.q, Boolean.valueOf(false));
    }
    if (J != null)
    {
      a(J, paramString);
      return;
    }
    a.invalidateOptionsMenu();
  }
  
  public void c(boolean paramBoolean)
  {
    R.setVisibility(0);
    p.b(paramBoolean);
    o.b(true);
    if (J != null)
    {
      b(J);
      return;
    }
    a.invalidateOptionsMenu();
  }
  
  public View d()
  {
    return g.inflate(2130903385, null);
  }
  
  public void d(boolean paramBoolean)
  {
    p.c(true);
  }
  
  public void g(int paramInt)
  {
    if ("edit_mode".equals(a.q))
    {
      if (p == null) {
        return;
      }
      p.f(paramInt);
    }
    if (I == null)
    {
      I = new m(a);
      I.e();
      I.a(false, true);
    }
    I.a(paramInt);
  }
  
  public View h()
  {
    if (Y != null) {
      return null;
    }
    return (View)y.getParent();
  }
  
  public View i()
  {
    return null;
  }
  
  public void j()
  {
    if (o != null) {
      o.b(false);
    }
    Z = true;
    y.setVisibility(4);
    if (Y != null) {
      Y.finish();
    }
  }
  
  public void k()
  {
    if ((o != null) && ("edit_mode".equals(a.q))) {
      o.b(true);
    }
    y.setVisibility(0);
    if (Z)
    {
      Z = false;
      if (a.O() != null) {}
    }
    else
    {
      return;
    }
    l();
  }
  
  public void l()
  {
    if ((!ap.bw(a.P())) && (!ap.by(a.P()))) {
      Y = a.startSupportActionMode(aa);
    }
  }
  
  public void m()
  {
    if (Y != null) {
      Y.finish();
    }
  }
  
  public void n()
  {
    if (A == null) {}
    cr localcr;
    do
    {
      return;
      localcr = a.O();
    } while (localcr == null);
    ax.b(A);
    localcr.f(true);
  }
  
  public void o()
  {
    b(false);
  }
  
  public void p()
  {
    cr localcr = a.O();
    if (localcr == null) {}
    for (String str = "";; str = localcr.c())
    {
      if (E != null)
      {
        if ((!ap.bi(str)) || (localcr == null) || (!localcr.p())) {
          break;
        }
        E.setIndeterminate(true);
        E.setVisibility(0);
      }
      return;
    }
    E.setVisibility(8);
  }
  
  public String q()
  {
    if (!r()) {
      return null;
    }
    return C;
  }
  
  public boolean r()
  {
    if (A == null) {
      return false;
    }
    return ax.d(A);
  }
  
  public void s()
  {
    if ("edit_mode".equals(a.q))
    {
      p.c(true);
      p.j();
    }
    cr localcr = a.O();
    if ((Build.VERSION.SDK_INT >= 14) && (localcr != null))
    {
      VerticalRecyclerViewFastScroller localVerticalRecyclerViewFastScroller = localcr.S();
      if (localVerticalRecyclerViewFastScroller != null)
      {
        localVerticalRecyclerViewFastScroller.setHandleViewDisplayListener(E());
        localVerticalRecyclerViewFastScroller.setIsShowAdressBar(bl.a(localcr, a.P()));
      }
    }
  }
  
  public void t()
  {
    if (o != null) {
      o.a(true);
    }
    if ("edit_mode".equals(a.q)) {
      R.setVisibility(8);
    }
    Z = false;
    if (Y != null) {
      Y.finish();
    }
    if (((a instanceof ESAbsToolbarActivity)) && (a.c()))
    {
      a.b(false);
      a.a(false);
    }
    if (J != null)
    {
      b(J);
      return;
    }
    a.invalidateOptionsMenu();
  }
  
  @SuppressLint({"NewApi"})
  public void u()
  {
    if (o != null) {
      o.a("normal_mode", Boolean.valueOf(true));
    }
    a.q = "normal_mode";
    R.setVisibility(8);
    a.o = false;
    if (J != null)
    {
      b(J);
      return;
    }
    a.invalidateOptionsMenu();
  }
  
  public boolean v()
  {
    if ((o != null) && (R.getVisibility() == 0) && (o.d())) {}
    do
    {
      return true;
      if (Y != null)
      {
        Y.getMenu().performIdentifierAction(2131625662, 0);
        return true;
      }
    } while (J == null);
    J.performIdentifierAction(2131625662, 0);
    return true;
  }
  
  public boolean w()
  {
    if ((R.getVisibility() == 0) && (o.c())) {
      return true;
    }
    if (Y != null)
    {
      Y.finish();
      return true;
    }
    return false;
  }
  
  public void x()
  {
    if (p != null) {
      p.k();
    }
    I.a(false, true);
  }
  
  public void y()
  {
    M.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */