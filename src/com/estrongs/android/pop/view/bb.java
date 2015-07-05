package com.estrongs.android.pop.view;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import com.estrongs.android.ui.c.a;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;

class bb
  implements TextWatcher
{
  bb(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (FileExplorerActivity.B(a) == null) {
      break label10;
    }
    label10:
    while (((a.f(a.z())) && (a.T != null) && (FileExplorerActivity.B(a).getText().toString().equals(ff.a(a.T)))) || (a.B() == null) || (a.y() == null)) {
      return;
    }
    if (FileExplorerActivity.C(a) != null)
    {
      paramEditable = FileExplorerActivity.C(a);
      if (FileExplorerActivity.B(a).getEditableText().length() <= 0) {
        break label175;
      }
    }
    label175:
    for (int i = 0;; i = 4)
    {
      paramEditable.setVisibility(i);
      if ((a.y() instanceof a)) {
        break;
      }
      try
      {
        FileExplorerActivity.a(a, a.B().getAbsolutePath(), a.y().ab());
        return;
      }
      catch (Exception paramEditable)
      {
        return;
      }
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */