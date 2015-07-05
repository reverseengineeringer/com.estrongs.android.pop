.class public Lcom/estrongs/fs/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/util/k;


# instance fields
.field a:Ljava/security/MessageDigest;

.field b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/util/l;->a:Ljava/security/MessageDigest;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/l;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/util/l;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/util/l;->b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/util/l;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/util/l;->b:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/util/l;->b:[B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/util/l;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
