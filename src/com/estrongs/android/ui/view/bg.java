package com.estrongs.android.ui.view;

import android.os.AsyncTask;
import android.view.View;
import android.widget.TextView;
import com.estrongs.a.b.b;
import com.estrongs.fs.util.j;
import com.estrongs.fs.util.k;
import com.estrongs.fs.util.l;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

class bg
  extends AsyncTask<Void, Void, Void>
{
  protected k a = null;
  protected k b = null;
  protected b c = new bh(this);
  private Exception e = null;
  
  bg(bd parambd) {}
  
  protected k a(String paramString)
  {
    try
    {
      paramString = new l(paramString);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  protected Void a(Void... paramVarArgs)
  {
    if (d.h == null) {
      a = a("MD5");
    }
    if (d.i == null) {
      b = a("SHA-1");
    }
    paramVarArgs = new bi(this);
    try
    {
      j.a(d.c, c, paramVarArgs);
      if (a != null) {
        d.h = a.toString();
      }
      if (b != null) {
        d.i = b.toString();
      }
      return null;
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        e = paramVarArgs;
        paramVarArgs.printStackTrace();
      }
    }
  }
  
  protected void a(Void paramVoid)
  {
    if (e != null)
    {
      d.a.setText(bd.c(d, 2131231101));
      d.b.setText(bd.d(d, 2131231101));
    }
    do
    {
      return;
      if (d.h != null)
      {
        d.a.setText(d.h);
        d.f.setEnabled(true);
      }
    } while (d.i == null);
    d.b.setText(d.i);
    d.g.setEnabled(true);
  }
  
  protected void onPreExecute()
  {
    e = null;
    if (d.h == null) {
      d.a.setText(2131231746);
    }
    if (d.i == null) {
      d.b.setText(2131231746);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */