.class public Lde/innosystec/unrar/exception/RarException;
.super Ljava/lang/Exception;


# instance fields
.field private type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V
    .locals 1

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/exception/RarException;)V
    .locals 1

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException;->getType()Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->unkownError:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    iput-object v0, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method


# virtual methods
.method public getType()Lde/innosystec/unrar/exception/RarException$RarExceptionType;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-object v0
.end method

.method public setType(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V
    .locals 0

    iput-object p1, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method
