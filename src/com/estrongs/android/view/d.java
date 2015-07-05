package com.estrongs.android.view;

import android.os.AsyncTask;
import com.handmark.pulltorefresh.library.PullToRefreshGridView;

class d
  extends AsyncTask<Void, Void, String[]>
{
  private d(a parama) {}
  
  protected void a(String[] paramArrayOfString)
  {
    a.b(a).n();
    a.g("app://update");
    super.onPostExecute(paramArrayOfString);
  }
  
  protected String[] a(Void... paramVarArgs)
  {
    return new String[0];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */