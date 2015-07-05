package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.view.ak;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.b.bm;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;

class je
  implements Runnable
{
  je(ja paramja, a parama, String paramString) {}
  
  public void run()
  {
    if ((ix.l(c.a)) && (ix.m(c.a) == 0L))
    {
      c.a.d();
      if (ac.a).processData != null) {
        fc.a).c.a(ix.a(c.a), ac.a).processData);
      }
      ix.k(c.a).post(new jf(this));
      if (!(ix.a(c.a) instanceof k)) {
        break label476;
      }
      c.a.setTitle(c.a.mContext.getString(2131428666) + " " + c.a.mContext.getString(2131428117));
      c.a.a(c.a.mContext.getString(2131427348) + " " + c.a.mContext.getString(2131428117) + "," + c.a.mContext.getString(2131427397));
      label278:
      if (b != null) {
        c.a.a(b);
      }
      if ((ac.a).processData.d == 0L) && (ac.a).processData.f == 0L)) {
        ix.f(c.a).c();
      }
      if (!(ix.a(c.a) instanceof r)) {
        break label1249;
      }
      if (ac.a).getTaskResult().a != 17) {
        break label1212;
      }
      c.a.setConfirmButton(c.a.mContext.getString(2131428109), new jg(this));
    }
    for (;;)
    {
      c.a.setCancelButton(c.a.mContext.getString(2131427340), new ji(this));
      return;
      ix.f(c.a).b();
      break;
      label476:
      if ((ix.a(c.a) instanceof ao))
      {
        c.a.setTitle(c.a.mContext.getString(2131427350) + " " + c.a.mContext.getString(2131428117));
        c.a.a(c.a.mContext.getString(2131427350) + " " + c.a.mContext.getString(2131428117) + "," + c.a.mContext.getString(2131427397));
        break label278;
      }
      if ((ix.a(c.a) instanceof r))
      {
        c.a.setTitle(c.a.mContext.getString(2131427348) + " " + c.a.mContext.getString(2131428117));
        c.a.a(c.a.mContext.getString(2131427348) + " " + c.a.mContext.getString(2131428117) + "," + c.a.mContext.getString(2131427397));
        break label278;
      }
      if ((a instanceof ab))
      {
        c.a.setTitle(c.a.mContext.getString(2131427347) + " " + c.a.mContext.getString(2131428117));
        break label278;
      }
      if ((a instanceof bm))
      {
        c.a.setTitle(c.a.mContext.getString(2131427658) + " " + c.a.mContext.getString(2131428117));
        break label278;
      }
      if ((a instanceof com.estrongs.fs.b.p))
      {
        c.a.setTitle(c.a.mContext.getString(2131428089) + " " + c.a.mContext.getString(2131428117));
        break label278;
      }
      if ((a instanceof ad))
      {
        c.a.setTitle(c.a.mContext.getString(2131427613));
        break label278;
      }
      if ((a instanceof ag))
      {
        c.a.setTitle(c.a.mContext.getString(2131428478) + " " + c.a.mContext.getString(2131428117));
        break label278;
      }
      if (!(a instanceof y)) {
        break label278;
      }
      c.a.setTitle(c.a.mContext.getString(2131428479) + " " + c.a.mContext.getString(2131428117));
      break label278;
      label1212:
      c.a.setConfirmButton(c.a.mContext.getString(2131427397), new jh(this));
    }
    label1249:
    ix.f(c.a).d(8);
    ix.f(c.a).e(8);
    ix.f(c.a).c(8);
    c.a.setSingleButton(c.a.mContext.getString(2131427339), new jj(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */