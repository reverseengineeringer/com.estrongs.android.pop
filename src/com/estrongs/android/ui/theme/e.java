package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class e
  implements View.OnClickListener
{
  e(ModifyThemeActivity paramModifyThemeActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(a, ThemeColorActivity.class);
    paramView.putExtra("set_what_color", 1);
    paramView.putExtra("theme_data_index", ModifyThemeActivity.b(a));
    a.startActivityForResult(paramView, 268439586);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */