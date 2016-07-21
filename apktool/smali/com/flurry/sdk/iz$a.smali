.class public Lcom/flurry/sdk/iz$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/iz;",
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
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/iz;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/flurry/sdk/iz$a$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/iz$a$2;-><init>(Lcom/flurry/sdk/iz$a;Ljava/io/InputStream;)V

    new-instance v1, Lcom/flurry/sdk/iz;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/iz;-><init>(Lcom/flurry/sdk/iz$1;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_1

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iput-object v0, v1, Lcom/flurry/sdk/iz;->a:[B

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/iz;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/flurry/sdk/iz$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/iz$a$1;-><init>(Lcom/flurry/sdk/iz$a;Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iget-object v2, p2, Lcom/flurry/sdk/iz;->a:[B

    if-eqz v2, :cond_2

    iget-object v0, p2, Lcom/flurry/sdk/iz;->a:[B

    array-length v0, v0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-lez v0, :cond_3

    iget-object v0, p2, Lcom/flurry/sdk/iz;->a:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/iz;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/iz$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/iz;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/iz$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/iz;

    move-result-object v0

    return-object v0
.end method
