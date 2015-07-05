.class public Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;
.super Lcom/estrongs/android/pop/netfs/NetFsException;


# static fields
.field public static final UNKNOWN_ERROR:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    iput p1, p0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error_code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
