.class Lcom/estrongs/android/view/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ai;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iput p2, p0, Lcom/estrongs/android/view/aj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v0, v0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v1, v1, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v1, v1, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    iget v2, p0, Lcom/estrongs/android/view/aj;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v2, v2, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-static {v2}, Lcom/estrongs/android/view/af;->b(Lcom/estrongs/android/view/af;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v2, v2, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v2, v2, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v0, v0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v0, v0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->e:Lcom/estrongs/android/view/y;

    iget-object v2, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v2, v2, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/y;->b(Lcom/estrongs/android/view/af;)V

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v1, v1, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/af;->a(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/aj;->b:Lcom/estrongs/android/view/ai;

    iget-object v0, v0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
