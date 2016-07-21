package android.support.v7.widget;

import android.support.v4.a.a;
import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DefaultItemAnimator
  extends SimpleItemAnimator
{
  private static final boolean DEBUG = false;
  private ArrayList<RecyclerView.ViewHolder> mAddAnimations = new ArrayList();
  private ArrayList<ArrayList<RecyclerView.ViewHolder>> mAdditionsList = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> mChangeAnimations = new ArrayList();
  private ArrayList<ArrayList<DefaultItemAnimator.ChangeInfo>> mChangesList = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> mMoveAnimations = new ArrayList();
  private ArrayList<ArrayList<DefaultItemAnimator.MoveInfo>> mMovesList = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> mPendingAdditions = new ArrayList();
  private ArrayList<DefaultItemAnimator.ChangeInfo> mPendingChanges = new ArrayList();
  private ArrayList<DefaultItemAnimator.MoveInfo> mPendingMoves = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> mPendingRemovals = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> mRemoveAnimations = new ArrayList();
  
  private void animateAddImpl(RecyclerView.ViewHolder paramViewHolder)
  {
    ex localex = cn.s(itemView);
    mAddAnimations.add(paramViewHolder);
    localex.a(1.0F).a(getAddDuration()).a(new DefaultItemAnimator.5(this, paramViewHolder, localex)).c();
  }
  
  private void animateChangeImpl(DefaultItemAnimator.ChangeInfo paramChangeInfo)
  {
    View localView = null;
    Object localObject = oldHolder;
    if (localObject == null) {}
    for (localObject = null;; localObject = itemView)
    {
      RecyclerView.ViewHolder localViewHolder = newHolder;
      if (localViewHolder != null) {
        localView = itemView;
      }
      if (localObject != null)
      {
        localObject = cn.s((View)localObject).a(getChangeDuration());
        mChangeAnimations.add(oldHolder);
        ((ex)localObject).b(toX - fromX);
        ((ex)localObject).c(toY - fromY);
        ((ex)localObject).a(0.0F).a(new DefaultItemAnimator.7(this, paramChangeInfo, (ex)localObject)).c();
      }
      if (localView != null)
      {
        localObject = cn.s(localView);
        mChangeAnimations.add(newHolder);
        ((ex)localObject).b(0.0F).c(0.0F).a(getChangeDuration()).a(1.0F).a(new DefaultItemAnimator.8(this, paramChangeInfo, (ex)localObject, localView)).c();
      }
      return;
    }
  }
  
  private void animateMoveImpl(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = itemView;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0) {
      cn.s((View)localObject).b(0.0F);
    }
    if (paramInt2 != 0) {
      cn.s((View)localObject).c(0.0F);
    }
    localObject = cn.s((View)localObject);
    mMoveAnimations.add(paramViewHolder);
    ((ex)localObject).a(getMoveDuration()).a(new DefaultItemAnimator.6(this, paramViewHolder, paramInt1, paramInt2, (ex)localObject)).c();
  }
  
  private void animateRemoveImpl(RecyclerView.ViewHolder paramViewHolder)
  {
    ex localex = cn.s(itemView);
    mRemoveAnimations.add(paramViewHolder);
    localex.a(getRemoveDuration()).a(0.0F).a(new DefaultItemAnimator.4(this, paramViewHolder, localex)).c();
  }
  
  private void dispatchFinishedWhenDone()
  {
    if (!isRunning()) {
      dispatchAnimationsFinished();
    }
  }
  
  private void endChangeAnimation(List<DefaultItemAnimator.ChangeInfo> paramList, RecyclerView.ViewHolder paramViewHolder)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      DefaultItemAnimator.ChangeInfo localChangeInfo = (DefaultItemAnimator.ChangeInfo)paramList.get(i);
      if ((endChangeAnimationIfNecessary(localChangeInfo, paramViewHolder)) && (oldHolder == null) && (newHolder == null)) {
        paramList.remove(localChangeInfo);
      }
      i -= 1;
    }
  }
  
  private void endChangeAnimationIfNecessary(DefaultItemAnimator.ChangeInfo paramChangeInfo)
  {
    if (oldHolder != null) {
      endChangeAnimationIfNecessary(paramChangeInfo, oldHolder);
    }
    if (newHolder != null) {
      endChangeAnimationIfNecessary(paramChangeInfo, newHolder);
    }
  }
  
  private boolean endChangeAnimationIfNecessary(DefaultItemAnimator.ChangeInfo paramChangeInfo, RecyclerView.ViewHolder paramViewHolder)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (newHolder == paramViewHolder) {
      newHolder = null;
    }
    for (;;)
    {
      cn.c(itemView, 1.0F);
      cn.a(itemView, 0.0F);
      cn.b(itemView, 0.0F);
      dispatchChangeFinished(paramViewHolder, bool1);
      bool1 = true;
      do
      {
        return bool1;
        bool1 = bool2;
      } while (oldHolder != paramViewHolder);
      oldHolder = null;
      bool1 = true;
    }
  }
  
  private void resetAnimation(RecyclerView.ViewHolder paramViewHolder)
  {
    a.a(itemView);
    endAnimation(paramViewHolder);
  }
  
  public boolean animateAdd(RecyclerView.ViewHolder paramViewHolder)
  {
    resetAnimation(paramViewHolder);
    cn.c(itemView, 0.0F);
    mPendingAdditions.add(paramViewHolder);
    return true;
  }
  
  public boolean animateChange(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramViewHolder1 == paramViewHolder2) {
      return animateMove(paramViewHolder1, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    float f1 = cn.o(itemView);
    float f2 = cn.p(itemView);
    float f3 = cn.f(itemView);
    resetAnimation(paramViewHolder1);
    int i = (int)(paramInt3 - paramInt1 - f1);
    int j = (int)(paramInt4 - paramInt2 - f2);
    cn.a(itemView, f1);
    cn.b(itemView, f2);
    cn.c(itemView, f3);
    if (paramViewHolder2 != null)
    {
      resetAnimation(paramViewHolder2);
      cn.a(itemView, -i);
      cn.b(itemView, -j);
      cn.c(itemView, 0.0F);
    }
    mPendingChanges.add(new DefaultItemAnimator.ChangeInfo(paramViewHolder1, paramViewHolder2, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean animateMove(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = itemView;
    paramInt1 = (int)(paramInt1 + cn.o(itemView));
    paramInt2 = (int)(paramInt2 + cn.p(itemView));
    resetAnimation(paramViewHolder);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    if ((i == 0) && (j == 0))
    {
      dispatchMoveFinished(paramViewHolder);
      return false;
    }
    if (i != 0) {
      cn.a(localView, -i);
    }
    if (j != 0) {
      cn.b(localView, -j);
    }
    mPendingMoves.add(new DefaultItemAnimator.MoveInfo(paramViewHolder, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean animateRemove(RecyclerView.ViewHolder paramViewHolder)
  {
    resetAnimation(paramViewHolder);
    mPendingRemovals.add(paramViewHolder);
    return true;
  }
  
  public boolean canReuseUpdatedViewHolder(RecyclerView.ViewHolder paramViewHolder, List<Object> paramList)
  {
    return (!paramList.isEmpty()) || (super.canReuseUpdatedViewHolder(paramViewHolder, paramList));
  }
  
  void cancelAll(List<RecyclerView.ViewHolder> paramList)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      cn.s(getitemView).b();
      i -= 1;
    }
  }
  
  public void endAnimation(RecyclerView.ViewHolder paramViewHolder)
  {
    View localView = itemView;
    cn.s(localView).b();
    int i = mPendingMoves.size() - 1;
    while (i >= 0)
    {
      if (mPendingMoves.get(i)).holder == paramViewHolder)
      {
        cn.b(localView, 0.0F);
        cn.a(localView, 0.0F);
        dispatchMoveFinished(paramViewHolder);
        mPendingMoves.remove(i);
      }
      i -= 1;
    }
    endChangeAnimation(mPendingChanges, paramViewHolder);
    if (mPendingRemovals.remove(paramViewHolder))
    {
      cn.c(localView, 1.0F);
      dispatchRemoveFinished(paramViewHolder);
    }
    if (mPendingAdditions.remove(paramViewHolder))
    {
      cn.c(localView, 1.0F);
      dispatchAddFinished(paramViewHolder);
    }
    i = mChangesList.size() - 1;
    ArrayList localArrayList;
    while (i >= 0)
    {
      localArrayList = (ArrayList)mChangesList.get(i);
      endChangeAnimation(localArrayList, paramViewHolder);
      if (localArrayList.isEmpty()) {
        mChangesList.remove(i);
      }
      i -= 1;
    }
    i = mMovesList.size() - 1;
    if (i >= 0)
    {
      localArrayList = (ArrayList)mMovesList.get(i);
      int j = localArrayList.size() - 1;
      for (;;)
      {
        if (j >= 0)
        {
          if (getholder != paramViewHolder) {
            break label293;
          }
          cn.b(localView, 0.0F);
          cn.a(localView, 0.0F);
          dispatchMoveFinished(paramViewHolder);
          localArrayList.remove(j);
          if (localArrayList.isEmpty()) {
            mMovesList.remove(i);
          }
        }
        i -= 1;
        break;
        label293:
        j -= 1;
      }
    }
    i = mAdditionsList.size() - 1;
    while (i >= 0)
    {
      localArrayList = (ArrayList)mAdditionsList.get(i);
      if (localArrayList.remove(paramViewHolder))
      {
        cn.c(localView, 1.0F);
        dispatchAddFinished(paramViewHolder);
        if (localArrayList.isEmpty()) {
          mAdditionsList.remove(i);
        }
      }
      i -= 1;
    }
    if ((!mRemoveAnimations.remove(paramViewHolder)) || ((!mAddAnimations.remove(paramViewHolder)) || ((!mChangeAnimations.remove(paramViewHolder)) || (mMoveAnimations.remove(paramViewHolder))))) {}
    dispatchFinishedWhenDone();
  }
  
  public void endAnimations()
  {
    int i = mPendingMoves.size() - 1;
    Object localObject1;
    Object localObject2;
    while (i >= 0)
    {
      localObject1 = (DefaultItemAnimator.MoveInfo)mPendingMoves.get(i);
      localObject2 = holder.itemView;
      cn.b((View)localObject2, 0.0F);
      cn.a((View)localObject2, 0.0F);
      dispatchMoveFinished(holder);
      mPendingMoves.remove(i);
      i -= 1;
    }
    i = mPendingRemovals.size() - 1;
    while (i >= 0)
    {
      dispatchRemoveFinished((RecyclerView.ViewHolder)mPendingRemovals.get(i));
      mPendingRemovals.remove(i);
      i -= 1;
    }
    i = mPendingAdditions.size() - 1;
    while (i >= 0)
    {
      localObject1 = (RecyclerView.ViewHolder)mPendingAdditions.get(i);
      cn.c(itemView, 1.0F);
      dispatchAddFinished((RecyclerView.ViewHolder)localObject1);
      mPendingAdditions.remove(i);
      i -= 1;
    }
    i = mPendingChanges.size() - 1;
    while (i >= 0)
    {
      endChangeAnimationIfNecessary((DefaultItemAnimator.ChangeInfo)mPendingChanges.get(i));
      i -= 1;
    }
    mPendingChanges.clear();
    if (!isRunning()) {
      return;
    }
    i = mMovesList.size() - 1;
    int j;
    while (i >= 0)
    {
      localObject1 = (ArrayList)mMovesList.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (DefaultItemAnimator.MoveInfo)((ArrayList)localObject1).get(j);
        View localView = holder.itemView;
        cn.b(localView, 0.0F);
        cn.a(localView, 0.0F);
        dispatchMoveFinished(holder);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          mMovesList.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = mAdditionsList.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)mAdditionsList.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (RecyclerView.ViewHolder)((ArrayList)localObject1).get(j);
        cn.c(itemView, 1.0F);
        dispatchAddFinished((RecyclerView.ViewHolder)localObject2);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          mAdditionsList.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = mChangesList.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)mChangesList.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        endChangeAnimationIfNecessary((DefaultItemAnimator.ChangeInfo)((ArrayList)localObject1).get(j));
        if (((ArrayList)localObject1).isEmpty()) {
          mChangesList.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    cancelAll(mRemoveAnimations);
    cancelAll(mMoveAnimations);
    cancelAll(mAddAnimations);
    cancelAll(mChangeAnimations);
    dispatchAnimationsFinished();
  }
  
  public boolean isRunning()
  {
    return (!mPendingAdditions.isEmpty()) || (!mPendingChanges.isEmpty()) || (!mPendingMoves.isEmpty()) || (!mPendingRemovals.isEmpty()) || (!mMoveAnimations.isEmpty()) || (!mRemoveAnimations.isEmpty()) || (!mAddAnimations.isEmpty()) || (!mChangeAnimations.isEmpty()) || (!mMovesList.isEmpty()) || (!mAdditionsList.isEmpty()) || (!mChangesList.isEmpty());
  }
  
  public void runPendingAnimations()
  {
    int i;
    int j;
    label24:
    int k;
    if (!mPendingRemovals.isEmpty())
    {
      i = 1;
      if (mPendingMoves.isEmpty()) {
        break label72;
      }
      j = 1;
      if (mPendingChanges.isEmpty()) {
        break label77;
      }
      k = 1;
      label36:
      if (mPendingAdditions.isEmpty()) {
        break label82;
      }
    }
    label72:
    label77:
    label82:
    for (int m = 1;; m = 0)
    {
      if ((i != 0) || (j != 0) || (m != 0) || (k != 0)) {
        break label88;
      }
      return;
      i = 0;
      break;
      j = 0;
      break label24;
      k = 0;
      break label36;
    }
    label88:
    Object localObject1 = mPendingRemovals.iterator();
    while (((Iterator)localObject1).hasNext()) {
      animateRemoveImpl((RecyclerView.ViewHolder)((Iterator)localObject1).next());
    }
    mPendingRemovals.clear();
    Object localObject2;
    label211:
    label291:
    long l1;
    label366:
    long l2;
    if (j != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(mPendingMoves);
      mMovesList.add(localObject1);
      mPendingMoves.clear();
      localObject2 = new DefaultItemAnimator.1(this, (ArrayList)localObject1);
      if (i != 0) {
        cn.a(get0holder.itemView, (Runnable)localObject2, getRemoveDuration());
      }
    }
    else
    {
      if (k != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(mPendingChanges);
        mChangesList.add(localObject1);
        mPendingChanges.clear();
        localObject2 = new DefaultItemAnimator.2(this, (ArrayList)localObject1);
        if (i == 0) {
          break label428;
        }
        cn.a(get0oldHolder.itemView, (Runnable)localObject2, getRemoveDuration());
      }
      if (m == 0) {
        break label436;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(mPendingAdditions);
      mAdditionsList.add(localObject1);
      mPendingAdditions.clear();
      localObject2 = new DefaultItemAnimator.3(this, (ArrayList)localObject1);
      if ((i == 0) && (j == 0) && (k == 0)) {
        break label456;
      }
      if (i == 0) {
        break label438;
      }
      l1 = getRemoveDuration();
      if (j == 0) {
        break label444;
      }
      l2 = getMoveDuration();
      label376:
      if (k == 0) {
        break label450;
      }
    }
    label428:
    label436:
    label438:
    label444:
    label450:
    for (long l3 = getChangeDuration();; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      cn.a(get0itemView, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label211;
      ((Runnable)localObject2).run();
      break label291;
      break;
      l1 = 0L;
      break label366;
      l2 = 0L;
      break label376;
    }
    label456:
    ((Runnable)localObject2).run();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.DefaultItemAnimator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */