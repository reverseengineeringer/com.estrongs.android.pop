package com.estrongs.android.pop.app;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.TextView;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.e.ic;
import com.estrongs.android.ui.e.iw;
import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.ui.view.ESVideoView;
import com.estrongs.android.util.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.l;
import com.estrongs.fs.d;
import java.io.InputStream;
import java.net.URL;

public class PopVideoPlayer
  extends ESActivity
  implements com.estrongs.android.ui.e.jb
{
  private static final String k = PopVideoPlayer.class.getSimpleName();
  private int A = 0;
  private aa B = aa.g();
  private r C = null;
  private TextView D = null;
  private boolean E = false;
  private boolean F = false;
  private boolean G = true;
  private long H = 0L;
  private long I = 0L;
  private Handler J = new iq(this);
  private final BroadcastReceiver K = new jd(this);
  private final BroadcastReceiver L = new js(this);
  private final BroadcastReceiver M = new ju(this);
  private iw N;
  private ic O;
  private com.estrongs.android.view.a.a P;
  private com.estrongs.android.view.a.a Q;
  private com.estrongs.android.view.a.a R;
  private boolean S = false;
  private final int T = 0;
  private final int U = 1;
  private Object V = new Object();
  private iw W;
  private ic X;
  private com.estrongs.android.view.a.a Y;
  private com.estrongs.android.view.a.a Z;
  boolean a = true;
  private com.estrongs.android.view.a.a aa;
  private com.estrongs.android.view.a.a ab;
  private Rect ac;
  View b;
  boolean c = false;
  protected View d;
  boolean e = false;
  boolean f = false;
  boolean g = false;
  i h = null;
  Boolean i = Boolean.valueOf(false);
  boolean j = true;
  private d l = d.a(this);
  private ESVideoView m;
  private boolean n = false;
  private FrameLayout o;
  private MediaController p;
  private MediaController q;
  private ke r;
  private int t = 0;
  private Uri u = null;
  private String v = null;
  private com.estrongs.android.util.a w = null;
  private View x;
  private TextView y;
  private View z;
  
  private String a(Uri paramUri)
  {
    Uri localUri = null;
    if (paramUri == null) {
      paramUri = localUri;
    }
    for (;;)
    {
      return paramUri;
      if (paramUri.getScheme().equals("file")) {
        return paramUri.getPath();
      }
      if (("http".equals(paramUri.getScheme())) && ("127.0.0.1".equals(paramUri.getHost()))) {
        return am.bq(Uri.decode(paramUri.toString()));
      }
      Cursor localCursor = getContentResolver().query(paramUri, new String[] { "_data" }, null, null, null);
      try
      {
        int i1 = localCursor.getColumnIndexOrThrow("_data");
        if ((localCursor != null) && (localCursor.moveToFirst()))
        {
          paramUri = localCursor.getString(i1);
          localUri = paramUri;
          paramUri = localUri;
          return localUri;
        }
        paramUri = localUri;
        return null;
      }
      catch (Exception paramUri)
      {
        paramUri = localUri;
        return null;
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (B.p())
    {
      if ((a()) || (paramBoolean))
      {
        B.a(u.getPath(), am.a(v, com.estrongs.android.c.a.a(), true, true), am.d(v), bc.S(am.d(v)), null);
        h();
      }
      return;
    }
    if (C == null) {
      l();
    }
    if (a()) {
      m();
    }
    C.show();
  }
  
  private boolean e()
  {
    try
    {
      String str = Uri.decode(u.toString());
      if (str.startsWith("http://"))
      {
        str = str.substring("http://".length());
        int i1 = str.indexOf("/");
        if (i1 > 0)
        {
          if (!str.substring(0, i1).startsWith("127.0.0.1")) {
            return false;
          }
          str = am.bq(str.substring(i1));
          Intent localIntent = new Intent(this, StreamingMediaPlayer.class);
          localIntent.addFlags(67108864);
          localIntent.setData(Uri.parse(str));
          startActivity(localIntent);
          return true;
        }
      }
    }
    catch (Exception localException) {}
    return false;
  }
  
  private void f()
  {
    if ((a()) && (o.getVisibility() != 0)) {
      p.show();
    }
  }
  
  private void g()
  {
    a(false);
  }
  
  private void h()
  {
    if (!B.p())
    {
      Log.e(k, "changeToCastMode error, chromecast is not connected");
      return;
    }
    if (p != null) {
      p.hide();
    }
    m();
    A = 1;
    o.setVisibility(0);
    if (q == null)
    {
      q = new jv(this, this);
      if (r == null)
      {
        r = new ke(this);
        B.a(r);
        B.a(r);
        B.a(r);
      }
      q.setMediaPlayer(r);
      q.setAnchorView(o);
    }
    ((ImageView)z.findViewById(2131361853)).setImageResource(2130838158);
    if ((B.r() > 0) && (B.r() != 2)) {
      b.setVisibility(0);
    }
    J.sendMessageDelayed(J.obtainMessage(5), 1000L);
  }
  
  private void i()
  {
    if (aa.b())
    {
      z.setVisibility(0);
      return;
    }
    z.setVisibility(8);
  }
  
  private void j()
  {
    q.setMediaPlayer(r);
    J.sendMessageDelayed(J.obtainMessage(5), 1500L);
  }
  
  private void k()
  {
    A = 0;
    if (q != null) {
      q.hide();
    }
    o.setVisibility(8);
    Message localMessage = J.obtainMessage(4);
    J.sendMessageDelayed(localMessage, 100L);
    n();
    ((ImageView)z.findViewById(2131361853)).setImageResource(2130838199);
    if (b.getVisibility() == 0) {
      b.setVisibility(8);
    }
    J.removeMessages(5);
  }
  
  private void l()
  {
    if (C != null) {
      return;
    }
    C = new r(this);
    C.a(new iz(this));
    C.setOnCancelListener(new ja(this));
  }
  
  private void m()
  {
    t = m.getCurrentPosition();
    if (J.hasMessages(7)) {
      J.removeMessages(7);
    }
    if (J.hasMessages(9)) {
      J.removeMessages(9);
    }
    if (b.getVisibility() == 0) {
      b.setVisibility(8);
    }
    new Thread(new jh(this)).start();
  }
  
  private void n()
  {
    if (!a()) {
      ChromeCastPlayerNotificationHelper.a().j();
    }
    label107:
    do
    {
      return;
      if (!e)
      {
        if (f)
        {
          if (ac.a() >= 8)
          {
            new al(m).a("resume");
            if (ac.a() >= 14) {
              m.seekTo(t);
            }
            if ("Market".startsWith("Spreadtrum"))
            {
              if (!j) {
                break label107;
              }
              u();
            }
          }
          for (;;)
          {
            f = false;
            t = 0;
            return;
            c = true;
            continue;
            u();
          }
        }
        if (g)
        {
          t = 0;
          g = false;
          return;
        }
        q();
        return;
      }
    } while (!e);
    q();
    t = 0;
    e = false;
  }
  
  private void o()
  {
    for (;;)
    {
      try
      {
        int i1 = ac.a();
        if (i1 >= 8) {
          continue;
        }
      }
      catch (Exception localException)
      {
        continue;
      }
      finally {}
      return;
      if (h == null) {
        h = new i(this, null);
      }
      synchronized (V)
      {
        if (!i.booleanValue()) {
          i = Boolean.valueOf(h.a());
        }
      }
    }
  }
  
  private void p()
  {
    for (;;)
    {
      try
      {
        if ((ac.a() >= 8) && (h != null))
        {
          bool = i.booleanValue();
          if (bool) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        continue;
        boolean bool = false;
        continue;
      }
      finally {}
      return;
      synchronized (V)
      {
        if (i.booleanValue())
        {
          if (h.b()) {
            continue;
          }
          bool = true;
          i = Boolean.valueOf(bool);
        }
      }
    }
  }
  
  private void q()
  {
    int i1 = 0;
    Object localObject = getIntent().getData();
    try
    {
      if (((Uri)localObject).toString().startsWith("smb://"))
      {
        m.a((Uri)localObject);
        new URL(((Uri)localObject).toString()).openStream().close();
        return;
      }
      m.requestFocus();
      localObject = J;
      int i2 = t;
      if (g) {
        i1 = 1;
      }
      localObject = ((Handler)localObject).obtainMessage(2, i2, i1);
      g = false;
      J.sendMessageDelayed((Message)localObject, 500L);
      return;
    }
    catch (Exception localException) {}
  }
  
  private boolean r()
  {
    return (N != null) && (N.b());
  }
  
  private boolean s()
  {
    return (W != null) && (W.b());
  }
  
  private void u()
  {
    try
    {
      m.start();
      if (!J.hasMessages(9))
      {
        Message localMessage = J.obtainMessage(9);
        J.sendMessageDelayed(localMessage, 1000L);
      }
      if (!F)
      {
        l.a();
        F = true;
      }
      return;
    }
    finally {}
  }
  
  private void v()
  {
    try
    {
      m.a();
      if (F)
      {
        l.b();
        F = false;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean a()
  {
    return A == 0;
  }
  
  public void b()
  {
    if (N == null)
    {
      N = new jb(this, this, true, true);
      O = new ic(this, true);
      N.a(O);
      N.a(O.c());
      N.a(new jc(this));
      Q = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838180), getString(2131428524)).a(new je(this));
      P = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838157), getString(2131428525)).a(new jf(this));
      R = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838157), getString(2131428523)).a(new jg(this));
      com.estrongs.android.ui.e.jk localjk = O.b();
      localjk.j();
      localjk.a(R);
      if ((!a()) && (!n)) {
        localjk.a(Q);
      }
    }
    if (!N.b())
    {
      N.c();
      return;
    }
    N.d();
  }
  
  public void c()
  {
    if (W == null)
    {
      W = new ji(this, this, true, true);
      X = new ic(this, true);
      W.a(X);
      W.a(X.c());
      W.a(new jj(this));
      Y = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838180), getString(2131427872)).a(new jk(this));
      aa = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838172), getString(2131427347)).a(new jl(this));
      ab = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838188), getString(2131427388)).a(new jq(this));
      Z = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838180), getString(2131427872)).a(new jr(this));
      P = new com.estrongs.android.view.a.a(getResources().getDrawable(2130838157), getString(2131428525)).a(new jt(this));
    }
    com.estrongs.android.ui.e.jk localjk = X.b();
    localjk.j();
    String str = a(u);
    if ((str != null) && (!"http".equals(u.getScheme()))) {
      localjk.a(ab);
    }
    if ((!"Market".equals("Sharp")) && (str != null)) {
      localjk.a(aa);
    }
    if (a())
    {
      if (aa.a()) {
        localjk.a(P);
      }
      localjk.a(Y);
    }
    while (!W.b())
    {
      W.c();
      ((ImageView)d.findViewById(2131361853)).setImageResource(2130838204);
      return;
      if (aa.a()) {
        localjk.a(Z);
      }
    }
    W.d();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    p.hide();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setDefaultKeyMode(2);
    requestWindowFeature(1);
    getWindow().setFlags(2000, 1024);
    setContentView(2130903219);
    p = new jw(this, this);
    m = ((ESVideoView)findViewById(2131362629));
    o = ((FrameLayout)findViewById(2131362630));
    o.setOnClickListener(new jx(this));
    D = ((TextView)findViewById(2131362631));
    D.setText(getString(2131427432) + getString(2131428526));
    m.a(p);
    try
    {
      p.setEnabled(false);
      p.requestFocus();
      m.a(new jy(this));
      m.a(new jz(this));
      m.a(new ir(this));
      m.a(new is(this));
      u = getIntent().getData();
      if ((ac.a() < 8) && (e())) {
        finish();
      }
      for (;;)
      {
        return;
        t = 0;
        g = false;
        if ("Market".startsWith("Spreadtrum")) {}
        try
        {
          registerReceiver(K, new IntentFilter("android.intent.action.SCREEN_OFF"));
          registerReceiver(L, new IntentFilter("android.intent.action.USER_PRESENT"));
          registerReceiver(M, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"));
          b = findViewById(2131361852);
          w = com.estrongs.android.util.a.a(this, false, "PopVideoPlayer");
          x = findViewById(2131362632);
          y = ((TextView)x.findViewById(2131362633));
          paramBundle = getIntent().getData();
          v = a(paramBundle);
          if (v != null) {
            y.setText(am.d(v));
          }
          Object localObject = x;
          int i1;
          if (p.isShown())
          {
            i1 = 0;
            label446:
            ((View)localObject).setVisibility(i1);
            localObject = new ColorDrawable(-16777216);
            ((ColorDrawable)localObject).setAlpha(150);
            x.setBackgroundDrawable((Drawable)localObject);
            d = x.findViewById(2131362419);
            d.setOnClickListener(new it(this));
            z = findViewById(2131361927);
            z.setOnClickListener(new iu(this));
            findViewById(2131362418).setOnClickListener(new iv(this));
            m.a(paramBundle);
            if (n) {
              continue;
            }
            if (!getIntent().getBooleanExtra("Chromecast", false)) {
              break label639;
            }
            h();
            if (getIntent().getStringExtra("ChromecastUrl") != null) {
              a(true);
            }
          }
          while (a())
          {
            if (!p.isShown()) {
              f();
            }
            new ix(this).start();
            return;
            i1 = 4;
            break label446;
            label639:
            o();
            q();
          }
        }
        catch (Exception paramBundle)
        {
          for (;;) {}
        }
      }
    }
    catch (Exception paramBundle)
    {
      for (;;) {}
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    return null;
  }
  
  public void onDestroy()
  {
    if (r != null)
    {
      B.b(r);
      B.b(r);
      B.b(r);
    }
    if (C != null)
    {
      C.a();
      C = null;
    }
    p();
    if ("Market".startsWith("Spreadtrum")) {}
    try
    {
      unregisterReceiver(K);
      unregisterReceiver(L);
      unregisterReceiver(M);
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
    case 4: 
      for (;;)
      {
        return super.onKeyDown(paramInt, paramKeyEvent);
        S = true;
      }
    }
    if (!p.isShown()) {
      f();
    }
    c();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    m();
    w.c();
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    t = paramBundle.getInt("playback_position", 0);
  }
  
  public void onResume()
  {
    super.onResume();
    w.b();
    n();
    i();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    t = m.getCurrentPosition();
    paramBundle.putInt("playback_position", t);
  }
  
  public void onStop()
  {
    super.onStop();
    if (!a()) {
      return;
    }
    try
    {
      v();
      e = true;
      return;
    }
    catch (Exception localException) {}
  }
  
  public Rect t()
  {
    if (ac == null)
    {
      ac = new Rect();
      int[] arrayOfInt = new int[2];
      View localView = findViewById(2131362634);
      localView.getLocationInWindow(arrayOfInt);
      ac = new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + localView.getMeasuredWidth(), arrayOfInt[1] + localView.getMeasuredHeight());
    }
    return ac;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PopVideoPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */