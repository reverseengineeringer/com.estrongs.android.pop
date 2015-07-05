package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.a.db;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.view.a.a;
import java.util.List;

class o
  extends Handler
{
  o(ThemeActivity paramThemeActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    int i = what;
    int j = arg1;
    switch (i)
    {
    default: 
    case 1: 
      do
      {
        do
        {
          return;
          paramMessage = ThemeActivity.d(a).g();
        } while (paramMessage == null);
        paramMessage = (ai)paramMessage.get(j);
      } while (!ThemeActivity.d(a).a(b));
      a locala = ThemeActivity.e(a).a(0);
      if (j != 0) {}
      for (boolean bool = true;; bool = false)
      {
        locala.d(bool);
        ThemeActivity.d(a).b(b);
        ThemeActivity.c(a).notifyDataSetChanged();
        if (ThemeActivity.f(a).equals(b)) {
          break;
        }
        a.setResult(-1);
        return;
      }
      a.setResult(0);
      return;
    case 2: 
      paramMessage = (ai)ThemeActivity.d(a).g().get(j);
      if (paramMessage.b(a))
      {
        paramMessage = new Intent(a, ModifyThemeActivity.class);
        paramMessage.putExtra("theme_data_index", j);
        a.startActivityForResult(paramMessage, 268439588);
        return;
      }
      paramMessage.b(a, this);
      return;
    case 13: 
      paramMessage = (List)obj;
      ThemeActivity.d(a).a(paramMessage);
      ThemeActivity.g(a);
      ThemeActivity.c(a).notifyDataSetChanged();
      return;
    }
    paramMessage = (String)obj;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */