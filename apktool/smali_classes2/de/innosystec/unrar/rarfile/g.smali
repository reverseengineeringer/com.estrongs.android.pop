.class public Lde/innosystec/unrar/rarfile/g;
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

.field private u:[B

.field private v:Ljava/util/Date;

.field private w:J

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/c;[BLde/innosystec/unrar/a;)V
    .locals 11

    const/16 v10, 0x20

    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/c;)V

    const-class v0, Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->g:Lorg/apache/commons/logging/Log;

    new-array v0, v8, [B

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->u:[B

    iput v3, p0, Lde/innosystec/unrar/rarfile/g;->z:I

    invoke-static {p2, v2}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    const/4 v0, 0x4

    aget-byte v0, p2, v0

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/HostSystem;->findHostSystem(B)Lde/innosystec/unrar/rarfile/HostSystem;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->i:Lde/innosystec/unrar/rarfile/HostSystem;

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->j:I

    invoke-static {p2, v9}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->k:I

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->l:B

    const/16 v1, 0xd

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->l:B

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->m:B

    const/16 v1, 0xe

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->m:B

    const/16 v0, 0xf

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    const/16 v0, 0x11

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->y:I

    const/16 v0, 0x15

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->o:I

    const/16 v0, 0x19

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    const/16 v0, 0x1d

    :cond_0
    :goto_0
    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->o:I

    int-to-long v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    shl-long/2addr v4, v10

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->l()I

    move-result v1

    int-to-long v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    int-to-long v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    shl-long/2addr v4, v10

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    int-to-long v6, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    const/16 v3, 0x1000

    if-le v1, v3, :cond_2

    const/16 v1, 0x1000

    :goto_1
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    iget-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    new-array v1, v1, [B

    iput-object v1, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    move v1, v0

    move v0, v2

    :goto_2
    iget-short v3, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    aget-byte v4, p2, v1

    aput-byte v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iput v2, p0, Lde/innosystec/unrar/rarfile/g;->o:I

    iput v2, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    if-ne v1, v3, :cond_0

    iput v3, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    const v1, 0x7fffffff

    iput v1, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    move v0, v2

    :goto_3
    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-array v3, v0, [B

    iget-object v4, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    array-length v5, v3

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    invoke-virtual {p3}, Lde/innosystec/unrar/a;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/estrongs/android/util/e;->a([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p3, v4}, Lde/innosystec/unrar/a;->a(Ljava/lang/String;)V

    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Lde/innosystec/unrar/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-short v3, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    if-eq v0, v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-static {v3, v0}, Lde/innosystec/unrar/rarfile/h;->b([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    :cond_6
    :goto_5
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    const-string v3, "\\?"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    :cond_7
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v3, p0, Lde/innosystec/unrar/rarfile/g;->d:B

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->f:S

    add-int/lit8 v0, v0, -0x20

    iget-short v3, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->A()Z

    move-result v3

    if-eqz v3, :cond_e

    add-int/lit8 v0, v0, -0x8

    move v3, v0

    :goto_6
    if-lez v3, :cond_b

    new-array v0, v3, [B

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    move v0, v2

    :goto_7
    if-ge v0, v3, :cond_b

    iget-object v4, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    aget-byte v5, p2, v1

    aput-byte v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    goto :goto_5

    :cond_9
    :try_start_1
    invoke-virtual {p3}, Lde/innosystec/unrar/a;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    array-length v3, v3

    invoke-static {v0, v3}, Lcom/estrongs/android/util/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p3, v0}, Lde/innosystec/unrar/a;->a(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-virtual {p3}, Lde/innosystec/unrar/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    goto :goto_8

    :cond_b
    sget-object v0, Lde/innosystec/unrar/rarfile/m;->f:Lde/innosystec/unrar/rarfile/m;

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/rarfile/m;->a([B)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    aget-byte v0, v0, v8

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    aget-byte v3, v3, v9

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v0, v3

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v0, v3

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->z:I

    :cond_c
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->A()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_9
    if-ge v2, v8, :cond_d

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->u:[B

    aget-byte v3, p2, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    iget v0, p0, Lde/innosystec/unrar/rarfile/g;->k:I

    invoke-direct {p0, v0}, Lde/innosystec/unrar/rarfile/g;->a(I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->v:Ljava/util/Date;

    return-void

    :cond_e
    move v3, v0

    goto/16 :goto_6
.end method

.method private a(I)Ljava/util/Date;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x19

    add-int/lit16 v2, v2, 0x7bc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    ushr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    ushr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    and-int/lit8 v2, p1, 0x1f

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Z
    .locals 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 4

    invoke-super {p0}, Lde/innosystec/unrar/rarfile/c;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHostOS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/g;->i:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/HostSystem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/g;->v:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->p()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->r()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfullpackedsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfullunpackedsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->t()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisEncrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->x()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisfileHeader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->z()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSolid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->w()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSplitafter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->u()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSplitBefore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->v()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nunpSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndataSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisUnicode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasVolumeNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasArchiveDataCRC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasSalt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->A()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nhasEncryptVersions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSubBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/rarfile/g;->g:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/rarfile/g;->j:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    return-object v0
.end method

.method public p()B
    .locals 1

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->m:B

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    return v0
.end method

.method public r()B
    .locals 1

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->l:B

    return v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    return-wide v0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 2

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/g;->d:B

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    return v0
.end method
