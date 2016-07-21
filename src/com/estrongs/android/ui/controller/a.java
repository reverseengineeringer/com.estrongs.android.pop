package com.estrongs.android.ui.controller;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESHorizontalScrollView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.f.l;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import java.util.ArrayList;
import java.util.List;

public abstract class a
{
  protected FileExplorerActivity a;
  protected boolean b = true;
  protected boolean c;
  protected boolean d = false;
  protected at e;
  protected ad f;
  protected LayoutInflater g;
  protected Handler h;
  protected AdvancedAddressBar i;
  protected int j;
  protected int k;
  protected l l = null;
  protected View.OnKeyListener m;
  protected com.estrongs.android.ui.d.a n;
  
  public a(FileExplorerActivity paramFileExplorerActivity)
  {
    a = paramFileExplorerActivity;
    for (;;)
    {
      try
      {
        if (a.getResources().getConfiguration().orientation != 1) {
          continue;
        }
        b = bool;
        c = b;
        d = cu.a(a);
        if (d) {
          b = true;
        }
      }
      catch (Exception paramFileExplorerActivity)
      {
        paramFileExplorerActivity.printStackTrace();
        continue;
      }
      e = at.a(a);
      f = ad.a(a);
      g = k.a(a);
      h = new Handler();
      return;
      bool = false;
    }
  }
  
  protected String a(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  public abstract void a();
  
  public void a(int paramInt, float paramFloat)
  {
    if (n != null) {
      n.a(paramInt, paramFloat);
    }
  }
  
  public abstract void a(int paramInt1, int paramInt2, float paramFloat);
  
  public void a(Configuration paramConfiguration)
  {
    boolean bool = true;
    if (orientation == 1) {}
    for (;;)
    {
      c = bool;
      if (!d) {
        b = c;
      }
      return;
      bool = false;
    }
  }
  
  public void a(com.estrongs.android.ui.d.h paramh)
  {
    if (n != null) {
      n.a(paramh);
    }
  }
  
  public void a(com.estrongs.android.ui.d.h paramh, int paramInt)
  {
    if (n != null) {
      n.a(paramh, paramInt);
    }
  }
  
  public void a(cr paramcr, String paramString)
  {
    View localView = paramcr.aA();
    AdvancedAddressBar localAdvancedAddressBar;
    Object localObject1;
    Object localObject2;
    boolean bool1;
    if (localView != null)
    {
      if (!bl.a(paramcr, paramString)) {
        break label485;
      }
      localView.setVisibility(0);
      localAdvancedAddressBar = (AdvancedAddressBar)localView.findViewById(2131625416);
      localObject1 = new com.estrongs.android.ui.addressbar.b();
      localObject2 = (TextView)com.estrongs.android.util.bl.a(localView, 2131625044);
      ((TextView)localObject2).setFocusable(true);
      boolean bool2 = ap.bC(paramString);
      boolean bool3 = ap.bL(paramString);
      if ((!ap.aX(paramString)) && (!ap.Y(paramString))) {
        break label372;
      }
      bool1 = true;
      boolean bool4 = ap.af(paramString);
      boolean bool5 = ap.aa(paramString);
      boolean bool6 = ap.W(paramString);
      if (((!bool2) || (bool3)) && (!bool1) && (!bool4) && (!bool5) && (!bool6)) {
        break label377;
      }
      ((TextView)localObject2).setText(a(2131230916));
      ((TextView)localObject2).setVisibility(0);
      ((TextView)localObject2).setOnClickListener(new b(this, paramString, bool2, bool1));
    }
    for (;;)
    {
      a = a.getResources().getDrawable(2131558728);
      b = a.getResources().getDrawable(2130838128);
      c = 2131558746;
      d = false;
      e = 0;
      f = a.getResources().getDrawable(2130837666);
      localAdvancedAddressBar.setDrawableRes((com.estrongs.android.ui.addressbar.b)localObject1);
      localAdvancedAddressBar.setIsBroadMode(true);
      localObject1 = new ArrayList();
      localObject2 = new ArrayList();
      bl.a(a, paramcr, paramString, (List)localObject1, (List)localObject2);
      localAdvancedAddressBar.setDisplayPaths((String[])((ArrayList)localObject2).toArray(new String[((ArrayList)localObject2).size()]));
      paramString = (ESHorizontalScrollView)localView.findViewById(2131624064);
      new Handler().post(new e(this, paramString));
      localAdvancedAddressBar.setOnAddressBarClickListener(new f(this, paramcr, (ArrayList)localObject1));
      localAdvancedAddressBar.setOnAddressBarLongClickListener(new g(this));
      return;
      label372:
      bool1 = false;
      break;
      label377:
      if (ap.ac(paramString))
      {
        ((TextView)localObject2).setVisibility(0);
        ((TextView)localObject2).setText(a(2131230867));
        ((TextView)localObject2).setOnClickListener(new c(this, paramcr));
      }
      else if ((ap.aZ(paramString)) || (ap.S(paramString)) || (ap.bs(paramString)))
      {
        ((TextView)localObject2).setVisibility(0);
        ((TextView)localObject2).setText(a(2131230867));
        ((TextView)localObject2).setOnClickListener(new d(this, paramString));
      }
      else
      {
        ((TextView)localObject2).setVisibility(8);
      }
    }
    label485:
    localView.setVisibility(8);
    paramcr.m();
  }
  
  public void a(cr paramcr, String paramString, String[] paramArrayOfString, int paramInt)
  {
    String str1 = paramArrayOfString[0];
    String str2 = paramArrayOfString[1];
    ArrayList localArrayList = new ArrayList();
    if ((str1 == null) && (ap.bp(paramString))) {
      localArrayList.add("/");
    }
    for (;;)
    {
      if (str2 != null) {
        localArrayList.add(0, str2);
      }
      paramArrayOfString = z().c(paramInt);
      if (paramArrayOfString != null) {
        paramArrayOfString.a(localArrayList);
      }
      paramArrayOfString = new String[localArrayList.size()];
      localArrayList.toArray(paramArrayOfString);
      i.setIsScreenSwitching(false);
      i.setDisplayPaths(paramArrayOfString);
      if (paramcr != null) {
        a(paramcr, paramString);
      }
      return;
      if ((str1 != null) && (str1.equals("#home_page#")))
      {
        localArrayList.add(a.getString(2131231657));
      }
      else
      {
        paramArrayOfString = str1;
        if (str1 == null) {
          paramArrayOfString = "";
        }
        localArrayList.add(paramArrayOfString);
      }
    }
  }
  
  protected void a(Runnable paramRunnable)
  {
    h.post(paramRunnable);
  }
  
  public void a(String paramString)
  {
    if (i != null) {
      i.setCurrentPath(paramString);
    }
  }
  
  public abstract void a(List<com.estrongs.fs.h> paramList, int paramInt);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract boolean a(Menu paramMenu);
  
  public abstract boolean a(MenuItem paramMenuItem);
  
  protected Drawable b(int paramInt)
  {
    return a.getResources().getDrawable(paramInt);
  }
  
  public abstract void b();
  
  public abstract void b(String paramString);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract boolean b(Menu paramMenu);
  
  public abstract View c();
  
  public void c(int paramInt)
  {
    if (n != null) {
      n.e(paramInt);
    }
  }
  
  public abstract void c(String paramString);
  
  public abstract void c(boolean paramBoolean);
  
  public abstract View d();
  
  public void d(int paramInt)
  {
    if (n != null) {
      n.d(paramInt);
    }
  }
  
  public abstract void d(boolean paramBoolean);
  
  public void e() {}
  
  public void e(int paramInt)
  {
    if (n != null) {
      n.c(paramInt);
    }
  }
  
  public void f()
  {
    if (n != null) {
      n.c();
    }
  }
  
  public void f(int paramInt)
  {
    if (n != null) {
      n.d(paramInt);
    }
  }
  
  public void g()
  {
    l = null;
  }
  
  public abstract void g(int paramInt);
  
  public abstract View h();
  
  public abstract View i();
  
  public abstract void j();
  
  public abstract void k();
  
  public abstract void l();
  
  public abstract void m();
  
  public abstract void n();
  
  public abstract void o();
  
  public abstract void p();
  
  public abstract String q();
  
  public abstract boolean r();
  
  public abstract void s();
  
  public abstract void t();
  
  public abstract void u();
  
  public abstract boolean v();
  
  public abstract boolean w();
  
  public abstract void x();
  
  public abstract void y();
  
  public i z()
  {
    return a.au();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */