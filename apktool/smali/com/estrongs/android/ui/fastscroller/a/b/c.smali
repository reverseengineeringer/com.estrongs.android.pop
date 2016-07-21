.class public Lcom/estrongs/android/ui/fastscroller/a/b/c;
.super Lcom/estrongs/android/ui/fastscroller/a/b/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/fastscroller/a/b/d;-><init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;)F
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    int-to-float v1, v1

    sub-int v0, v2, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method
