.class Lcom/estrongs/android/ui/a/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/a/ca;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/ca;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/a/cb;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/a/cb;->a:Z

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/a/ca;->d:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget v1, v1, Lcom/estrongs/android/ui/a/ca;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget v1, v1, Lcom/estrongs/android/ui/a/ca;->b:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->e(Lcom/estrongs/android/ui/a/aa;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget v1, v1, Lcom/estrongs/android/ui/a/ca;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget v1, v1, Lcom/estrongs/android/ui/a/ca;->b:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->e(Lcom/estrongs/android/ui/a/aa;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->c(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->l(Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/aa;->notifyDataSetChanged()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->c(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, "#home#"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->l(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    iget-object v2, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->c()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v2, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v2}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/a/a;->d()I

    move-result v3

    invoke-static {v2, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cb;->b:Lcom/estrongs/android/ui/a/ca;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    move v0, p2

    goto/16 :goto_0
.end method
