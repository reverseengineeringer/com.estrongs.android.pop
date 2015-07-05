.class public Lcom/estrongs/old/fs/impl/a/f;
.super Lorg/apache/commons/net/ftp/FTPSClient;


# instance fields
.field public a:Z

.field private b:Lcom/estrongs/old/fs/impl/a/g;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;Z)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/old/fs/impl/a/f;->a:Z

    iput-object p1, p0, Lcom/estrongs/old/fs/impl/a/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/old/fs/impl/a/f;->b:Lcom/estrongs/old/fs/impl/a/g;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/old/fs/impl/a/f;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->disconnect()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/f;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/old/fs/impl/a/f;->b:Lcom/estrongs/old/fs/impl/a/g;

    invoke-static {v0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V

    goto :goto_0
.end method

.method public logout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/old/fs/impl/a/f;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->logout()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
