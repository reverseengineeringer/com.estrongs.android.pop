.class Lcom/estrongs/android/pop/view/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/dx;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)V
    .locals 4

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/estrongs/fs/impl/s/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/impl/s/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/s/a;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/dialog/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/o;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/impl/b/d;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/o;->a()V

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/estrongs/fs/impl/b/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ag()Lcom/estrongs/android/pop/utils/c;

    move-result-object v1

    check-cast v0, Lcom/estrongs/fs/impl/b/g;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/fs/impl/b/g;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bg;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/h;Z)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/estrongs/android/ui/dialog/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/o;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/impl/b/d;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/o;->a()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/estrongs/fs/impl/o/a;

    if-eqz v1, :cond_6

    const-string v1, "web_file_url"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "intent_file_url"

    invoke-interface {v0, v3}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aA()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Lcom/estrongs/fs/impl/adb/a;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/estrongs/android/ui/dialog/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    check-cast v0, Lcom/estrongs/fs/impl/adb/a;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/a;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/impl/adb/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/a;->a()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/view/ak;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/c/e;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    goto :goto_2
.end method
