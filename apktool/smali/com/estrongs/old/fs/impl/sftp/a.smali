.class public Lcom/estrongs/old/fs/impl/sftp/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/UIKeyboardInteractive;
.implements Lcom/jcraft/jsch/UserInfo;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/old/fs/impl/sftp/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 4

    if-nez p4, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v2, p4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/old/fs/impl/sftp/a;->a:Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
