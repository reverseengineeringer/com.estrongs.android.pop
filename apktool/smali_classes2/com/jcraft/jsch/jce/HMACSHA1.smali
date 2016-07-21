.class public Lcom/jcraft/jsch/jce/HMACSHA1;
.super Lcom/jcraft/jsch/jce/HMAC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const-string v0, "hmac-sha1"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA1;->a:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lcom/jcraft/jsch/jce/HMACSHA1;->b:I

    const-string v0, "HmacSHA1"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMAC;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->a(I)V

    return-void
.end method

.method public bridge synthetic a([B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->a([B)V

    return-void
.end method

.method public bridge synthetic a([BI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/HMAC;->a([BI)V

    return-void
.end method

.method public bridge synthetic a([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/HMAC;->a([BII)V

    return-void
.end method
