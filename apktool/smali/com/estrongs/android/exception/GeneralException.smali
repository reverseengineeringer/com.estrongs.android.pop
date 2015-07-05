.class public Lcom/estrongs/android/exception/GeneralException;
.super Lcom/estrongs/fs/FileSystemException;


# instance fields
.field public errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/FileSystemException;-><init>()V

    sget-object v0, Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;->ERROR_NONE:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/android/exception/GeneralException;->errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/FileSystemException;-><init>()V

    sget-object v0, Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;->ERROR_NONE:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/android/exception/GeneralException;->errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    iput-object p1, p0, Lcom/estrongs/android/exception/GeneralException;->errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;->ERROR_NONE:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/android/exception/GeneralException;->errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    iput-object p2, p0, Lcom/estrongs/android/exception/GeneralException;->errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;->ERROR_NONE:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/android/exception/GeneralException;->errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;->ERROR_NONE:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/android/exception/GeneralException;->errorCode:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    return-void
.end method
