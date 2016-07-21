.class public Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;


# instance fields
.field private a:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;->a:D

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 6

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;->a:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-super {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    return v0
.end method

.method public setFlingScale(D)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;->a:D

    return-void
.end method
