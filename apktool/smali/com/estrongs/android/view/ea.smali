.class public Lcom/estrongs/android/view/ea;
.super Landroid/support/v7/widget/GridLayoutManager;


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/estrongs/android/view/ea;->a:[I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    aput v3, p5, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    aput v0, p5, v2

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 14

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getItemCount()I

    move-result v12

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getSpanCount()I

    move-result v13

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v12, :cond_1

    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/view/ea;->a:[I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/view/ea;->a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    rem-int v0, v2, v13

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int v1, v7, v0

    :goto_1
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->a:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    :cond_0
    rem-int v0, v2, v13

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, v6

    :goto_3
    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/ea;->a:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    goto :goto_2

    :cond_1
    packed-switch v10, :pswitch_data_0

    :goto_4
    packed-switch v11, :pswitch_data_1

    :goto_5
    invoke-virtual {p0, v7, v6}, Lcom/estrongs/android/view/ea;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    move v7, v9

    goto :goto_4

    :pswitch_1
    move v6, v8

    goto :goto_5

    :cond_2
    move v1, v7

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_2

    :cond_5
    move v1, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40000000
        :pswitch_1
    .end packed-switch
.end method
