package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import java.util.LinkedList;
import java.util.List;

class v
  extends AsyncTask<Void, Void, List<w>>
{
  private v(s params) {}
  
  protected List<w> a(Void... paramVarArgs)
  {
    paramVarArgs = new Intent("android.intent.action.MAIN");
    paramVarArgs.addCategory("android.intent.category.LAUNCHER");
    paramVarArgs = s.a(a).queryIntentActivities(paramVarArgs, 1);
    LinkedList localLinkedList = new LinkedList();
    int i = 0;
    if (i < paramVarArgs.size())
    {
      Object localObject = getactivityInfo;
      String str = packageName;
      if (s.c(a).getPackageName().equals(str)) {}
      for (;;)
      {
        i += 1;
        break;
        localObject = name;
        w localw = new w(a);
        c = ("start_app" + str + "#" + (String)localObject);
        localLinkedList.add(localw);
      }
    }
    return localLinkedList;
  }
  
  protected void a(List<w> paramList)
  {
    super.onPostExecute(paramList);
    a.a(3).b.addAll(paramList);
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */