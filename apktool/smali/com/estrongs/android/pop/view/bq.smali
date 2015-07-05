.class Lcom/estrongs/android/pop/view/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/bp;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/bp;

    iget-object v1, v0, Lcom/estrongs/android/pop/view/bp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/bp;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/o;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/util/o;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/bp;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/navigation/n;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/bp;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/navigation/n;

    :cond_1
    return-void
.end method
