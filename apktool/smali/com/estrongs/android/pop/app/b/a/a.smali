.class public Lcom/estrongs/android/pop/app/b/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/a/a;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/b/a/a;->d:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/b;

    iget v0, v0, Lcom/estrongs/android/pop/app/b/b;->c:I

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/pop/app/b/c/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/estrongs/android/pop/app/b/c/l;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/b/c/l;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/estrongs/android/pop/app/b/c/l;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/b/c/l;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/estrongs/android/h/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/b/c/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/c/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/estrongs/android/pop/app/b/c/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/c/j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/estrongs/android/pop/app/b/c/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/c/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
