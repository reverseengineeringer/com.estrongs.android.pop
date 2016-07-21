package com.estrongs.android.pop.view;

import android.app.Activity;
import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dw;
import com.estrongs.fs.b.al;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.w;
import java.util.List;

class bh
  extends cr
{
  bh(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void a(h paramh)
  {
    super.c(paramh);
  }
  
  protected void a(al paramal, List<h> paramList)
  {
    b localb;
    if ((cl.a()) && (com.estrongs.android.pop.z.N) && (ap.e(ap.bW(a.k.j(a.a)), c())) && (a.k.o()))
    {
      localb = b.a();
      if (u.a().b())
      {
        if (!u.a().c()) {
          break label129;
        }
        if ((int)((System.currentTimeMillis() - a.k.ax()) / 86400000L) >= 15) {
          break label119;
        }
        localb.setFileType(w.R);
      }
    }
    for (;;)
    {
      paramList.add(0, localb);
      super.a(paramal, paramList);
      return;
      label119:
      localb.setFileType(w.Q);
      continue;
      label129:
      localb.setFileType(w.P);
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if (((paramh instanceof f)) && (ap.cp(paramh.getAbsolutePath())))
    {
      a.f("recycle://");
      return;
    }
    Object localObject;
    if (paramh.getPath().endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files/"))
    {
      localObject = new bi(this, paramh, paramTypedMap);
      if (u.a().b())
      {
        if ((u.a().c()) && (com.estrongs.android.ui.pcs.z.b()) && (!S))
        {
          com.estrongs.android.ui.pcs.z localz = new com.estrongs.android.ui.pcs.z(ag);
          localz.a((q)localObject);
          localz.show();
        }
        a.k.e(System.currentTimeMillis());
      }
    }
    else
    {
      localObject = FexApplication.a();
      if ((!ap.bm(paramh.getAbsolutePath())) || (ap.br(paramh.getAbsolutePath()))) {
        break label269;
      }
    }
    label269:
    for (int i = 1; (((FexApplication)localObject).h()) && (i != 0); i = 0)
    {
      paramTypedMap = VerifyPasswordDialog.DialogType.NETWORK;
      paramTypedMap = VerifyPasswordDialog.a(a, paramTypedMap);
      paramTypedMap.a(new bl(this, paramh));
      paramTypedMap.b();
      return;
      if ((a.k.d()) || (a.k.f()))
      {
        a.i.post(new bj(this, (q)localObject));
        return;
      }
      a.i.post(new bk(this, (q)localObject));
      return;
    }
    super.a(paramh, paramTypedMap);
  }
  
  protected void a(List<h> paramList, com.estrongs.fs.util.a.a parama)
  {
    super.a(paramList, parama);
    if (paramList.contains(b.a()))
    {
      paramList.remove(b.a());
      paramList.add(0, b.a());
    }
  }
  
  public String c()
  {
    String str2 = super.c();
    String str1 = str2;
    if (str2 != null)
    {
      str1 = str2;
      if (str2.endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) {
        str1 = str2.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
      }
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */