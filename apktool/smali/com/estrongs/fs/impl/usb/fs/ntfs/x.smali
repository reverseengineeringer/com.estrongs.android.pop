.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/c;
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/j;
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/k;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

.field private b:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

.field private c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

.field private d:Lcom/estrongs/fs/impl/usb/fs/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    return-void
.end method


# virtual methods
.method public a(JLjava/nio/ByteBuffer;)V
    .locals 7

    invoke-static {p3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/a;->a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->a()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v1

    const/4 v5, 0x0

    array-length v6, v4

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(J[BII)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->b()V

    return-void
.end method

.method public a(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->d:Lcom/estrongs/fs/impl/usb/fs/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(JLjava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->d:Lcom/estrongs/fs/impl/usb/fs/c;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()[Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()J
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x80

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(ILjava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->j()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(ILjava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Z
    .locals 2

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->READ_ONLY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->HIDDEN:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public m()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->k()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
