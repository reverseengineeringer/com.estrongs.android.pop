package android.support.v7.widget;

import android.support.v4.e.o;
import android.support.v4.e.p;

class ViewInfoStore$InfoRecord
{
  static final int FLAG_APPEAR = 2;
  static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
  static final int FLAG_APPEAR_PRE_AND_POST = 14;
  static final int FLAG_DISAPPEARED = 1;
  static final int FLAG_POST = 8;
  static final int FLAG_PRE = 4;
  static final int FLAG_PRE_AND_POST = 12;
  static o<InfoRecord> sPool = new p(20);
  int flags;
  RecyclerView.ItemAnimator.ItemHolderInfo postInfo;
  RecyclerView.ItemAnimator.ItemHolderInfo preInfo;
  
  static void drainCache()
  {
    while (sPool.a() != null) {}
  }
  
  static InfoRecord obtain()
  {
    InfoRecord localInfoRecord2 = (InfoRecord)sPool.a();
    InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null) {
      localInfoRecord1 = new InfoRecord();
    }
    return localInfoRecord1;
  }
  
  static void recycle(InfoRecord paramInfoRecord)
  {
    flags = 0;
    preInfo = null;
    postInfo = null;
    sPool.a(paramInfoRecord);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ViewInfoStore.InfoRecord
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */