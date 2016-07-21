.class Lcom/estrongs/android/view/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e05b7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/view/y;->f()V

    iget-object v0, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/y;

    invoke-virtual {v0}, Lcom/estrongs/android/view/y;->b()V

    iget-object v0, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/view/y;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/view/y;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e05b8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/view/y;->h()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/view/y;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/view/y;->h()Ljava/util/LinkedList;

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

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/af;

    invoke-virtual {v1}, Lcom/estrongs/android/view/af;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/estrongs/android/view/af;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/y;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/view/y;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    goto :goto_0
.end method
