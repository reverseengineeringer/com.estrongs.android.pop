.class Lcom/estrongs/android/ui/e/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/android/ui/e/cp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v5, :cond_0

    new-instance v1, Lcom/estrongs/fs/b/ag;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/b/ag;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v2, 0x7f0b047e

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/a/a;->setDescription(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ix;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v4, 0x7f0b0480

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v1}, Lcom/estrongs/a/a;->execute()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    goto :goto_0
.end method
