package com.estrongs.android.pop.app.editor;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.utils.a;

class z
  extends Thread
{
  private z(PopNoteEditor paramPopNoteEditor) {}
  
  public void run()
  {
    PopNoteEditor.o(a);
    for (;;)
    {
      synchronized (PopNoteEditor.t(a))
      {
        try
        {
          PopNoteEditor.u(a).delete(0, PopNoteEditor.u(a).length());
          PopNoteEditor.a(a, new b(PopNoteEditor.i(a), PopNoteEditor.v(a), PopNoteEditor.m(a)));
          localObject2 = new char['က'];
          localObject4 = PopNoteEditor.x(a).a(PopNoteEditor.w(a) - 3 - 1);
          if (localObject4 == null) {
            break label333;
          }
        }
        catch (Exception localException1)
        {
          Object localObject2;
          Object localObject4;
          int j;
          a.a(a, 2131231859);
          continue;
        }
        try
        {
          PopNoteEditor.y(a).a(b);
          i = a;
          j = PopNoteEditor.w(a);
          i += 1;
          if ((j - 3 > i) && (PopNoteEditor.y(a).read((char[])localObject2) > 0)) {
            continue;
          }
          PopNoteEditor.z(a);
          i = 0;
          if (i < 3)
          {
            j = PopNoteEditor.y(a).read((char[])localObject2);
            if (j >= 0) {}
          }
          else
          {
            localObject2 = PopNoteEditor.A(a).obtainMessage(1);
            localObject4 = PopNoteEditor.u(a).toString();
            obj = new ae(a, (String)localObject4, 0, PopNoteEditor.a(a, PopNoteEditor.a(a), (String)localObject4));
            PopNoteEditor.A(a).sendMessage((Message)localObject2);
            PopNoteEditor.B(a);
            return;
          }
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
        }
        PopNoteEditor.u(a).append((char[])localObject2, 0, j);
        i += 1;
      }
      label333:
      int i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */