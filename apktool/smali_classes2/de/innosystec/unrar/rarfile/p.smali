.class public Lde/innosystec/unrar/rarfile/p;
.super Lde/innosystec/unrar/rarfile/c;


# instance fields
.field private g:Lorg/apache/commons/logging/Log;

.field private h:S

.field private i:B


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/c;[B)V
    .locals 2

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/c;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/p;->g:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/p;->h:S

    const/4 v0, 0x2

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/p;->i:B

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/p;->i:B

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/p;)V
    .locals 1

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/c;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/p;->g:Lorg/apache/commons/logging/Log;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/p;->n()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->getSubblocktype()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/p;->h:S

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/p;->m()B

    move-result v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/p;->i:B

    return-void
.end method


# virtual methods
.method public j()V
    .locals 3

    invoke-super {p0}, Lde/innosystec/unrar/rarfile/c;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/p;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/p;->n()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/p;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/p;->i:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public m()B
    .locals 1

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/p;->i:B

    return v0
.end method

.method public n()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;
    .locals 1

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/p;->h:S

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->findSubblockHeaderType(S)Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    return-object v0
.end method
