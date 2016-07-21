.class public Lcom/estrongs/android/pop/app/analysis/a/e;
.super Lcom/estrongs/android/pop/app/analysis/a/i;


# instance fields
.field private o:Lcom/estrongs/android/pop/app/analysis/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/analysis/a/i;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a/e;)Lcom/estrongs/android/pop/app/analysis/a/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/e;->o:Lcom/estrongs/android/pop/app/analysis/a/h;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/analysis/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/e;->o:Lcom/estrongs/android/pop/app/analysis/a/h;

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/analysis/a/e;->a(I)Lcom/estrongs/android/pop/app/analysis/b/g;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/f;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/analysis/a/f;-><init>(Lcom/estrongs/android/pop/app/analysis/a/e;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->a(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/g;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/analysis/a/g;-><init>(Lcom/estrongs/android/pop/app/analysis/a/e;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/r;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/e;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/estrongs/android/pop/app/analysis/viewholders/r;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    return-object v1
.end method
