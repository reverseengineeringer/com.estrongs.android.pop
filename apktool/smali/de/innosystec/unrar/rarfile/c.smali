.class public Lde/innosystec/unrar/rarfile/c;
.super Lde/innosystec/unrar/rarfile/b;


# instance fields
.field private g:Lorg/apache/commons/logging/Log;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lde/innosystec/unrar/rarfile/b;-><init>()V

    const-class v0, Lde/innosystec/unrar/rarfile/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/c;->g:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/b;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/b;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    const-class v0, Lde/innosystec/unrar/rarfile/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/c;->g:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/c;->i:I

    iget v0, p0, Lde/innosystec/unrar/rarfile/c;->i:I

    iput v0, p0, Lde/innosystec/unrar/rarfile/c;->h:I

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/c;)V
    .locals 2

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/b;-><init>(Lde/innosystec/unrar/rarfile/b;)V

    const-class v0, Lde/innosystec/unrar/rarfile/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/c;->g:Lorg/apache/commons/logging/Log;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/c;->k()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/c;->i:I

    iget v0, p0, Lde/innosystec/unrar/rarfile/c;->i:I

    iput v0, p0, Lde/innosystec/unrar/rarfile/c;->h:I

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/c;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lde/innosystec/unrar/rarfile/c;->b:J

    return-void
.end method


# virtual methods
.method public j()V
    .locals 2

    invoke-super {p0}, Lde/innosystec/unrar/rarfile/b;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/c;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/c;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/innosystec/unrar/rarfile/c;->g:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/rarfile/c;->h:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/rarfile/c;->i:I

    return v0
.end method
