.class public Lcom/flurry/sdk/ie$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/ie;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/ie;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/flurry/sdk/ie$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ie$a$2;-><init>(Lcom/flurry/sdk/ie$a;Ljava/io/InputStream;)V

    new-instance v0, Lcom/flurry/sdk/ie;

    invoke-direct {v0}, Lcom/flurry/sdk/ie;-><init>()V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/ie;->a(Lcom/flurry/sdk/ie;J)J

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/ie;->a(Lcom/flurry/sdk/ie;Z)Z

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-static {v0, v2}, Lcom/flurry/sdk/ie;->a(Lcom/flurry/sdk/ie;[B)[B

    invoke-static {v0}, Lcom/flurry/sdk/ie;->c(Lcom/flurry/sdk/ie;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/ie;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/flurry/sdk/ie$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ie$a$1;-><init>(Lcom/flurry/sdk/ie$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/ie;->a(Lcom/flurry/sdk/ie;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/ie;->b(Lcom/flurry/sdk/ie;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {p2}, Lcom/flurry/sdk/ie;->c(Lcom/flurry/sdk/ie;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/ie;->c(Lcom/flurry/sdk/ie;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/ie;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ie$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ie;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ie$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ie;

    move-result-object v0

    return-object v0
.end method
