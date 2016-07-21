.class Lcom/estrongs/android/ui/e/dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/df;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/df;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/df;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/df;->c:Lcom/estrongs/fs/b/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/w;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v3, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v4, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    goto :goto_1

    :cond_1
    const-string v0, "hasplaylist"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b([Ljava/lang/String;)V

    const-string v0, "isadd"

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/e/df;->d:Z

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/df;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "Chromecast"

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/e/df;->e:Z

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/df;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v1, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dg;->a:Lcom/estrongs/android/ui/e/df;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f08046b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_2
.end method
