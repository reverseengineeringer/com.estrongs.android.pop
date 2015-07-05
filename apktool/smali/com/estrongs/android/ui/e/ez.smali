.class Lcom/estrongs/android/ui/e/ez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/android/ui/e/cp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b01be

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return v7

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/android/ui/e/cp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/am;->J(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/util/am;->I(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/util/am;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/util/am;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v2, Lcom/estrongs/android/ui/dialog/ey;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/estrongs/android/ui/dialog/ey;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ey;->a()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/estrongs/android/util/am;->H(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/estrongs/android/ui/dialog/fs;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lcom/estrongs/android/ui/dialog/fs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/fs;->b()V

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lcom/estrongs/android/ui/dialog/es;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lcom/estrongs/android/ui/dialog/es;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/es;->a()V

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "box"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "onedrive"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "gdrive"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "dropbox"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "kanbox"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "vdisk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "kuaipan"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "nettype"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "editServer"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "originalPath"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    new-instance v6, Lcom/estrongs/android/ui/a/b;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/estrongs/android/ui/a/b;-><init>(Landroid/content/Context;)V

    move v0, v1

    :goto_2
    invoke-virtual {v6}, Lcom/estrongs/android/ui/a/b;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_d

    invoke-virtual {v6, v0}, Lcom/estrongs/android/ui/a/b;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_3
    if-ne v2, v3, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const-string v2, "Unknown netdisk type"

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-static {v4}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pcs"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/estrongs/android/ui/e/fa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/fa;-><init>(Lcom/estrongs/android/ui/e/ez;)V

    new-instance v3, Lcom/estrongs/android/ui/pcs/j;

    iget-object v5, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    invoke-direct {v3, v5, v7, v4}, Lcom/estrongs/android/ui/pcs/j;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v6, v2}, Lcom/estrongs/android/ui/a/b;->b(I)I

    move-result v1

    invoke-virtual {v6, v2}, Lcom/estrongs/android/ui/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/estrongs/android/ui/pcs/j;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/j;->show()V

    goto/16 :goto_0

    :cond_a
    new-instance v1, Lcom/estrongs/android/ui/dialog/fh;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/estrongs/android/ui/dialog/fh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Lcom/estrongs/android/ui/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/estrongs/android/ui/dialog/fh;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/fh;

    move-result-object v1

    const-string v2, "vdisk"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "s_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/estrongs/android/ui/e/ez;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/fh;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/dialog/fh;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/fh;->a()V

    goto/16 :goto_1

    :cond_c
    const-string v2, "l_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_d
    move v2, v3

    goto/16 :goto_3
.end method
