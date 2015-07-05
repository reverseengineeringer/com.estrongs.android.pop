.class public Lcom/estrongs/fs/FsProviderNotFoundException;
.super Lcom/estrongs/fs/FileSystemException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private flagInstallOrUpdate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File system provider not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/estrongs/fs/FsProviderNotFoundException;->flagInstallOrUpdate:I

    return-void
.end method


# virtual methods
.method public getFlagInstallOrUpdate()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/FsProviderNotFoundException;->flagInstallOrUpdate:I

    return v0
.end method

.method public setFlagInstallOrUpdate(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/FsProviderNotFoundException;->flagInstallOrUpdate:I

    return-void
.end method
