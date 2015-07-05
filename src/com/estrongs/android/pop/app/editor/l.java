package com.estrongs.android.pop.app.editor;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.util.c;

class l
  implements MenuItem.OnMenuItemClickListener
{
  l(PopNoteEditor paramPopNoteEditor) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    new c(a, PopNoteEditor.t(a), new m(this)).a();
    PopNoteEditor.q(a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */