package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;

class jo
  implements Runnable
{
  jo(jk paramjk, a parama, String paramString) {}
  
  public void run()
  {
    if ((jh.l(c.a)) && (jh.m(c.a) == 0L))
    {
      c.a.d();
      if (ac.a).processData != null) {
        fc.a).e.a(jh.a(c.a), ac.a).processData);
      }
      jh.k(c.a).post(new jp(this));
      if (!(jh.a(c.a) instanceof k)) {
        break label510;
      }
      c.a.setTitle(c.a.mContext.getString(2131231031) + " " + c.a.mContext.getString(2131232400));
      c.a.a(c.a.mContext.getString(2131230838) + " " + c.a.mContext.getString(2131232400) + "," + c.a.mContext.getString(2131231723));
      label278:
      if (b != null) {
        c.a.a(b);
      }
      if ((ac.a).processData.d == 0L) && (ac.a).processData.f == 0L)) {
        jh.f(c.a).c();
      }
      if (!(jh.a(c.a) instanceof r)) {
        break label1283;
      }
      if (ac.a).getTaskResult().a != 17) {
        break label1246;
      }
      c.a.setConfirmButton(c.a.mContext.getString(2131232399), new jq(this));
    }
    for (;;)
    {
      c.a.setCancelButton(c.a.mContext.getString(2131231265), new js(this));
      if (ac.a).getTaskResult().a == 12) {
        jh.f(c.a).d();
      }
      return;
      jh.f(c.a).b();
      break;
      label510:
      if ((jh.a(c.a) instanceof aq))
      {
        c.a.setTitle(c.a.mContext.getString(2131230865) + " " + c.a.mContext.getString(2131232400));
        c.a.a(c.a.mContext.getString(2131230865) + " " + c.a.mContext.getString(2131232400) + "," + c.a.mContext.getString(2131231723));
        break label278;
      }
      if ((jh.a(c.a) instanceof r))
      {
        c.a.setTitle(c.a.mContext.getString(2131230838) + " " + c.a.mContext.getString(2131232400));
        c.a.a(c.a.mContext.getString(2131230838) + " " + c.a.mContext.getString(2131232400) + "," + c.a.mContext.getString(2131231723));
        break label278;
      }
      if ((a instanceof ab))
      {
        c.a.setTitle(c.a.mContext.getString(2131230845) + " " + c.a.mContext.getString(2131232400));
        break label278;
      }
      if ((a instanceof com.estrongs.fs.b.bo))
      {
        c.a.setTitle(c.a.mContext.getString(2131231866) + " " + c.a.mContext.getString(2131232400));
        break label278;
      }
      if ((a instanceof com.estrongs.fs.b.p))
      {
        c.a.setTitle(c.a.mContext.getString(2131231066) + " " + c.a.mContext.getString(2131232400));
        break label278;
      }
      if ((a instanceof ad))
      {
        c.a.setTitle(c.a.mContext.getString(2131232245));
        break label278;
      }
      if ((a instanceof ag))
      {
        c.a.setTitle(c.a.mContext.getString(2131230850) + " " + c.a.mContext.getString(2131232400));
        break label278;
      }
      if (!(a instanceof y)) {
        break label278;
      }
      c.a.setTitle(c.a.mContext.getString(2131230843) + " " + c.a.mContext.getString(2131232400));
      break label278;
      label1246:
      c.a.setConfirmButton(c.a.mContext.getString(2131231723), new jr(this));
    }
    label1283:
    jh.f(c.a).e(8);
    jh.f(c.a).f(8);
    jh.f(c.a).d(8);
    c.a.setSingleButton(c.a.mContext.getString(2131231270), new jt(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */