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

class ax
  extends AsyncTask<Void, Void, Void>
{
  protected k a = null;
  protected k b = null;
  protected b c = new ay(this);
  private Exception e = null;
  
  ax(au paramau) {}
  
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
    paramVarArgs = new az(this);
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
      d.a.setText(au.c(d, 2131428303));
      d.b.setText(au.d(d, 2131428303));
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
      d.a.setText(2131427959);
    }
    if (d.i == null) {
      d.b.setText(2131427959);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */