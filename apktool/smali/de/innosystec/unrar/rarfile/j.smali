.class public Lde/innosystec/unrar/rarfile/j;
.super Lde/innosystec/unrar/rarfile/p;


# instance fields
.field private g:Lorg/apache/commons/logging/Log;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/p;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/p;-><init>(Lde/innosystec/unrar/rarfile/p;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/j;->g:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/j;->h:I

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/j;->i:I

    return-void
.end method


# virtual methods
.method public j()V
    .locals 3

    invoke-super {p0}, Lde/innosystec/unrar/rarfile/p;->j()V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/j;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filetype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/innosystec/unrar/rarfile/j;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/j;->g:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creator :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/innosystec/unrar/rarfile/j;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method
