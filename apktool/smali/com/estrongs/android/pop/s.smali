.class Lcom/estrongs/android/pop/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unsupported activity for open tree auth"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    const/4 v2, 0x3

    iput v2, v1, Lcom/estrongs/a/a/d;->g:I

    iget-object v1, p0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v5, v5, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/t;-><init>(Lcom/estrongs/android/pop/s;)V

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/a;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/impl/local/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw v0
.end method
