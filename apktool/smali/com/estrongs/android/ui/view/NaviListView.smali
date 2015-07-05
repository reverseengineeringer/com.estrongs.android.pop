.class public Lcom/estrongs/android/ui/view/NaviListView;
.super Landroid/widget/ExpandableListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/estrongs/android/ui/a/aa;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/os/Handler;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->g:I

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/NaviListView;->e()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->f:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/view/bf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bf;-><init>(Lcom/estrongs/android/ui/view/NaviListView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->f:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private d()I
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/aa;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/aa;->getGroupCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-static {v0}, Lcom/estrongs/android/ui/view/NaviListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/android/ui/view/NaviListView;->getFlatListPosition(J)I

    move-result v3

    if-gt v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private e()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/NaviListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListPosition(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/android/ui/view/NaviListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4, v5}, Lcom/estrongs/android/ui/view/NaviListView;->getPackedPositionGroup(J)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/aa;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->d:I

    iget v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->d:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/NaviListView;->isGroupExpanded(I)Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    iget v2, p0, Lcom/estrongs/android/ui/view/NaviListView;->d:I

    iget-object v3, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/estrongs/android/ui/a/aa;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public b()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string v0, "test"

    const-string v1, "checkStaticBoard!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/aa;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/ui/view/NaviListView;->d()I

    move-result v1

    const-string v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstVisible : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    iget v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    if-eqz v0, :cond_3

    iput v7, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->a()V

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/view/NaviListView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/estrongs/android/ui/view/NaviListView;->b:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/a/aa;->getGroupCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/NaviListView;->a(I)Landroid/view/View;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gez v0, :cond_8

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " , "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v7, v2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/view/NaviListView;->a(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gtz v2, :cond_6

    move v0, v1

    :cond_6
    iget v2, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    if-eq v0, v2, :cond_3

    iput v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->c:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->a()V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_2

    :cond_8
    if-ge v3, v1, :cond_9

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch 2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " , "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    sub-int v1, v3, v1

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    if-lt v3, v1, :cond_0

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch 3 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " , "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v7, v2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/NaviListView;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ExpandableListView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/NaviListView;->c()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->b()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const-string v0, "test"

    const-string v1, "onScrollStateChanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/NaviListView;->b()V

    return-void
.end method
