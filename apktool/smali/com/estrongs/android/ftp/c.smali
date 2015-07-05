.class Lcom/estrongs/android/ftp/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ftp/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/ftp/a;->e:Z

    :goto_0
    sget-boolean v0, Lcom/estrongs/android/ftp/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    sget-boolean v1, Lcom/estrongs/android/ftp/a;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    sget-boolean v1, Lcom/estrongs/android/ftp/a;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    iput-boolean v3, v0, Lcom/estrongs/android/ftp/a;->e:Z

    sput-boolean v3, Lcom/estrongs/android/ftp/a;->d:Z

    :goto_2
    return-void

    :cond_3
    :try_start_4
    new-instance v1, Lcom/estrongs/android/ftp/h;

    iget-object v2, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-direct {v1, v0, v2}, Lcom/estrongs/android/ftp/h;-><init>(Ljava/net/Socket;Lcom/estrongs/android/ftp/a;)V

    sget-object v0, Lcom/estrongs/android/ftp/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ftp/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/h;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/ftp/a;->e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    iput-boolean v3, v0, Lcom/estrongs/android/ftp/a;->e:Z

    sput-boolean v3, Lcom/estrongs/android/ftp/a;->d:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v1}, Lcom/estrongs/android/ftp/a;->e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    invoke-static {v1}, Lcom/estrongs/android/ftp/a;->e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/ftp/c;->a:Lcom/estrongs/android/ftp/a;

    iput-boolean v3, v1, Lcom/estrongs/android/ftp/a;->e:Z

    sput-boolean v3, Lcom/estrongs/android/ftp/a;->d:Z

    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method
