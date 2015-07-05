.class public Lcom/jcraft/jsch/DHGEX256;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static a:I

.field static b:I

.field static c:I


# instance fields
.field private A:[B

.field private B:[B

.field d:Lcom/jcraft/jsch/DH;

.field e:[B

.field f:[B

.field g:[B

.field h:[B

.field private v:I

.field private w:I

.field private x:Lcom/jcraft/jsch/Buffer;

.field private y:Lcom/jcraft/jsch/Packet;

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    sput v0, Lcom/jcraft/jsch/DHGEX256;->a:I

    sput v0, Lcom/jcraft/jsch/DHGEX256;->b:I

    sput v0, Lcom/jcraft/jsch/DHGEX256;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/DHGEX256;->v:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/DHGEX256;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DSA"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RSA"

    goto :goto_0
.end method

.method public a(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX256;->q:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX256;->e:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX256;->f:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX256;->g:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX256;->h:[B

    :try_start_0
    const-string v0, "sha-256"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->r:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->r:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->y:Lcom/jcraft/jsch/Packet;

    :try_start_1
    const-string v0, "dh"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/DH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->d:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->d:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX256;->a:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX256;->b:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    sget v1, Lcom/jcraft/jsch/DHGEX256;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/jcraft/jsch/DHGEX256;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/jcraft/jsch/DHGEX256;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/jcraft/jsch/DHGEX256;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/jcraft/jsch/DHGEX256;->w:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public a(Lcom/jcraft/jsch/Buffer;)Z
    .locals 12

    const/high16 v10, 0xff0000

    const v9, 0xff00

    const/high16 v8, -0x1000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/jcraft/jsch/DHGEX256;->w:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v0

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->z:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->A:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->d:Lcom/jcraft/jsch/DH;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->z:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->d:Lcom/jcraft/jsch/DH;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->A:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->d:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->B:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->B:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->q:Lcom/jcraft/jsch/Session;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX256;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_1
    const/16 v0, 0x21

    iput v0, p0, Lcom/jcraft/jsch/DHGEX256;->w:I

    move v1, v2

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v0

    const/16 v3, 0x21

    if-eq v0, v3, :cond_2

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v4

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->d:Lcom/jcraft/jsch/DH;

    invoke-interface {v3, v0}, Lcom/jcraft/jsch/DH;->c([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->d:Lcom/jcraft/jsch/DH;

    invoke-interface {v3}, Lcom/jcraft/jsch/DH;->c()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/DHGEX256;->a([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->s:[B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->f:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->e:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->h:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->g:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    sget v5, Lcom/jcraft/jsch/DHGEX256;->a:I

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    sget v5, Lcom/jcraft/jsch/DHGEX256;->b:I

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    sget v5, Lcom/jcraft/jsch/DHGEX256;->c:I

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->z:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->A:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->B:[B

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->s:[B

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->r:Lcom/jcraft/jsch/HASH;

    array-length v5, v0

    invoke-interface {v3, v0, v1, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->r:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->t:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    const/4 v5, 0x2

    aget-byte v3, v3, v2

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v10

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    const/4 v6, 0x3

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    const/4 v5, 0x4

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-static {v3, v5, v0}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x4

    const-string v5, "ssh-rsa"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v1, p0, Lcom/jcraft/jsch/DHGEX256;->v:I

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v10

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v5, v6, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    new-array v5, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-static {v3, v6, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v10

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v3, v3, v7

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    new-array v6, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-static {v3, v7, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->q:Lcom/jcraft/jsch/Session;

    const-string v7, "signature.rsa"

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    invoke-interface {v0, v5, v6}, Lcom/jcraft/jsch/SignatureRSA;->a([B[B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->t:[B

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/SignatureRSA;->a([B)V

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/SignatureRSA;->b([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ssh_rsa_verify: signature "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_3
    :goto_2
    iput v1, p0, Lcom/jcraft/jsch/DHGEX256;->w:I

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v3

    move-object v3, v11

    :goto_3
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v5, "ssh-dss"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput v2, p0, Lcom/jcraft/jsch/DHGEX256;->v:I

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v10

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v5, v6, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    new-array v3, v0, [B

    iget-object v5, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-static {v5, v6, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    iput-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->z:[B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v10

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v5, v6, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    new-array v5, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-static {v3, v6, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v10

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v3, v3, v7

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    new-array v3, v0, [B

    iget-object v6, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-static {v6, v7, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    iput-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->A:[B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v10

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v3, v3, v7

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v9

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    new-array v6, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->u:[B

    invoke-static {v3, v7, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    const/4 v3, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX256;->q:Lcom/jcraft/jsch/Session;

    const-string v7, "signature.dss"

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->z:[B

    iget-object v7, p0, Lcom/jcraft/jsch/DHGEX256;->A:[B

    invoke-interface {v0, v6, v3, v5, v7}, Lcom/jcraft/jsch/SignatureDSA;->a([B[B[B[B)V

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX256;->t:[B

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/SignatureDSA;->a([B)V

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/SignatureDSA;->b([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ssh_dss_verify: signature "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v3

    move-object v3, v11

    :goto_5
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "unknown alg"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    :catch_2
    move-exception v3

    goto :goto_5

    :catch_3
    move-exception v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHGEX256;->w:I

    return v0
.end method
