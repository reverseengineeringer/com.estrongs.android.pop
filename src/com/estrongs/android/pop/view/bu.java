package com.estrongs.android.pop.view;

import android.os.Handler;
import android.view.View;
import com.estrongs.android.pop.app.b.a;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.d.b;
import com.estrongs.android.ui.d.d;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.ui.e.w;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.ca;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import com.estrongs.android.widget.bc;
import java.util.ArrayList;
import java.util.List;

class bu
  implements bc
{
  int a = 0;
  
  bu(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(int paramInt)
  {
    a = paramInt;
    if (bd.a(b.x, paramInt))
    {
      aw localaw = (aw)b.x.get(paramInt);
      if (localaw != null) {
        FileExplorerActivity.b(b, localaw);
      }
    }
    b.k.c(false);
  }
  
  public void a(int paramInt, float paramFloat)
  {
    ArrayList localArrayList = null;
    float f;
    int j;
    if (Math.abs(paramFloat) < 1.0E-4F)
    {
      f = 0.0F;
      if (f < 1.0E-4F) {
        b.k.c(true);
      }
      j = e.c();
      if (j != 0) {
        break label52;
      }
    }
    label52:
    int i;
    label80:
    do
    {
      return;
      f = Math.abs(paramFloat);
      break;
      if (paramFloat < 0.0F) {
        break label315;
      }
      i = (paramInt + 1) % j;
      if (paramFloat >= 0.0F) {
        break label329;
      }
      j = (paramInt + 1) % j;
      b.n.a(paramInt, 1.0F - f);
      b.n.a(i, f);
      if (i != j) {
        b.n.a(j, 0.0F);
      }
    } while ((!b.u) || ((!FileExplorerActivity.a(b).a()) && (f == 0.0F)));
    Object localObject1 = e.c(paramInt);
    if (localObject1 != null) {}
    for (localObject1 = ((d)localObject1).d();; localObject1 = null)
    {
      d locald = e.c(i);
      if (locald != null) {
        localArrayList = locald.d();
      }
      Object localObject2 = localArrayList;
      if (localArrayList == null)
      {
        localObject2 = new String[2];
        FileExplorerActivity.a(b, b.h(i), locald, locald.b(), (String[])localObject2);
        localArrayList = localObject2[0];
        Object localObject3 = localObject2[1];
        localObject2 = new ArrayList();
        if (localObject3 != null) {
          ((ArrayList)localObject2).add(localObject3);
        }
        ((ArrayList)localObject2).add(localArrayList);
        locald.a((ArrayList)localObject2);
      }
      FileExplorerActivity.a(b).b(true);
      if (paramFloat > 0.0F)
      {
        FileExplorerActivity.a(b).a((List)localObject1, (List)localObject2, paramFloat);
        return;
        label315:
        i = (paramInt - 1 + j) % j;
        break;
        label329:
        j = (paramInt - 1 + j) % j;
        break label80;
      }
      FileExplorerActivity.a(b).a((List)localObject2, (List)localObject1, paramFloat);
      return;
    }
  }
  
  public void b(int paramInt)
  {
    if (b.u) {
      FileExplorerActivity.a(b).c(true);
    }
    b.k.c(true);
    b.n.e(paramInt);
    aw localaw = b.y();
    if (localaw != null) {
      localaw.U();
    }
  }
  
  public void c(int paramInt)
  {
    int i = e.a();
    if (b.n != null) {
      b.n.d(i);
    }
    b.f.c(a);
    Object localObject2 = b.z();
    Object localObject1 = localObject2;
    if (bd.a((CharSequence)localObject2))
    {
      localObject1 = localObject2;
      if (paramInt >= 0)
      {
        localObject1 = localObject2;
        if (paramInt < e.c()) {
          localObject1 = e.c(paramInt).b();
        }
      }
    }
    localObject2 = r.a();
    boolean bool = am.aB((String)localObject1);
    if ((bool) && (!((r)localObject2).b()) && (FileExplorerActivity.H(b) == null))
    {
      FileExplorerActivity.a(b, new bv(this));
      b.h.postDelayed(FileExplorerActivity.H(b), FileExplorerActivity.I(b));
      localObject1 = b.y();
      if ((FileExplorerActivity.J(b) != null) && (FileExplorerActivity.J(b) != localObject1))
      {
        FileExplorerActivity.J(b).b_();
        if (FileExplorerActivity.J(b).z()) {
          FileExplorerActivity.J(b).a(false);
        }
        FileExplorerActivity.b(b, (aw)localObject1);
      }
      b.I.a(b.z(), false);
      localObject2 = b.findViewById(2131361984);
      if (localObject1 == null) {
        break label400;
      }
      if (!((aw)localObject1).F()) {
        break label372;
      }
      label282:
      ((aw)localObject1).l();
    }
    for (;;)
    {
      if (am.aZ(b.z())) {
        a.a().c();
      }
      if ("edit_mode".equals(b.j)) {
        b.s();
      }
      return;
      if ((FileExplorerActivity.H(b) == null) || (bool)) {
        break;
      }
      b.h.removeCallbacks(FileExplorerActivity.H(b));
      FileExplorerActivity.a(b, null);
      break;
      label372:
      if (!b.q) {
        break label282;
      }
      ((View)localObject2).setVisibility(8);
      b.q = false;
      break label282;
      label400:
      if (b.q)
      {
        ((View)localObject2).setVisibility(8);
        b.q = false;
      }
    }
  }
  
  public void d(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */