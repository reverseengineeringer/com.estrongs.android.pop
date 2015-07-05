.class Lcom/estrongs/android/view/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/w;->a:Lcom/estrongs/android/view/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/estrongs/android/view/u;->g()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->a:Lcom/estrongs/android/view/u;

    invoke-static {v0}, Lcom/estrongs/android/view/u;->a(Lcom/estrongs/android/view/u;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0b02fa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/view/u;->g()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/view/ac;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/estrongs/android/view/ac;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/w;->a:Lcom/estrongs/android/view/u;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/view/u;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    goto :goto_0
.end method
