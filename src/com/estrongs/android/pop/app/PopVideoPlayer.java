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
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.e.hz;
import com.estrongs.android.ui.e.im;
import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ESVideoView;
import com.estrongs.android.util.ao;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.k;
import com.estrongs.android.util.l;
import com.estrongs.fs.d;
import java.io.InputStream;
import java.net.URL;

public class PopVideoPlayer
  extends ESActivity
  implements com.estrongs.android.ui.e.jz
{
  private static final String k = PopVideoPlayer.class.getSimpleName();
  private int A = 0;
  private ag B = ag.g();
  private x C = null;
  private TextView D = null;
  private boolean E = false;
  private boolean F = false;
  private boolean G = true;
  private long H = 0L;
  private long I = 0L;
  private Handler J = new jg(this);
  private final BroadcastReceiver K = new js(this);
  private final BroadcastReceiver L = new kh(this);
  private final BroadcastReceiver M = new kj(this);
  private com.estrongs.android.ui.e.ju N;
  private hz O;
  private com.estrongs.android.view.a.a P;
  private com.estrongs.android.view.a.a Q;
  private com.estrongs.android.view.a.a R;
  private boolean S = false;
  private final int T = 0;
  private final int U = 1;
  private Object V = new Object();
  private com.estrongs.android.ui.e.ju W;
  private hz X;
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
  m h = null;
  Boolean i = Boolean.valueOf(false);
  boolean j = true;
  private d l = d.a(this);
  private ESVideoView m;
  private boolean n = false;
  private FrameLayout o;
  private MediaController p;
  private MediaController q;
  private kt r;
  private int t = 0;
  private Uri u = null;
  private String v = null;
  private c w = null;
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
        return ap.bH(Uri.decode(paramUri.toString()));
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
        B.a(u.getPath(), ap.a(v, com.estrongs.android.g.a.a(), true, true), ap.d(v), bg.U(ap.d(v)), null);
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
          str = ap.bH(str.substring(i1));
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
      l.e(k, "changeToCastMode error, chromecast is not connected");
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
      q = new kk(this, this);
      if (r == null)
      {
        r = new kt(this);
        B.a(r);
        B.a(r);
        B.a(r);
      }
      q.setMediaPlayer(r);
      q.setAnchorView(o);
    }
    ((ImageView)z.findViewById(2131624054)).setImageResource(2130838531);
    if ((B.r() > 0) && (B.r() != 2)) {
      b.setVisibility(0);
    }
    J.sendMessageDelayed(J.obtainMessage(5), 1000L);
  }
  
  private void i()
  {
    if (ag.b())
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
    o();
    ((ImageView)z.findViewById(2131624054)).setImageResource(2130838530);
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
    C = new x(this);
    C.a(new jo(this));
    C.setOnCancelListener(new jp(this));
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
    new Thread(new jw(this)).start();
  }
  
  private void o()
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
            new ao(m).a("resume");
            if (ac.a() >= 14) {
              m.seekTo(t);
            }
            if (com.estrongs.android.pop.view.a.a.startsWith("Spreadtrum"))
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
        r();
        return;
      }
    } while (!e);
    r();
    t = 0;
    e = false;
  }
  
  private void p()
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
        h = new m(this, null);
      }
      synchronized (V)
      {
        if (!i.booleanValue()) {
          i = Boolean.valueOf(h.a());
        }
      }
    }
  }
  
  private void q()
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
  
  private void r()
  {
    int i1 = 0;
    Object localObject = getIntent().getData();
    try
    {
      if (((Uri)localObject).toString().startsWith("smb://"))
      {
        m.setVideoURI((Uri)localObject);
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
  
  private boolean s()
  {
    return (N != null) && (N.b());
  }
  
  private boolean t()
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
        k.a();
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
        k.b();
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
      N = new jq(this, this, true, true);
      O = new hz(this, true);
      N.a(O);
      N.a(O.c());
      N.a(new jr(this));
      int i1 = J().c(2131558714);
      Q = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838578), i1), getString(2131231151)).a(new jt(this));
      P = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838530), i1), getString(2131231154)).a(new ju(this));
      R = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838530), i1), getString(2131231148)).a(new jv(this));
      com.estrongs.android.ui.e.km localkm = O.b();
      localkm.j();
      localkm.a(R);
      if ((!a()) && (!n)) {
        localkm.a(Q);
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
      W = new jx(this, this, true, true);
      X = new hz(this, true);
      W.a(X);
      W.a(X.c());
      W.a(new jy(this));
      int i1 = J().c(2131558714);
      Y = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838578), i1), getString(2131232546)).a(new jz(this));
      aa = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838539), i1), getString(2131230845)).a(new ka(this));
      ab = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838604), i1), getString(2131230892)).a(new kf(this));
      Z = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838578), i1), getString(2131232546)).a(new kg(this));
      P = new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838530), i1), getString(2131231154)).a(new ki(this));
    }
    com.estrongs.android.ui.e.km localkm = X.b();
    if ((localkm instanceof im)) {
      ((im)localkm).b(true);
    }
    localkm.j();
    String str = a(u);
    if ((str != null) && (!"http".equals(u.getScheme()))) {
      localkm.a(ab);
    }
    if ((!com.estrongs.android.pop.view.a.a.equals("Sharp")) && (str != null)) {
      localkm.a(aa);
    }
    if (a())
    {
      if (ag.a()) {
        localkm.a(P);
      }
      localkm.a(Y);
    }
    while (!W.b())
    {
      W.c();
      ((ImageView)d.findViewById(2131624054)).setImageResource(2130838565);
      return;
      if (ag.a()) {
        localkm.a(Z);
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
    getWindow().setFlags(2000, 1024);
    setContentView(2130903380);
    p = new kl(this, this);
    m = ((ESVideoView)findViewById(2131625376));
    o = ((FrameLayout)findViewById(2131625377));
    o.setOnClickListener(new km(this));
    D = ((TextView)findViewById(2131625378));
    D.setText(getString(2131232491) + getString(2131231155));
    m.setMediaController(p);
    try
    {
      p.setEnabled(false);
      p.requestFocus();
      m.setOnCompletionListener(new kn(this));
      m.setOnErrorListener(new ko(this));
      m.setOnPreparedListener(new jh(this));
      m.setSeekListener(new ji(this));
      u = getIntent().getData();
      if ((ac.a() < 8) && (e())) {
        finish();
      }
      for (;;)
      {
        return;
        t = 0;
        g = false;
        if (com.estrongs.android.pop.view.a.a.startsWith("Spreadtrum")) {}
        try
        {
          registerReceiver(K, new IntentFilter("android.intent.action.SCREEN_OFF"));
          registerReceiver(L, new IntentFilter("android.intent.action.USER_PRESENT"));
          registerReceiver(M, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"));
          b = findViewById(2131624351);
          w = c.a(this);
          if (!getIntent().getBooleanExtra("islocalopen", false)) {}
          try
          {
            w.d("act3");
            w.a("act3", "video_player");
            x = findViewById(2131625379);
            y = ((TextView)x.findViewById(2131625380));
            paramBundle = getIntent().getData();
            v = a(paramBundle);
            if (v != null) {
              y.setText(ap.d(v));
            }
            View localView = x;
            if (p.isShown())
            {
              i1 = 0;
              localView.setVisibility(i1);
              d = x.findViewById(2131625031);
              d.setOnClickListener(new jj(this));
              z = findViewById(2131624418);
              z.setOnClickListener(new jk(this));
              findViewById(2131625030).setOnClickListener(new jl(this));
              m.setVideoURI(paramBundle);
              if (n) {
                continue;
              }
              if (!getIntent().getBooleanExtra("Chromecast", false)) {
                break label648;
              }
              h();
              if (getIntent().getStringExtra("ChromecastUrl") != null) {
                a(true);
              }
              if (!a()) {
                continue;
              }
              if (!p.isShown()) {
                f();
              }
              new jm(this).start();
              return;
            }
          }
          catch (Exception paramBundle)
          {
            for (;;)
            {
              paramBundle.printStackTrace();
              continue;
              int i1 = 4;
              continue;
              label648:
              p();
              r();
            }
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
    q();
    if (com.estrongs.android.pop.view.a.a.startsWith("Spreadtrum")) {}
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
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    t = paramBundle.getInt("playback_position", 0);
  }
  
  public void onResume()
  {
    super.onResume();
    o();
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
  
  public Rect y()
  {
    if (ac == null)
    {
      ac = new Rect();
      int[] arrayOfInt = new int[2];
      View localView = findViewById(2131625381);
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