.class final Lcom/estrongs/fs/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/estrongs/fs/impl/w/b;->b()V

    invoke-static {}, Lcom/estrongs/old/fs/impl/a/c;->b()Lcom/estrongs/old/fs/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/old/fs/a;->a()V

    invoke-static {}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->c()Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a()V

    invoke-static {}, Lcom/estrongs/fs/impl/adb/c;->a()V

    return-void
.end method
