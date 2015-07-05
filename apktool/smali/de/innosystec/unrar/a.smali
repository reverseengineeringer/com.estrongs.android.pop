.class public Lde/innosystec/unrar/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Ljava/util/logging/Logger;


# instance fields
.field private b:Ljava/io/File;

.field private c:Lde/innosystec/unrar/b/a;

.field private d:Lde/innosystec/unrar/d;

.field private final e:Lde/innosystec/unrar/unpack/a;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/rarfile/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lde/innosystec/unrar/rarfile/l;

.field private h:Lde/innosystec/unrar/rarfile/k;

.field private i:Lde/innosystec/unrar/rarfile/f;

.field private j:Lde/innosystec/unrar/unpack/b;

.field private k:J

.field private l:I

.field private m:Z

.field private n:I

.field private o:J

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/innosystec/unrar/rarfile/g;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/estrongs/io/a/b;

.field private u:Lde/innosystec/unrar/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lde/innosystec/unrar/c;Lde/innosystec/unrar/d;Z)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    iput-object v1, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iput-object v1, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    iput-object v1, p0, Lde/innosystec/unrar/a;->i:Lde/innosystec/unrar/rarfile/f;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/a;->k:J

    iput-boolean v2, p0, Lde/innosystec/unrar/a;->m:Z

    iput v2, p0, Lde/innosystec/unrar/a;->n:I

    iput-wide v4, p0, Lde/innosystec/unrar/a;->o:J

    iput-wide v4, p0, Lde/innosystec/unrar/a;->p:J

    const-string v0, "GBK"

    iput-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lde/innosystec/unrar/a;->r:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    iput-object p2, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    iput-object p3, p0, Lde/innosystec/unrar/a;->u:Lde/innosystec/unrar/c;

    iput-boolean p5, p0, Lde/innosystec/unrar/a;->r:Z

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/a;->a(Ljava/io/File;)V

    iput-object p4, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/d;

    new-instance v0, Lde/innosystec/unrar/unpack/a;

    invoke-direct {v0, p0}, Lde/innosystec/unrar/unpack/a;-><init>(Lde/innosystec/unrar/a;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    return-void
.end method

.method private b(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    .locals 8

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0, p2}, Lde/innosystec/unrar/unpack/a;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/a;->a(Lde/innosystec/unrar/rarfile/g;)V

    iget-object v4, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {p0}, Lde/innosystec/unrar/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0, v1}, Lde/innosystec/unrar/unpack/a;->a(J)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    if-nez v0, :cond_0

    new-instance v0, Lde/innosystec/unrar/unpack/b;

    iget-object v1, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/b;-><init>(Lde/innosystec/unrar/unpack/a;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/b;->a([B)V

    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->t()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lde/innosystec/unrar/unpack/b;->a(J)V

    :try_start_0
    iget-object v0, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->r()B

    move-result v1

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->w()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lde/innosystec/unrar/unpack/b;->a(IZ)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->t:Lcom/estrongs/io/a/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/innosystec/unrar/a;->t:Lcom/estrongs/io/a/b;

    invoke-interface {v0}, Lcom/estrongs/io/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    return-void

    :cond_3
    move-wide v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/g;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->a()J

    move-result-wide v0

    xor-long/2addr v0, v2

    :goto_1
    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/g;->m()I

    move-result v2

    int-to-long v6, v2

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    new-instance v3, Lde/innosystec/unrar/exception/RarException;

    sget-object v5, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->crcError:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " expectedCRC = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",actualCRC = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lde/innosystec/unrar/a;->j:Lde/innosystec/unrar/unpack/b;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/b;->b()V

    instance-of v1, v0, Lde/innosystec/unrar/exception/RarException;

    if-eqz v1, :cond_6

    check-cast v0, Lde/innosystec/unrar/exception/RarException;

    throw v0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lde/innosystec/unrar/a;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->b()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    xor-long/2addr v0, v2

    goto :goto_1

    :cond_6
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v1, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private l()V
    .locals 12

    const/16 v11, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x7

    iput-object v10, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iput-object v10, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    iput-object v10, p0, Lde/innosystec/unrar/a;->i:Lde/innosystec/unrar/rarfile/f;

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput v3, p0, Lde/innosystec/unrar/a;->l:I

    iget-object v0, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lde/innosystec/unrar/a;->u:Lde/innosystec/unrar/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/innosystec/unrar/a;->u:Lde/innosystec/unrar/c;

    invoke-interface {v0}, Lde/innosystec/unrar/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-array v0, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6}, Lde/innosystec/unrar/b/a;->a()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_1

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v0, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Lde/innosystec/unrar/rarfile/b;

    invoke-direct {v8, v0}, Lde/innosystec/unrar/rarfile/b;-><init>([B)V

    invoke-virtual {v8, v6, v7}, Lde/innosystec/unrar/rarfile/b;->a(J)V

    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->wrongHeaderType:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_3
    sget-object v6, Lde/innosystec/unrar/b;->b:[I

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    new-array v0, v2, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v2}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/c;

    invoke-direct {v6, v8, v0}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    sget-object v0, Lde/innosystec/unrar/b;->b:[I

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    const-string v1, "Unknown Header"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->notRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :pswitch_1
    new-instance v0, Lde/innosystec/unrar/rarfile/l;

    invoke-direct {v0, v8}, Lde/innosystec/unrar/rarfile/l;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iget-object v0, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/l;->l()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->badRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    iget-object v6, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    new-array v6, v0, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/k;

    invoke-direct {v0, v8, v6}, Lde/innosystec/unrar/rarfile/k;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    iget-object v0, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_5
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_3
    new-array v0, v11, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v11}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/o;

    invoke-direct {v6, v8, v0}, Lde/innosystec/unrar/rarfile/o;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/a;

    invoke-direct {v6, v8, v0}, Lde/innosystec/unrar/rarfile/a;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    const/4 v0, 0x6

    new-array v6, v0, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/d;

    invoke-direct {v0, v8, v6}, Lde/innosystec/unrar/rarfile/d;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/d;->e()J

    move-result-wide v6

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/d;->h()S

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_3
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x2

    :cond_6
    if-lez v0, :cond_7

    new-array v1, v0, [B

    iget-object v2, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v2, v1, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/f;

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    :goto_4
    iget-object v1, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lde/innosystec/unrar/a;->i:Lde/innosystec/unrar/rarfile/f;

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lde/innosystec/unrar/rarfile/f;

    invoke-direct {v0, v8, v10}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto :goto_4

    :pswitch_7
    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    new-array v7, v0, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v7, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    iget-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    iput-boolean v3, p0, Lde/innosystec/unrar/a;->r:Z

    :cond_8
    new-instance v0, Lde/innosystec/unrar/rarfile/g;

    invoke-direct {v0, v6, v7, p0}, Lde/innosystec/unrar/rarfile/g;-><init>(Lde/innosystec/unrar/rarfile/c;[BLde/innosystec/unrar/a;)V

    iget-object v6, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->e()J

    move-result-wide v6

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->h()S

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->s()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    new-array v7, v0, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v7, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/n;

    invoke-direct {v0, v6, v7}, Lde/innosystec/unrar/rarfile/n;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/n;->e()J

    move-result-wide v6

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/n;->h()S

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_0

    :pswitch_9
    const/4 v0, 0x3

    new-array v0, v0, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/4 v8, 0x3

    invoke-interface {v7, v0, v8}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v7, Lde/innosystec/unrar/rarfile/p;

    invoke-direct {v7, v6, v0}, Lde/innosystec/unrar/rarfile/p;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->j()V

    sget-object v0, Lde/innosystec/unrar/b;->a:[I

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->n()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v6

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v11, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6, v0, v11}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/j;

    invoke-direct {v6, v7, v0}, Lde/innosystec/unrar/rarfile/j;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/j;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    const/16 v0, 0xa

    new-array v0, v0, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/16 v8, 0xa

    invoke-interface {v6, v0, v8}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/e;

    invoke-direct {v6, v7, v0}, Lde/innosystec/unrar/rarfile/e;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/e;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->h()S

    move-result v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, -0x3

    new-array v6, v0, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v6, v0}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v0, Lde/innosystec/unrar/rarfile/q;

    invoke-direct {v0, v7, v6}, Lde/innosystec/unrar/rarfile/q;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/q;->j()V

    iget-object v6, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private m()V
    .locals 10

    iget-object v0, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v0, 0x0

    new-array v0, v0, [B

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1}, Lde/innosystec/unrar/b/a;->a()J

    move-result-wide v4

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lde/innosystec/unrar/a;->u:Lde/innosystec/unrar/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lde/innosystec/unrar/a;->u:Lde/innosystec/unrar/c;

    invoke-interface {v1}, Lde/innosystec/unrar/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v4, v5}, Lde/innosystec/unrar/b/a;->a(J)V

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x7

    new-array v1, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v6}, Lde/innosystec/unrar/b/a;->a()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/4 v9, 0x7

    invoke-interface {v8, v1, v9}, Lde/innosystec/unrar/b/a;->a([BI)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Lde/innosystec/unrar/rarfile/b;

    invoke-direct {v8, v1}, Lde/innosystec/unrar/rarfile/b;-><init>([B)V

    invoke-virtual {v8, v6, v7}, Lde/innosystec/unrar/rarfile/b;->a(J)V

    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->wrongHeaderType:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_3
    sget-object v6, Lde/innosystec/unrar/b;->b:[I

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/4 v7, 0x4

    invoke-interface {v6, v1, v7}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/c;

    invoke-direct {v6, v8, v1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    sget-object v1, Lde/innosystec/unrar/b;->b:[I

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1

    sget-object v0, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    const-string v1, "Unknown Header"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->notRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :pswitch_1
    new-instance v1, Lde/innosystec/unrar/rarfile/l;

    invoke-direct {v1, v8}, Lde/innosystec/unrar/rarfile/l;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    iput-object v1, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    iget-object v1, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/l;->l()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->badRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :pswitch_2
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    :goto_2
    new-array v6, v1, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/k;

    invoke-direct {v1, v8, v6}, Lde/innosystec/unrar/rarfile/k;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/k;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_4
    const/4 v1, 0x6

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x8

    new-array v6, v1, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/o;

    invoke-direct {v1, v8, v6}, Lde/innosystec/unrar/rarfile/o;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x7

    new-array v6, v1, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/a;

    invoke-direct {v1, v8, v6}, Lde/innosystec/unrar/rarfile/a;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, 0x6

    new-array v6, v1, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v7, v6, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/d;

    invoke-direct {v1, v8, v6}, Lde/innosystec/unrar/rarfile/d;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/d;->e()J

    move-result-wide v6

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/d;->h()S

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    :cond_5
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/b;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x2

    :cond_6
    if-lez v1, :cond_9

    new-array v2, v1, [B

    iget-object v3, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v3, v2, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/f;

    invoke-direct {v1, v8, v2}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    :goto_3
    iget-boolean v1, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v1, :cond_8

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/f;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    :cond_8
    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v4, v5}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_1

    :cond_9
    new-instance v1, Lde/innosystec/unrar/rarfile/f;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lde/innosystec/unrar/rarfile/f;-><init>(Lde/innosystec/unrar/rarfile/b;[B)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    new-array v7, v1, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v7, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/i;

    invoke-direct {v1, v6, v7, p0}, Lde/innosystec/unrar/rarfile/i;-><init>(Lde/innosystec/unrar/rarfile/c;[BLde/innosystec/unrar/a;)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->o()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->q()[B

    move-result-object v6

    invoke-static {v0, v6}, Lcom/estrongs/android/util/f;->a([B[B)[B

    move-result-object v0

    :cond_a
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->e()J

    move-result-wide v6

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->h()S

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/i;->m()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    array-length v1, v0

    const/16 v6, 0x400

    if-lt v1, v6, :cond_0

    iget-boolean v1, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/f;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0, v4, v5}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/c;->h()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    new-array v7, v1, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v7, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/n;

    invoke-direct {v1, v6, v7}, Lde/innosystec/unrar/rarfile/n;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/n;->e()J

    move-result-wide v6

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/n;->h()S

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-object v1, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v1, v6, v7}, Lde/innosystec/unrar/b/a;->a(J)V

    goto/16 :goto_0

    :pswitch_9
    const/4 v1, 0x3

    new-array v1, v1, [B

    iget-object v7, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/4 v8, 0x3

    invoke-interface {v7, v1, v8}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v7, Lde/innosystec/unrar/rarfile/p;

    invoke-direct {v7, v6, v1}, Lde/innosystec/unrar/rarfile/p;-><init>(Lde/innosystec/unrar/rarfile/c;[B)V

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->j()V

    sget-object v1, Lde/innosystec/unrar/b;->a:[I

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->n()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v6

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x8

    new-array v1, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/16 v8, 0x8

    invoke-interface {v6, v1, v8}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/j;

    invoke-direct {v6, v7, v1}, Lde/innosystec/unrar/rarfile/j;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/j;->j()V

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0xa

    new-array v1, v1, [B

    iget-object v6, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    const/16 v8, 0xa

    invoke-interface {v6, v1, v8}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v6, Lde/innosystec/unrar/rarfile/e;

    invoke-direct {v6, v7, v1}, Lde/innosystec/unrar/rarfile/e;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v6}, Lde/innosystec/unrar/rarfile/e;->j()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/p;->h()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, -0x3

    new-array v6, v1, [B

    iget-object v8, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v8, v6, v1}, Lde/innosystec/unrar/b/a;->a([BI)I

    new-instance v1, Lde/innosystec/unrar/rarfile/q;

    invoke-direct {v1, v7, v6}, Lde/innosystec/unrar/rarfile/q;-><init>(Lde/innosystec/unrar/rarfile/p;[B)V

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/q;->j()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public a(I)V
    .locals 6

    if-lez p1, :cond_0

    iget-wide v0, p0, Lde/innosystec/unrar/a;->p:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/a;->p:J

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/d;

    iget-wide v2, p0, Lde/innosystec/unrar/a;->p:J

    iget-wide v4, p0, Lde/innosystec/unrar/a;->o:J

    invoke-interface {v0, v2, v3, v4, v5}, Lde/innosystec/unrar/d;->a(JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/io/a/b;)V
    .locals 0

    iput-object p1, p0, Lde/innosystec/unrar/a;->t:Lcom/estrongs/io/a/b;

    return-void
.end method

.method public a(Lde/innosystec/unrar/d;)V
    .locals 0

    iput-object p1, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/d;

    return-void
.end method

.method public a(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    .locals 4

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lde/innosystec/unrar/exception/RarException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lde/innosystec/unrar/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/g;

    invoke-direct {p0, v0, p2}, Lde/innosystec/unrar/a;->b(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v1, v0, Lde/innosystec/unrar/exception/RarException;

    if-eqz v1, :cond_1

    check-cast v0, Lde/innosystec/unrar/exception/RarException;

    throw v0

    :cond_1
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v1, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method a(Ljava/io/File;)V
    .locals 6

    iput-object p1, p0, Lde/innosystec/unrar/a;->b:Ljava/io/File;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/innosystec/unrar/a;->o:J

    invoke-virtual {p0}, Lde/innosystec/unrar/a;->close()V

    new-instance v0, Lde/innosystec/unrar/b/c;

    invoke-direct {v0, p1}, Lde/innosystec/unrar/b/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    iget-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lde/innosystec/unrar/a;->m()V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lde/innosystec/unrar/a;->l()V
    :try_end_0
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lde/innosystec/unrar/a;->o:J

    check-cast v0, Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->s()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lde/innosystec/unrar/a;->o:J

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lde/innosystec/unrar/a;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "exception in archive constructor maybe file is encrypted or currupt"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/d;

    iget-wide v2, p0, Lde/innosystec/unrar/a;->p:J

    iget-wide v4, p0, Lde/innosystec/unrar/a;->o:J

    invoke-interface {v0, v2, v3, v4, v5}, Lde/innosystec/unrar/d;->a(JJ)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    return-void
.end method

.method public b()Lde/innosystec/unrar/b/a;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    return-object v0
.end method

.method public c()Lde/innosystec/unrar/rarfile/g;
    .locals 4

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    iget v0, p0, Lde/innosystec/unrar/a;->l:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lde/innosystec/unrar/a;->f:Ljava/util/List;

    iget v2, p0, Lde/innosystec/unrar/a;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lde/innosystec/unrar/a;->l:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/b;->i()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_0

    check-cast v0, Lde/innosystec/unrar/rarfile/g;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    invoke-interface {v0}, Lde/innosystec/unrar/b/a;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/a;->c:Lde/innosystec/unrar/b/a;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/a;->l:I

    return-void
.end method

.method public e()Lde/innosystec/unrar/d;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->d:Lde/innosystec/unrar/d;

    return-object v0
.end method

.method public f()Lde/innosystec/unrar/rarfile/k;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->h:Lde/innosystec/unrar/rarfile/k;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->g:Lde/innosystec/unrar/rarfile/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/l;->m()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/innosystec/unrar/a;->p:J

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lde/innosystec/unrar/a;->r:Z

    return v0
.end method

.method public k()Lcom/estrongs/io/a/b;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/a;->t:Lcom/estrongs/io/a/b;

    return-object v0
.end method
