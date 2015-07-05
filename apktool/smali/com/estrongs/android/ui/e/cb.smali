.class Lcom/estrongs/android/ui/e/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/view/e;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/e;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/util/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v0, Lcom/estrongs/android/view/e;->b:Ljava/lang/String;

    new-instance v4, Lcom/estrongs/android/ui/e/cc;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/ui/e/cc;-><init>(Lcom/estrongs/android/ui/e/cb;Lcom/estrongs/android/view/e;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/util/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/c;->a()V

    goto :goto_0
.end method
