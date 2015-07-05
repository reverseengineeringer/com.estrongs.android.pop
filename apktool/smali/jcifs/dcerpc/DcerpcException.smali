.class public Ljcifs/dcerpc/DcerpcException;
.super Ljava/io/IOException;

# interfaces
.implements Ljcifs/dcerpc/DcerpcError;
.implements Ljcifs/smb/WinError;


# instance fields
.field private error:I

.field private rootCause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Ljcifs/dcerpc/DcerpcException;->getMessageByDcerpcError(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Ljcifs/dcerpc/DcerpcException;->error:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method static getMessageByDcerpcError(I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Ljcifs/dcerpc/DcerpcException;->DCERPC_FAULT_CODES:[I

    array-length v0, v0

    :goto_0
    if-lt v0, v1, :cond_2

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Ljcifs/dcerpc/DcerpcException;->DCERPC_FAULT_CODES:[I

    aget v3, v3, v2

    if-le p0, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljcifs/dcerpc/DcerpcException;->DCERPC_FAULT_CODES:[I

    aget v0, v0, v2

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ljcifs/dcerpc/DcerpcException;->DCERPC_FAULT_MESSAGES:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Ljcifs/dcerpc/DcerpcException;->error:I

    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
