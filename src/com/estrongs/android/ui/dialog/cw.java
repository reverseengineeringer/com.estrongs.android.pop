package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.TextView;
import com.estrongs.fs.util.g;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.List;

class cw
  extends AsyncTask<List<File>, String, Void>
{
  g a;
  
  cw(cv paramcv, Context paramContext, TextView paramTextView) {}
  
  protected Void a(List<File>... paramVarArgs)
  {
    a = new g(new cx(this));
    a.a(paramVarArgs[0]);
    publishProgress(new String[] { "" + a.c(), j.c(a.b()), "over" });
    return null;
  }
  
  protected void a(Void paramVoid)
  {
    publishProgress(new String[] { "" + a.c(), j.c(a.b()) });
  }
  
  protected void a(String... paramVarArgs)
  {
    String str = b.getString(2131428122, new Object[] { paramVarArgs[1] });
    c.setText(b.getString(2131428121, new Object[] { paramVarArgs[0], str }));
  }
  
  protected void onCancelled()
  {
    if (a != null) {
      a.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */