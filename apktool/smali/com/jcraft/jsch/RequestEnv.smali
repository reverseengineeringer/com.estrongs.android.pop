.class Lcom/jcraft/jsch/RequestEnv;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field a:[B

.field b:[B


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->a:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->b:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x62

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const-string v0, "env"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestEnv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->a:[B

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->b:[B

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/RequestEnv;->a(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a([B[B)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/RequestEnv;->a:[B

    iput-object p2, p0, Lcom/jcraft/jsch/RequestEnv;->b:[B

    return-void
.end method
