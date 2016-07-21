.class public Lcom/flurry/sdk/kw$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/kw;",
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
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/kw;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/flurry/sdk/kw$a$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/kw$a$2;-><init>(Lcom/flurry/sdk/kw$a;Ljava/io/InputStream;)V

    new-instance v1, Lcom/flurry/sdk/kw;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/kw;-><init>(Lcom/flurry/sdk/kw$1;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kw;->a(Lcom/flurry/sdk/kw;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/kw;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/flurry/sdk/kw$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kw$a$1;-><init>(Lcom/flurry/sdk/kw$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/kw;->a(Lcom/flurry/sdk/kw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/kw;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/kw$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/kw;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kw$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/kw;

    move-result-object v0

    return-object v0
.end method
