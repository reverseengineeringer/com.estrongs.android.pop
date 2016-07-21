.class public Lcom/estrongs/fs/impl/local/l;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Operation not permitted"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "No such file or directory"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "No such process"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Interrupted system call"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "I/O error"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "No such device or address"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "Argument list too long"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "Exec format error"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "Bad file number"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "No child processes"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "Try again"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "Out of memory"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "Permission denied"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "Bad address"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "Block device required"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "Device or resource busy"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "File exists"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "Cross-device link"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "No such device"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "Not a directory"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "Is a directory"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "Invalid argument"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "File table overflow"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "Too many open files"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "Not a typewriter"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "Text file busy"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "File too large"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x1c

    const-string v2, "No space left on device"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x1d

    const-string v2, "Illegal seek"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "Read-only file system"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "Too many links"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "Broken pipe"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "Math argument out of domain of func"

    aput-object v2, v0, v1

    sget-object v0, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "Math result not representable"

    aput-object v2, v0, v1

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/estrongs/fs/impl/local/l;->a:[Ljava/lang/String;

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
