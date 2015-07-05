package com.estrongs.android.pop.view;

import android.app.Activity;
import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.ui.pcs.w;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.cb;
import com.estrongs.fs.b.aj;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.m;
import com.estrongs.fs.util.a.a;
import java.util.List;

class dk
  extends aw
{
  dk(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  private void b(h paramh)
  {
    super.a(paramh);
  }
  
  protected void a(aj paramaj, List<h> paramList)
  {
    b localb;
    if ((cc.a()) && (z.N) && (am.e(am.bF(a.m.j("Market")), c())) && (a.m.n()))
    {
      localb = b.a();
      if (r.a().b())
      {
        if (!r.a().c()) {
          break label128;
        }
        if ((int)((System.currentTimeMillis() - a.m.aw()) / 86400000L) >= 15) {
          break label118;
        }
        localb.setFileType(m.S);
      }
    }
    for (;;)
    {
      paramList.add(0, localb);
      super.a(paramaj, paramList);
      return;
      label118:
      localb.setFileType(m.R);
      continue;
      label128:
      localb.setFileType(m.Q);
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if (((paramh instanceof f)) && (am.bW(paramh.getAbsolutePath())))
    {
      a.d("recycle://");
      return;
    }
    Object localObject;
    if (paramh.getPath().endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files/"))
    {
      localObject = new dl(this, paramh, paramTypedMap);
      if (r.a().b())
      {
        if ((r.a().c()) && (w.b()) && (!M))
        {
          w localw = new w(ad);
          localw.a((n)localObject);
          localw.show();
        }
        a.m.e(System.currentTimeMillis());
      }
    }
    else
    {
      localObject = FexApplication.a();
      if ((!am.bb(paramh.getAbsolutePath())) || (am.bg(paramh.getAbsolutePath()))) {
        break label269;
      }
    }
    label269:
    for (int i = 1; (((FexApplication)localObject).h()) && (i != 0); i = 0)
    {
      paramTypedMap = VerifyPasswordDialog.DialogType.NETWORK;
      paramTypedMap = VerifyPasswordDialog.a(a, paramTypedMap);
      paramTypedMap.a(new do(this, paramh));
      paramTypedMap.b();
      return;
      if ((a.m.c()) || (a.m.e()))
      {
        a.h.post(new dm(this, (n)localObject));
        return;
      }
      a.h.post(new dn(this, (n)localObject));
      return;
    }
    super.a(paramh, paramTypedMap);
  }
  
  protected void a(List<h> paramList, a parama)
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
 * Qualified Name:     com.estrongs.android.pop.view.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */