.class Lcom/jcraft/jsch/RequestPtyReq;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[B


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->a:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->b:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->c:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->d:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->e:I

    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->f:[B

    return-void
.end method


# virtual methods
.method a(IIII)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->b:I

    iput p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->c:I

    iput p3, p0, Lcom/jcraft/jsch/RequestPtyReq;->d:I

    iput p4, p0, Lcom/jcraft/jsch/RequestPtyReq;->e:I

    return-void
.end method

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

    const-string v0, "pty-req"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestPtyReq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->b:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->c:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->d:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->e:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->f:[B

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/RequestPtyReq;->a(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->a:Ljava/lang/String;

    return-void
.end method

.method a([B)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->f:[B

    return-void
.end method
