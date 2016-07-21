.class Lcom/estrongs/android/ui/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/estrongs/android/ui/g/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/g/c;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/e;->c:Lcom/estrongs/android/ui/g/c;

    iput-object p2, p0, Lcom/estrongs/android/ui/g/e;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/ui/g/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/g/e;->c:Lcom/estrongs/android/ui/g/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/g/c;->b(Lcom/estrongs/android/ui/g/c;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/g/e;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/e;->c:Lcom/estrongs/android/ui/g/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/c;->a(Lcom/estrongs/android/ui/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.estrongs.com/channel?aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/g/e;->c:Lcom/estrongs/android/ui/g/c;

    invoke-static {v1}, Lcom/estrongs/android/ui/g/c;->b(Lcom/estrongs/android/ui/g/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/util/aa;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/aa;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/e;->c:Lcom/estrongs/android/ui/g/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/g/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/g/c;->e(Landroid/content/Context;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/console/service/0918/?aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/g/e;->c:Lcom/estrongs/android/ui/g/c;

    invoke-static {v2}, Lcom/estrongs/android/ui/g/c;->c(Lcom/estrongs/android/ui/g/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/g/e;->c:Lcom/estrongs/android/ui/g/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/g/c;->b(Lcom/estrongs/android/ui/g/c;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/g/e;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    long-to-int v1, p4

    iput v1, v0, Landroid/os/Message;->arg1:I

    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/g/e;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
