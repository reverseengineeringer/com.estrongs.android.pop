.class Lcom/estrongs/android/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/c/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/c/i;->a:Lcom/estrongs/android/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/c/i;->a:Lcom/estrongs/android/c/h;

    invoke-static {v0}, Lcom/estrongs/android/c/h;->a(Lcom/estrongs/android/c/h;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/c/j;

    iget-object v1, p0, Lcom/estrongs/android/c/i;->a:Lcom/estrongs/android/c/h;

    iget-object v2, p0, Lcom/estrongs/android/c/i;->a:Lcom/estrongs/android/c/h;

    invoke-static {v2}, Lcom/estrongs/android/c/h;->b(Lcom/estrongs/android/c/h;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/c/j;-><init>(Lcom/estrongs/android/c/h;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
