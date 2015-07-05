.class public Lde/innosystec/unrar/rarfile/i;
.super Lde/innosystec/unrar/rarfile/c;


# instance fields
.field private g:Lorg/apache/commons/logging/Log;

.field private h:I

.field private i:Lde/innosystec/unrar/rarfile/HostSystem;

.field private j:I

.field private k:I

.field private l:B

.field private m:B

.field private n:S

.field private o:I

.field private p:I

.field private q:[B

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:[B

.field private u:J

.field private v:J

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/c;[BLde/innosystec/unrar/a;)V
    .locals 9

    const/16 v1, 0x1000

    const/16 v8, 0x20

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/c;)V

    const-class v0, Lde/innosystec/unrar/rarfile/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/i;->g:Lorg/apache/commons/logging/Log;

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/i;->t:[B

    iput v4, p0, Lde/innosystec/unrar/rarfile/i;->x:I

    invoke-static {p2, v2}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/i;->h:I

    const/4 v0, 0x4

    aget-byte v0, p2, v0

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/HostSystem;->findHostSystem(B)Lde/innosystec/unrar/rarfile/HostSystem;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/i;->i:Lde/innosystec/unrar/rarfile/HostSystem;

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/i;->j:I

    const/16 v0, 0x9

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/i;->k:I

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/i;->l:B

    const/16 v3, 0xd

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/i;->l:B

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/i;->m:B

    const/16 v3, 0xe

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/i;->m:B

    const/16 v0, 0xf

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/i;->n:S

    const/16 v0, 0x11

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/i;->w:I

    const/16 v0, 0x15

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/i;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/i;->o:I

    const/16 v0, 0x19

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/i;->p:I

    const/16 v0, 0x1d

    :cond_0
    :goto_0
    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->u:J

    iget v3, p0, Lde/innosystec/unrar/rarfile/i;->o:I

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->u:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->u:J

    shl-long/2addr v4, v8

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->u:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->u:J

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/i;->l()I

    move-result v3

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->u:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->v:J

    iget v3, p0, Lde/innosystec/unrar/rarfile/i;->p:I

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->v:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->v:J

    shl-long/2addr v4, v8

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->v:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->v:J

    iget v3, p0, Lde/innosystec/unrar/rarfile/i;->h:I

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/i;->v:J

    iget-short v3, p0, Lde/innosystec/unrar/rarfile/i;->n:S

    if-le v3, v1, :cond_2

    :goto_1
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/i;->n:S

    iget-short v1, p0, Lde/innosystec/unrar/rarfile/i;->n:S

    new-array v1, v1, [B

    iput-object v1, p0, Lde/innosystec/unrar/rarfile/i;->q:[B

    move v1, v0

    move v0, v2

    :goto_2
    iget-short v3, p0, Lde/innosystec/unrar/rarfile/i;->n:S

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/i;->q:[B

    aget-byte v4, p2, v1

    aput-byte v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iput v2, p0, Lde/innosystec/unrar/rarfile/i;->o:I

    iput v2, p0, Lde/innosystec/unrar/rarfile/i;->p:I

    iget v3, p0, Lde/innosystec/unrar/rarfile/i;->h:I

    if-ne v3, v4, :cond_0

    iput v4, p0, Lde/innosystec/unrar/rarfile/i;->h:I

    const v3, 0x7fffffff

    iput v3, p0, Lde/innosystec/unrar/rarfile/i;->p:I

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lde/innosystec/unrar/rarfile/i;->n:S

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/i;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/i;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/i;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/i;->s:Ljava/lang/String;

    move v0, v2

    :goto_3
    iget-object v1, p0, Lde/innosystec/unrar/rarfile/i;->q:[B

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lde/innosystec/unrar/rarfile/i;->q:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-array v0, v0, [B

    iget-object v1, p0, Lde/innosystec/unrar/rarfile/i;->q:[B

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/i;->q:[B

    :cond_5
    return-void
.end method


# virtual methods
.method public m()J
    .locals 2

    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/i;->u:J

    return-wide v0
.end method

.method public n()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/i;->e:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/i;->d:B

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/i;->e:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()[B
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/i;->q:[B

    return-object v0
.end method
