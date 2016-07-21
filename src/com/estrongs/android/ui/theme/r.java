package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.adapter.dr;
import com.estrongs.android.view.a.a;
import java.util.List;

class r
  extends Handler
{
  r(ThemeActivity paramThemeActivity) {}
  
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
        return;
        paramMessage = ThemeActivity.d(a).g();
      } while (paramMessage == null);
      paramMessage = (al)paramMessage.get(j);
      a locala = ThemeActivity.e(a);
      if (!a.getPackageName().equals(c)) {}
      for (boolean bool = true;; bool = false)
      {
        locala.d(bool);
        ThemeActivity.c(a).notifyDataSetChanged();
        a.invalidateOptionsMenu();
        if (ThemeActivity.f(a).equals(c)) {
          break;
        }
        a.setResult(-1);
        return;
      }
      a.setResult(0);
      return;
    case 2: 
      paramMessage = (al)ThemeActivity.d(a).g().get(j);
      if (paramMessage.b(a))
      {
        paramMessage = new Intent(a, ModifyThemeActivity.class);
        paramMessage.putExtra("theme_data_index", j);
        a.startActivityForResult(paramMessage, 4132);
        return;
      }
      paramMessage.a(a, this);
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
 * Qualified Name:     com.estrongs.android.ui.theme.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */