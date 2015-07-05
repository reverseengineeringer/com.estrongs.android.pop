.class Lcom/estrongs/android/ui/a/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/ui/a/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bx;[ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/by;->a:[I

    iput-object p3, p0, Lcom/estrongs/android/ui/a/by;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/by;->a:[I

    aget v0, v0, p2

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget v1, v1, Lcom/estrongs/android/ui/a/bx;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget v1, v1, Lcom/estrongs/android/ui/a/bx;->c:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bx;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->e(Lcom/estrongs/android/ui/a/aa;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget v1, v1, Lcom/estrongs/android/ui/a/bx;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget v1, v1, Lcom/estrongs/android/ui/a/bx;->c:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bx;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->e(Lcom/estrongs/android/ui/a/aa;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bx;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bx;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/e/ie;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bx;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/dialog/hc;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bx;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/impl/h/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bx;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v4, v4, Lcom/estrongs/android/ui/a/bx;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/fs/impl/h/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/hc;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->a()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/estrongs/android/ui/dialog/hc;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bx;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bx;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/hc;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->a()V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/by;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/a/by;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/ui/a/aa;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bx;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/ay;->c(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/by;->c:Lcom/estrongs/android/ui/a/bx;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/bx;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v2, v2, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ay;->c(Ljava/io/File;)V

    goto/16 :goto_0
.end method
