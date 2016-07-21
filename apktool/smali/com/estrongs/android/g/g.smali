.class Lcom/estrongs/android/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/g/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/g/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/g/g;->a:Lcom/estrongs/android/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/g/g;->a:Lcom/estrongs/android/g/f;

    invoke-static {v0}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/g/h;

    iget-object v1, p0, Lcom/estrongs/android/g/g;->a:Lcom/estrongs/android/g/f;

    iget-object v2, p0, Lcom/estrongs/android/g/g;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->b(Lcom/estrongs/android/g/f;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/g/h;-><init>(Lcom/estrongs/android/g/f;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
