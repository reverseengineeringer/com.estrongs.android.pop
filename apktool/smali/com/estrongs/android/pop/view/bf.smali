.class Lcom/estrongs/android/pop/view/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/av;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/android/view/av",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/android/view/aw;->d()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    invoke-virtual {v2, v0, p1}, Lcom/estrongs/android/ui/e/w;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(II)V

    goto :goto_0
.end method
