.class public Lcom/flurry/sdk/ip$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/ip;",
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
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/ip;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/flurry/sdk/ip$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ip$a$2;-><init>(Lcom/flurry/sdk/ip$a;Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/flurry/sdk/ip;

    invoke-direct {v0}, Lcom/flurry/sdk/ip;-><init>()V

    new-array v2, v2, [B

    invoke-static {v0, v2}, Lcom/flurry/sdk/ip;->a(Lcom/flurry/sdk/ip;[B)[B

    invoke-static {v0}, Lcom/flurry/sdk/ip;->a(Lcom/flurry/sdk/ip;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/ip;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/flurry/sdk/ip$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ip$a$1;-><init>(Lcom/flurry/sdk/ip$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/ip;->a(Lcom/flurry/sdk/ip;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p2}, Lcom/flurry/sdk/ip;->a(Lcom/flurry/sdk/ip;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/ip;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ip$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ip;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ip$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ip;

    move-result-object v0

    return-object v0
.end method
