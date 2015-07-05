package com.estrongs.android.pop.app.editor;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.ESScrollMenuView;
import com.estrongs.android.pop.utils.ci;
import com.estrongs.android.ui.dialog.ct;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.MessageFormat;

public class PopNoteEditor
  extends ESActivity
  implements SeekBar.OnSeekBarChangeListener, ap, f
{
  private static final String c = PopNoteEditor.class.getSimpleName();
  private Object A = new Object();
  private Object B = new Object();
  private boolean C = false;
  private boolean D = false;
  private boolean E = false;
  private int F = -1;
  private int G = 0;
  private int H = 0;
  private File I = null;
  private a J = null;
  private long K = 0L;
  private ai L = null;
  private an M = null;
  private int N = 0;
  private int O = 0;
  private boolean P = false;
  private c Q = null;
  private int R = 0;
  private int S = R;
  private com.estrongs.android.util.a T = null;
  private aj U = null;
  private final Handler V = new g(this);
  private final Runnable W = new y(this);
  boolean a = true;
  boolean b = false;
  private String d = "UTF-8";
  private String e = null;
  private Context f = null;
  private b g = null;
  private ReaderTextView h;
  private EditText i;
  private ObservableScrollView j;
  private ObservableScrollView k;
  private LinearLayout l;
  private ImageView m;
  private LinearLayout n;
  private LinearLayout o;
  private LinearLayout p;
  private LinearLayout q;
  private TextView r;
  private ESScrollMenuView t;
  private LinearLayout u;
  private SeekBar v;
  private TextView w;
  private int x = 0;
  private String y = null;
  private StringBuilder z = null;
  
  private int a(ReaderTextView paramReaderTextView, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    try
    {
      if (paramString1.getBytes(paramString2).length == paramInt2) {
        return 0;
      }
      i1 = paramString1.length();
      i1 -= 1;
      localObject = paramString1;
    }
    catch (UnsupportedEncodingException paramString2)
    {
      for (;;)
      {
        Object localObject;
        try
        {
          int i1;
          String str = paramString1.substring(i1);
          localObject = str;
          if (str.getBytes(paramString2).length >= paramInt2)
          {
            localObject = str;
            paramString1 = paramString1.substring(0, i1);
            paramInt2 = 1;
            if (paramInt2 == 0) {
              break;
            }
            paramInt1 = a(paramReaderTextView, paramString1).getHeight() - paramInt1;
            if (paramInt1 <= 0) {
              continue;
            }
            return paramInt1;
          }
          i1 -= 30;
          localObject = str;
        }
        catch (UnsupportedEncodingException paramString2)
        {
          paramString1 = (String)localObject;
          continue;
        }
        paramString2 = paramString2;
        paramString2.printStackTrace();
        continue;
        paramInt1 = 0;
        continue;
        paramString1 = (String)localObject;
        paramInt2 = 0;
      }
    }
    if (i1 > 0) {}
    return 0;
  }
  
  @SuppressLint({"NewApi"})
  private Layout a(ReaderTextView paramReaderTextView, String paramString)
  {
    return new StaticLayout(paramString, paramReaderTextView.getPaint(), paramReaderTextView.getWidth() - paramReaderTextView.getPaddingLeft() - paramReaderTextView.getPaddingRight(), Layout.Alignment.ALIGN_NORMAL, paramReaderTextView.c(), paramReaderTextView.b(), paramReaderTextView.getIncludeFontPadding());
  }
  
  private String a(ReaderTextView paramReaderTextView, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    if (!L.a) {
      throw new IllegalStateException();
    }
    if (paramInt1 <= paramInt2)
    {
      int i1 = (paramInt1 + paramInt2) / 2;
      int i2 = a(paramReaderTextView, paramString.substring(i1)).getLineCount();
      if (i2 == paramInt3) {
        return paramString.substring(i1);
      }
      if (i2 < paramInt3) {
        return a(paramReaderTextView, paramInt1, i1 - 1, paramString, paramInt3);
      }
      return a(paramReaderTextView, i1 + 1, paramInt2, paramString, paramInt3);
    }
    Log.e(c, "getFixSubString error not found low " + paramInt1 + ", high " + paramInt2);
    return null;
  }
  
  private void a(boolean paramBoolean)
  {
    int i1 = 1;
    if (N != 0) {}
    for (;;)
    {
      return;
      if ((!P) && (paramBoolean))
      {
        q.setVisibility(8);
        n.setVisibility(8);
        P = true;
      }
      while (i1 != 0)
      {
        am localam = new am(this, z.toString(), 0, k.getScrollY());
        Message localMessage = V.obtainMessage(0);
        obj = localam;
        V.sendMessage(localMessage);
        return;
        if ((P) && (!paramBoolean))
        {
          q.setVisibility(0);
          n.setVisibility(0);
          P = false;
        }
        else
        {
          i1 = 0;
        }
      }
    }
  }
  
  private int b(ReaderTextView paramReaderTextView, String paramString)
  {
    paramReaderTextView = a(paramReaderTextView, paramString.substring(0, 4096));
    return paramReaderTextView.getHeight() - paramReaderTextView.getBottomPadding() - paramReaderTextView.getLineBaseline(0);
  }
  
  private void b(int paramInt)
  {
    i.requestFocus();
    if (paramInt > 0) {
      i.setSelection(paramInt);
    }
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(i, 0);
  }
  
  private void b(boolean paramBoolean)
  {
    if (N == 0) {
      return;
    }
    try
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
      if (localInputMethodManager.isActive()) {
        localInputMethodManager.hideSoftInputFromWindow(i.getWindowToken(), 0);
      }
      if (((h.getText().toString().equals(i.getText().toString())) && (R == S)) || (paramBoolean))
      {
        N = 0;
        i.setText("");
        n.setVisibility(0);
        k.setVisibility(0);
        j.setVisibility(8);
        o.setVisibility(8);
        l.setVisibility(0);
        r.setGravity(19);
        p.setVisibility(8);
        b();
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
      showDialog(4);
    }
  }
  
  private View.OnTouchListener d()
  {
    return new ag(this);
  }
  
  private void e()
  {
    t = ((ESScrollMenuView)findViewById(2131362572));
    t.a();
    if (!Q.j())
    {
      t.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838164), getString(2131427373)), new j(this));
      t.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838172), getString(2131427347)), new k(this));
    }
    t.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838156), getString(2131427836)), new l(this));
    View localView = findViewById(2131362418);
    localView.setFocusable(true);
    localView.setOnClickListener(new n(this));
  }
  
  private void e(int paramInt)
  {
    z = new StringBuilder();
    new ak(this, paramInt, false).start();
  }
  
  private boolean f()
  {
    if (O != 0)
    {
      com.estrongs.android.pop.utils.a.a(this, 2131427783);
      return false;
    }
    return true;
  }
  
  private void g()
  {
    Message localMessage = V.obtainMessage(6);
    V.sendMessageDelayed(localMessage, 500L);
  }
  
  private void h()
  {
    Message localMessage = V.obtainMessage(7);
    V.sendMessage(localMessage);
  }
  
  private void i()
  {
    if (Q.i()) {
      showDialog(5);
    }
    while (N == 1) {
      return;
    }
    synchronized (B)
    {
      if ((g != null) && (z != null))
      {
        N = 1;
        n.setVisibility(8);
        k.setVisibility(8);
        l.setVisibility(8);
        j.setVisibility(0);
        p.setVisibility(0);
        o.setVisibility(0);
        r.setGravity(17);
        Message localMessage = V.obtainMessage(3);
        obj = new am(this, z.toString(), 0, k.getScrollY());
        V.sendMessage(localMessage);
      }
      return;
    }
  }
  
  private void j()
  {
    for (;;)
    {
      try
      {
        g();
      }
      catch (Exception localException)
      {
        localMessage2 = V.obtainMessage(5, 2, 0);
        V.sendMessage(localMessage2);
        try
        {
          if (g == null) {
            continue;
          }
          g.close();
          return;
        }
        catch (IOException localIOException2)
        {
          localIOException2.printStackTrace();
          return;
        }
        K = Q.h();
        d = Q.g();
        g = new b(f, I, d);
        z = new StringBuilder();
        arrayOfChar1 = new char['က'];
        h();
        if (C) {
          break label672;
        }
      }
      finally
      {
        synchronized (A)
        {
          if (!D) {
            break label456;
          }
          a = true;
          b = false;
          D = false;
          if (!a) {
            break label612;
          }
          synchronized (B)
          {
            i2 = g.read(arrayOfChar1);
            if (i2 <= 0) {
              continue;
            }
            a = false;
            G += 1;
            if (i2 != arrayOfChar1.length) {
              continue;
            }
            M.a(G, g.b());
            R = as.a(arrayOfChar1);
            S = R;
            i1 = i2;
            if (z.length() <= 8192) {
              break label505;
            }
            z.delete(0, 4096);
            localMessage3 = V.obtainMessage(2);
            obj = new am(this, z.toString(), 0, -1);
            V.sendMessage(localMessage3);
            y = z.append(arrayOfChar1, 0, i2).toString();
            synchronized (A)
            {
              D = false;
              E = false;
              A.wait();
            }
            localObject2 = finally;
          }
        }
      }
      try
      {
        I = Q.c();
        if (I == null)
        {
          Message localMessage1 = V.obtainMessage(5, 2, 0);
          V.sendMessage(localMessage1);
          h();
        }
      }
      catch (IOException localIOException1)
      {
        try
        {
          if (g != null) {
            g.close();
          }
          return;
        }
        catch (IOException localIOException3)
        {
          localIOException3.printStackTrace();
          return;
        }
        localIOException1 = localIOException1;
        e = localIOException1.getMessage();
        continue;
      }
      try
      {
        Message localMessage2;
        char[] arrayOfChar1;
        if (g != null) {
          g.close();
        }
        throw ((Throwable)localObject2);
        label456:
        if ((G <= 3) || (!E)) {
          continue;
        }
        a = false;
        b = true;
        E = false;
        continue;
        arrayOfChar2 = finally;
        throw arrayOfChar2;
        label505:
        do
        {
          G += 1;
          if (z.length() >= 8192) {
            break;
          }
          z.append(arrayOfChar2, 0, i1);
          i1 = g.read(arrayOfChar2);
        } while (i1 >= 0);
        i2 = i1;
        i1 = 0;
        if (i1 != 0) {
          z.append(arrayOfChar2, 0, i2);
        }
        Message localMessage3 = V.obtainMessage(2);
        obj = new am(this, z.toString(), 0, -1);
        V.sendMessage(localMessage3);
        continue;
        localObject3 = finally;
        throw ((Throwable)localObject3);
        label612:
        if (!b) {
          continue;
        }
        synchronized (B)
        {
          if (G > 3)
          {
            b = false;
            g.close();
            new ah(this, null).start();
          }
        }
        try
        {
          label672:
          if (g == null) {
            continue;
          }
          g.close();
          return;
        }
        catch (IOException localIOException4)
        {
          localIOException4.printStackTrace();
          return;
        }
      }
      catch (IOException localIOException5)
      {
        for (;;)
        {
          localIOException5.printStackTrace();
          continue;
          int i2 = i1;
          int i1 = 1;
        }
      }
    }
  }
  
  private int k()
  {
    for (;;)
    {
      long l1;
      int i1;
      String str1;
      double d1;
      synchronized (B)
      {
        if (g == null) {
          return -1;
        }
        try
        {
          l1 = g.b();
          if ((h == null) || (k == null)) {
            return -1;
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException1)
        {
          localUnsupportedEncodingException1.printStackTrace();
          return -1;
        }
        catch (IOException localIOException1)
        {
          localIOException1.printStackTrace();
          return -1;
        }
        i1 = h.getBottom() - k.getHeight() - k.getScrollY();
        if (i1 > 0)
        {
          i1 /= h.getLineHeight();
          str1 = z.toString();
          if ((str1 == null) || (str1.length() <= 0))
          {
            Log.e(c, "getCurrentProgress empty text");
            return -1;
          }
        }
      }
      String str2 = d;
      continue;
      Object localObject2 = str2;
    }
  }
  
  private void l()
  {
    if (!f()) {
      return;
    }
    if (t.getVisibility() == 0)
    {
      m();
      return;
    }
    t.setVisibility(0);
    m.setImageResource(2130838204);
    p();
  }
  
  private void m()
  {
    t.setVisibility(4);
    m.setImageResource(2130838203);
    b();
  }
  
  private boolean n()
  {
    return (t != null) && (t.getVisibility() == 0);
  }
  
  private void o()
  {
    if (n()) {
      m();
    }
    n.setVisibility(4);
  }
  
  private void p()
  {
    n.setVisibility(0);
  }
  
  public void a()
  {
    if (L == null)
    {
      L = new ai(this);
      L.start();
      L.setPriority(1);
      return;
    }
    L.a();
  }
  
  public void a(int paramInt)
  {
    F = (paramInt - k.getHeight());
    if (!TextUtils.isEmpty(y))
    {
      Message localMessage = V.obtainMessage(2);
      obj = new am(this, y, 0, -1);
      V.sendMessage(localMessage);
      y = null;
    }
  }
  
  public void a(ObservableScrollView arg1, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    synchronized (A)
    {
      if ((F == paramInt2) && (paramInt4 != paramInt2)) {
        D = true;
      }
      if ((paramInt2 == 0) && (paramInt2 != paramInt4)) {
        E = true;
      }
      A.notifyAll();
      if (L != null) {
        L.b();
      }
      return;
    }
  }
  
  protected void b()
  {
    V.removeCallbacks(W);
    if (!n()) {
      V.postDelayed(W, 3000L);
    }
  }
  
  public void finish()
  {
    C = true;
    if (L != null) {
      L.a();
    }
    synchronized (A)
    {
      A.notify();
      super.finish();
      return;
    }
  }
  
  public void onBackPressed()
  {
    if (t == null) {
      super.onBackPressed();
    }
    do
    {
      return;
      if (N != 1) {
        break;
      }
    } while (U != null);
    b(false);
    return;
    if (t.getVisibility() == 0)
    {
      m();
      return;
    }
    super.onBackPressed();
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903205);
    paramBundle = getIntent().getData();
    T = com.estrongs.android.util.a.a(this, false, "PopNoteEditor");
    if ((paramBundle == null) || (paramBundle.toString() == null))
    {
      com.estrongs.android.ui.view.ag.a(this, 2131427399, 1);
      return;
    }
    f = this;
    Q = new c(this, paramBundle);
    k = ((ObservableScrollView)findViewById(2131362566));
    k.a(this);
    h = ((ReaderTextView)findViewById(2131362567));
    h.a(this);
    i = ((EditText)findViewById(2131362569));
    j = ((ObservableScrollView)findViewById(2131362568));
    j.setOnTouchListener(new w(this));
    n = ((LinearLayout)findViewById(2131362570));
    q = ((LinearLayout)findViewById(2131362559));
    u = ((LinearLayout)findViewById(2131362573));
    v = ((SeekBar)findViewById(2131362055));
    v.setOnSeekBarChangeListener(this);
    v.setOnTouchListener(new z(this));
    w = ((TextView)findViewById(2131362571));
    l = ((LinearLayout)findViewById(2131362562));
    m = ((ImageView)findViewById(2131362563));
    m.setFocusable(true);
    l.setOnClickListener(new aa(this));
    o = ((LinearLayout)findViewById(2131362560));
    o.setFocusable(true);
    o.setOnClickListener(new ab(this));
    p = ((LinearLayout)findViewById(2131362564));
    p.setFocusable(true);
    p.setOnClickListener(new ac(this));
    M = new an();
    r = ((TextView)findViewById(2131362296));
    r.setText(Q.a());
    paramBundle = new al(this, null);
    if (Build.VERSION.SDK_INT >= 11) {
      paramBundle.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
    }
    for (;;)
    {
      k.setOnTouchListener(new ae(this, d()));
      h.setOnClickListener(new af(this));
      e();
      b();
      return;
      paramBundle.execute(new Object[0]);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject2;
    Object localObject1;
    boolean bool;
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      localObject2 = new ct(this).a(2131427396);
      StringBuilder localStringBuilder = new StringBuilder().append(getText(2131427595)).append("\n");
      if (e == null) {}
      for (localObject1 = "";; localObject1 = e) {
        return ((ct)localObject2).b((String)localObject1).a(2131427339, new p(this)).b();
      }
    case 3: 
      bool = ad.a(f).aD();
      if (bool)
      {
        localObject2 = Q.f();
        localObject1 = localObject2;
        if (((String)localObject2).startsWith("file:///")) {
          localObject1 = Uri.decode((String)localObject2);
        }
        if (ci.a((String)localObject1) != ci.c) {
          bool = false;
        }
      }
      break;
    }
    for (;;)
    {
      if (bool)
      {
        paramInt = 2131428403;
        if (bool) {
          break label291;
        }
      }
      label291:
      for (localObject1 = getText(2131427596) + " " + Q.a();; localObject1 = MessageFormat.format(getString(2131428419), new Object[] { Q.a() }))
      {
        return new ct(this).a(paramInt).b((CharSequence)localObject1).b(2131427341, new r(this, bool)).c(2131427342, new q(this)).b();
        paramInt = 2131427347;
        break;
      }
      localObject2 = getText(2131427594) + " " + Q.a();
      localObject1 = localObject2;
      if (e != null) {
        localObject1 = (String)localObject2 + "\n" + e;
      }
      return new ct(this).a(2131427396).b((CharSequence)localObject1).a(2131427339, new t(this)).b();
      localObject1 = getText(2131427592) + " " + Q.a() + "?";
      return new ct(this).a(2131427400).b((CharSequence)localObject1).b(2131427341, new v(this)).c(2131427342, new u(this)).b();
      return new ct(this).a(2131427400).b(2131427931).a(2131427339, new x(this)).b();
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (Q != null) {
      Q.k();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
    {
      l();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    if (T != null) {
      T.c();
    }
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    w.setText("" + paramInt + "%");
    H = paramInt;
  }
  
  protected void onResume()
  {
    super.onResume();
    if (T != null) {
      T.b();
    }
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    e(H);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.PopNoteEditor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */