package com.estrongs.android.pop.view;

import com.estrongs.android.j.d;
import com.estrongs.android.ui.d.h;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dv;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import com.estrongs.android.widget.bd;
import java.util.List;

class ap
  implements bd
{
  int a = 0;
  
  ap(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(int paramInt)
  {
    Object localObject = b.au().b().a();
    d.a(b, (String)localObject);
    a = paramInt;
    if (bk.a(b.w, paramInt))
    {
      localObject = (cr)b.w.get(paramInt);
      if (localObject != null) {
        FileExplorerActivity.b(b, (cr)localObject);
      }
    }
    FileExplorerActivity.a(b).d(false);
  }
  
  public void a(int paramInt, float paramFloat)
  {
    if (Math.abs(paramFloat) < 1.0E-4F) {}
    for (float f = 0.0F;; f = Math.abs(paramFloat))
    {
      if (f < 1.0E-4F) {
        FileExplorerActivity.a(b).d(true);
      }
      j = b.au().c();
      if (j != 0) {
        break;
      }
      return;
    }
    int i;
    if (paramFloat >= 0.0F)
    {
      i = (paramInt + 1) % j;
      if (paramFloat >= 0.0F) {
        break label160;
      }
    }
    label160:
    for (int j = (paramInt + 1) % j;; j = (paramInt - 1 + j) % j)
    {
      FileExplorerActivity.a(b).a(paramInt, 1.0F - f);
      FileExplorerActivity.a(b).a(i, f);
      if (i != j) {
        FileExplorerActivity.a(b).a(j, 0.0F);
      }
      FileExplorerActivity.a(b).a(paramInt, i, paramFloat);
      return;
      i = (paramInt - 1 + j) % j;
      break;
    }
  }
  
  public void b(int paramInt)
  {
    FileExplorerActivity.a(b).d(true);
    FileExplorerActivity.a(b).f(paramInt);
    cr localcr = b.O();
    if (localcr != null) {
      localcr.ak();
    }
  }
  
  public void c(int paramInt)
  {
    int i = b.au().a();
    FileExplorerActivity.a(b).f(i);
    b.h.b(a);
    if ((bk.a(b.P())) && (paramInt >= 0) && (paramInt < b.au().c())) {
      b.au().c(paramInt).a();
    }
    cr localcr = b.O();
    if ((FileExplorerActivity.D(b) != null) && (FileExplorerActivity.D(b) != localcr))
    {
      FileExplorerActivity.D(b).j_();
      if (FileExplorerActivity.D(b).N()) {
        FileExplorerActivity.D(b).a(false);
      }
      FileExplorerActivity.b(b, localcr);
    }
    b.E.a(b.P(), false);
    if (localcr != null) {
      if (localcr.W()) {
        localcr.l();
      }
    }
    for (;;)
    {
      if (com.estrongs.android.util.ap.bk(b.P())) {
        com.estrongs.android.pop.app.f.a.a().c();
      }
      if (b.p) {
        b.B();
      }
      return;
      b.ab();
      break;
      b.ab();
    }
  }
  
  public void d(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */