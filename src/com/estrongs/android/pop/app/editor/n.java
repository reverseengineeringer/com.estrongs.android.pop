package com.estrongs.android.pop.app.editor;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.ks;
import com.estrongs.android.util.am;
import java.util.ArrayList;
import java.util.List;

class n
  implements View.OnClickListener
{
  n(PopNoteEditor paramPopNoteEditor) {}
  
  public void onClick(View paramView)
  {
    paramView = PopNoteEditor.v(a).a();
    if (paramView != null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(am.bB(paramView));
      paramView = new ks(a, "document", localArrayList);
      paramView.a(new o(this));
      paramView.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */