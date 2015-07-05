package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import java.util.LinkedList;
import java.util.List;

class t
  extends AsyncTask<Void, Void, List<u>>
{
  private t(q paramq) {}
  
  protected List<u> a(Void... paramVarArgs)
  {
    paramVarArgs = new Intent("android.intent.action.MAIN");
    paramVarArgs.addCategory("android.intent.category.LAUNCHER");
    paramVarArgs = q.a(a).queryIntentActivities(paramVarArgs, 1);
    LinkedList localLinkedList = new LinkedList();
    int i = 0;
    if (i < paramVarArgs.size())
    {
      Object localObject = getactivityInfo;
      String str = packageName;
      if (q.c(a).getPackageName().equals(str)) {}
      for (;;)
      {
        i += 1;
        break;
        localObject = name;
        u localu = new u(a);
        c = ("start_app" + str + "#" + (String)localObject);
        localLinkedList.add(localu);
      }
    }
    return localLinkedList;
  }
  
  protected void a(List<u> paramList)
  {
    super.onPostExecute(paramList);
    a.a(3).b.addAll(paramList);
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */