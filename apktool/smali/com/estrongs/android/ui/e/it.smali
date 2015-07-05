.class Lcom/estrongs/android/ui/e/it;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/e/is;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/is;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/it;->b:Lcom/estrongs/android/ui/e/is;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b02fa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/fs/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/aw;->a(Z)V

    goto :goto_0
.end method
