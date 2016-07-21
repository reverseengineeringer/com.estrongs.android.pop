package com.estrongs.android.pop.app.editor;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.ActionBar;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.estrongs.android.pop.utils.cr;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.l;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.MessageFormat;

public class PopNoteEditor
  extends HomeAsBackActivity
  implements SeekBar.OnSeekBarChangeListener, ah, f
{
  private static final String c = PopNoteEditor.class.getSimpleName();
  private int A = 0;
  private File B = null;
  private a C = null;
  private long D = 0L;
  private aa E = null;
  private af F = null;
  private int G = 0;
  private int H = 0;
  private boolean I = false;
  private c J = null;
  private int K = 0;
  private int L = K;
  private com.estrongs.android.j.c M = null;
  private ab N = null;
  private final Handler O = new g(this);
  private final Runnable P = new q(this);
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
  private LinearLayout m;
  private SeekBar n;
  private TextView o;
  private int p = 0;
  private String q = null;
  private StringBuilder r = null;
  private Object t = new Object();
  private Object u = new Object();
  private boolean v = false;
  private boolean w = false;
  private boolean x = false;
  private int y = -1;
  private int z = 0;
  
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
    return new StaticLayout(paramString, paramReaderTextView.getPaint(), paramReaderTextView.getWidth() - paramReaderTextView.getPaddingLeft() - paramReaderTextView.getPaddingRight(), Layout.Alignment.ALIGN_NORMAL, paramReaderTextView.getLineSpacingMult(), paramReaderTextView.getLineSpacingAdd(), paramReaderTextView.getIncludeFontPadding());
  }
  
  private String a(ReaderTextView paramReaderTextView, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    if (!E.a) {
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
    l.e(c, "getFixSubString error not found low " + paramInt1 + ", high " + paramInt2);
    return null;
  }
  
  private void a(boolean paramBoolean)
  {
    int i1 = 1;
    if (G != 0) {}
    for (;;)
    {
      return;
      if ((!I) && (paramBoolean))
      {
        l.setVisibility(8);
        I = true;
      }
      while (i1 != 0)
      {
        ae localae = new ae(this, r.toString(), 0, k.getScrollY());
        Message localMessage = O.obtainMessage(0);
        obj = localae;
        O.sendMessage(localMessage);
        return;
        if ((I) && (!paramBoolean))
        {
          l.setVisibility(0);
          I = false;
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
    if (G == 0) {
      return;
    }
    invalidateOptionsMenu();
    try
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
      if (localInputMethodManager.isActive()) {
        localInputMethodManager.hideSoftInputFromWindow(i.getWindowToken(), 0);
      }
      if (((h.getText().toString().equals(i.getText().toString())) && (K == L)) || (paramBoolean))
      {
        G = 0;
        i.setText("");
        l.setVisibility(0);
        k.setVisibility(0);
        j.setVisibility(8);
        d();
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
  
  private void e(int paramInt)
  {
    r = new StringBuilder();
    new ac(this, paramInt, false).start();
  }
  
  private void f()
  {
    new com.estrongs.android.util.b(this, d, new w(this)).a();
  }
  
  private View.OnTouchListener h()
  {
    return new x(this);
  }
  
  private void i()
  {
    Message localMessage = O.obtainMessage(6);
    O.sendMessageDelayed(localMessage, 500L);
  }
  
  private void j()
  {
    Message localMessage = O.obtainMessage(7);
    O.sendMessage(localMessage);
  }
  
  private void k()
  {
    if (J.i()) {
      showDialog(5);
    }
    while (G == 1) {
      return;
    }
    synchronized (u)
    {
      if ((g != null) && (r != null))
      {
        G = 1;
        l.setVisibility(8);
        k.setVisibility(8);
        j.setVisibility(0);
        Message localMessage = O.obtainMessage(3);
        obj = new ae(this, r.toString(), 0, k.getScrollY());
        O.sendMessage(localMessage);
      }
      invalidateOptionsMenu();
      return;
    }
  }
  
  private void l()
  {
    for (;;)
    {
      try
      {
        i();
      }
      catch (Exception localException)
      {
        localMessage2 = O.obtainMessage(5, 2, 0);
        O.sendMessage(localMessage2);
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
        D = J.h();
        d = J.g();
        g = new b(f, B, d);
        r = new StringBuilder();
        arrayOfChar1 = new char['က'];
        j();
        if (v) {
          break label672;
        }
      }
      finally
      {
        synchronized (t)
        {
          if (!w) {
            break label456;
          }
          a = true;
          b = false;
          w = false;
          if (!a) {
            break label612;
          }
          synchronized (u)
          {
            i2 = g.read(arrayOfChar1);
            if (i2 <= 0) {
              continue;
            }
            a = false;
            z += 1;
            if (i2 != arrayOfChar1.length) {
              continue;
            }
            F.a(z, g.b());
            K = ak.a(arrayOfChar1);
            L = K;
            i1 = i2;
            if (r.length() <= 8192) {
              break label505;
            }
            r.delete(0, 4096);
            localMessage3 = O.obtainMessage(2);
            obj = new ae(this, r.toString(), 0, -1);
            O.sendMessage(localMessage3);
            q = r.append(arrayOfChar1, 0, i2).toString();
            synchronized (t)
            {
              w = false;
              x = false;
              t.wait();
            }
            localObject2 = finally;
          }
        }
      }
      try
      {
        B = J.c();
        if (B == null)
        {
          Message localMessage1 = O.obtainMessage(5, 2, 0);
          O.sendMessage(localMessage1);
          j();
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
        if ((z <= 3) || (!x)) {
          continue;
        }
        a = false;
        b = true;
        x = false;
        continue;
        arrayOfChar2 = finally;
        throw arrayOfChar2;
        label505:
        do
        {
          z += 1;
          if (r.length() >= 8192) {
            break;
          }
          r.append(arrayOfChar2, 0, i1);
          i1 = g.read(arrayOfChar2);
        } while (i1 >= 0);
        i2 = i1;
        i1 = 0;
        if (i1 != 0) {
          r.append(arrayOfChar2, 0, i2);
        }
        Message localMessage3 = O.obtainMessage(2);
        obj = new ae(this, r.toString(), 0, -1);
        O.sendMessage(localMessage3);
        continue;
        localObject3 = finally;
        throw ((Throwable)localObject3);
        label612:
        if (!b) {
          continue;
        }
        synchronized (u)
        {
          if (z > 3)
          {
            b = false;
            g.close();
            new z(this, null).start();
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
  
  private int m()
  {
    for (;;)
    {
      long l1;
      int i1;
      String str1;
      double d1;
      synchronized (u)
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
          str1 = r.toString();
          if ((str1 == null) || (str1.length() <= 0))
          {
            l.e(c, "getCurrentProgress empty text");
            return -1;
          }
        }
      }
      String str2 = d;
      continue;
      Object localObject2 = str2;
    }
  }
  
  private void o()
  {
    l.setVisibility(4);
  }
  
  private void p()
  {
    l.setVisibility(0);
  }
  
  public void a(int paramInt)
  {
    y = (paramInt - k.getHeight());
    if (!TextUtils.isEmpty(q))
    {
      Message localMessage = O.obtainMessage(2);
      obj = new ae(this, q, 0, -1);
      O.sendMessage(localMessage);
      q = null;
    }
  }
  
  public void a(ObservableScrollView arg1, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    synchronized (t)
    {
      if ((y == paramInt2) && (paramInt4 != paramInt2)) {
        w = true;
      }
      if ((paramInt2 == 0) && (paramInt2 != paramInt4)) {
        x = true;
      }
      t.notifyAll();
      if (E != null) {
        E.b();
      }
      return;
    }
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected void d()
  {
    O.removeCallbacks(P);
    O.postDelayed(P, 3000L);
  }
  
  public void finish()
  {
    v = true;
    if (E != null) {
      E.a();
    }
    synchronized (t)
    {
      t.notify();
      super.finish();
      return;
    }
  }
  
  protected int g()
  {
    return 2130838584;
  }
  
  public void g_()
  {
    if (E == null)
    {
      E = new aa(this);
      E.start();
      E.setPriority(1);
      return;
    }
    E.a();
  }
  
  public void onBackPressed()
  {
    if (G == 1)
    {
      if (N == null) {
        b(false);
      }
      return;
    }
    super.onBackPressed();
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903356);
    paramBundle = getIntent().getData();
    M = com.estrongs.android.j.c.a(this);
    if (!getIntent().getBooleanExtra("islocalopen", false)) {}
    try
    {
      M.d("act3");
      M.a("act3", "note_editor");
      if ((paramBundle == null) || (paramBundle.toString() == null))
      {
        com.estrongs.android.ui.view.ak.a(this, 2131231719, 1);
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
      f = this;
      J = new c(this, paramBundle);
      k = ((ObservableScrollView)findViewById(2131625296));
      k.setScrollViewListener(this);
      h = ((ReaderTextView)findViewById(2131625297));
      h.setOnPreDrawListener(this);
      i = ((EditText)findViewById(2131625299));
      j = ((ObservableScrollView)findViewById(2131625298));
      j.setOnTouchListener(new r(this));
      l = ((LinearLayout)findViewById(2131625300));
      m = ((LinearLayout)findViewById(2131625303));
      n = ((SeekBar)findViewById(2131624600));
      n.setOnSeekBarChangeListener(this);
      n.setOnTouchListener(new s(this));
      o = ((TextView)findViewById(2131625301));
      F = new af();
      setTitle(J.a());
      paramBundle = new ad(this, null);
      if (Build.VERSION.SDK_INT < 11) {
        break label368;
      }
    }
    paramBundle.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
    for (;;)
    {
      k.setOnTouchListener(new t(this, h()));
      h.setOnClickListener(new u(this));
      d();
      return;
      label368:
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
      localObject2 = new cv(this).a(2131231716);
      StringBuilder localStringBuilder = new StringBuilder().append(getText(2131231860)).append("\n");
      if (e == null) {}
      for (localObject1 = "";; localObject1 = e) {
        return ((cv)localObject2).b((String)localObject1).a(2131231270, new y(this)).b();
      }
    case 3: 
      bool = com.estrongs.android.pop.ad.a(f).aE();
      if (bool)
      {
        localObject2 = J.f();
        localObject1 = localObject2;
        if (((String)localObject2).startsWith("file:///")) {
          localObject1 = Uri.decode((String)localObject2);
        }
        if (cr.a((String)localObject1) != cr.c) {
          bool = false;
        }
      }
      break;
    }
    for (;;)
    {
      if (bool)
      {
        paramInt = 2131230878;
        if (bool) {
          break label291;
        }
      }
      label291:
      for (localObject1 = getText(2131231855) + " " + J.a();; localObject1 = MessageFormat.format(getString(2131232254), new Object[] { J.a() }))
      {
        return new cv(this).a(paramInt).b((CharSequence)localObject1).b(2131231273, new k(this, bool)).c(2131231269, new j(this)).b();
        paramInt = 2131230845;
        break;
      }
      localObject2 = getText(2131231859) + " " + J.a();
      localObject1 = localObject2;
      if (e != null) {
        localObject1 = (String)localObject2 + "\n" + e;
      }
      return new cv(this).a(2131231716).b((CharSequence)localObject1).a(2131231270, new m(this)).b();
      localObject1 = getText(2131231856) + " " + J.a() + "?";
      return new cv(this).a(2131231715).b((CharSequence)localObject1).b(2131231273, new o(this)).c(2131231269, new n(this)).b();
      return new cv(this).a(2131231715).b(2131231858).a(2131231270, new p(this)).b();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755013, paramMenu);
    paramMenu.findItem(2131625667).setTitle(2131230848);
    paramMenu.findItem(2131625668).setTitle(2131230845);
    paramMenu.findItem(2131625669).setTitle(2131231514);
    paramMenu.findItem(2131625665).setTitle(2131232469);
    paramMenu.findItem(2131625665).setIcon(at.a(this).g(2130838548));
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (J != null) {
      J.j();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    do
    {
      return super.onOptionsItemSelected(paramMenuItem);
      k();
      return true;
      paramMenuItem = O.obtainMessage(5, 3, 0);
      O.sendMessage(paramMenuItem);
      return true;
      f();
      return true;
      new ak(this, L, new v(this)).a();
      return true;
    } while (G != 1);
    b(false);
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (G == 1)
    {
      paramMenu.findItem(2131625665).setVisible(true);
      paramMenu.findItem(2131625666).setVisible(false);
    }
    for (;;)
    {
      return super.onPrepareOptionsMenu(paramMenu);
      paramMenu.findItem(2131625665).setVisible(false);
      paramMenu.findItem(2131625666).setVisible(true);
    }
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    o.setText("" + paramInt + "%");
    A = paramInt;
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  protected void onStart()
  {
    super.onStart();
    getSupportActionBar().setHomeAsUpIndicator(at.a(this).b(g(), 2131558745));
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    e(A);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.PopNoteEditor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */