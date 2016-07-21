.class Lcom/estrongs/android/ui/e/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const v5, 0x7f0803e6

    const v4, 0x7f080226

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->a(Lcom/estrongs/android/ui/e/cr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08033f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v2, "Longpress_delete"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->c(Lcom/estrongs/android/ui/e/cr;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v2, v0, Lcom/estrongs/android/pop/app/diskusage/h;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Ljava/util/List;)V

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Delete_In_Diskusage_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/ad;->h(Z)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0806ba

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/cu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/cu;-><init>(Lcom/estrongs/android/ui/e/ct;)V

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/ad;->f(Z)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0806bb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/cv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/cv;-><init>(Lcom/estrongs/android/ui/e/ct;)V

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ct;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/util/List;)Z

    goto/16 :goto_0
.end method
