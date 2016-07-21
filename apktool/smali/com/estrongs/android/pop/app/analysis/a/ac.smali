.class public Lcom/estrongs/android/pop/app/analysis/a/ac;
.super Lcom/estrongs/android/pop/app/analysis/a/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/pop/app/analysis/a/o",
        "<",
        "Lcom/estrongs/android/pop/app/analysis/b/aj;",
        "Lcom/estrongs/android/pop/app/analysis/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/estrongs/android/pop/app/analysis/a/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/analysis/a/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/ac;->d:Lcom/estrongs/android/pop/app/analysis/a/ae;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a/ac;)Lcom/estrongs/android/pop/app/analysis/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/ac;->d:Lcom/estrongs/android/pop/app/analysis/a/ae;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/ac;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/v;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/ac;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/v;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/pop/app/analysis/viewholders/v;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->a()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    check-cast p1, Lcom/estrongs/android/pop/app/analysis/viewholders/x;

    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->a(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->b:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/a/ad;

    invoke-direct {v1, p0, p2, p3}, Lcom/estrongs/android/pop/app/analysis/a/ad;-><init>(Lcom/estrongs/android/pop/app/analysis/a/ac;Lcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/u;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/analysis/a/ac;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/v;Lcom/estrongs/android/pop/app/analysis/b/aj;Z)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/pop/app/analysis/viewholders/v;

    invoke-virtual {p1, p3, p4}, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->a(Lcom/estrongs/android/pop/app/analysis/b/aj;Z)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lcom/estrongs/android/pop/app/analysis/b/aj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/analysis/a/ac;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/v;Lcom/estrongs/android/pop/app/analysis/b/aj;Z)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/ac;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/x;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/ac;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/x;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1
.end method
