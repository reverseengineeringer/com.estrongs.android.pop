.class Lcom/estrongs/android/pop/view/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/dw;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cr;Z)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    invoke-static {v2}, Lcom/estrongs/android/ui/e/ik;->a(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;II)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/ar;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ar;-><init>(Lcom/estrongs/android/pop/view/aq;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/cr;)V

    :cond_2
    return-void
.end method
