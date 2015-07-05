.class public Ljcifs/smb/SmbFile;
.super Ljava/net/URLConnection;

# interfaces
.implements Ljcifs/smb/SmbConstants;


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field static final ATTR_GET_MASK:I = 0x7fff

.field public static final ATTR_HIDDEN:I = 0x2

.field static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field static final ATTR_SET_MASK:I = 0x30a7

.field public static final ATTR_SYSTEM:I = 0x4

.field static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

.field static final DEFAULT_ATTR_EXPIRATION_PERIOD:I = 0x1388

.field public static final FILE_NO_SHARE:I = 0x0

.field public static final FILE_SHARE_DELETE:I = 0x4

.field public static final FILE_SHARE_READ:I = 0x1

.field public static final FILE_SHARE_WRITE:I = 0x2

.field static final HASH_DOT:I

.field static final HASH_DOT_DOT:I

.field static final O_APPEND:I = 0x4

.field static final O_CREAT:I = 0x10

.field static final O_EXCL:I = 0x20

.field static final O_RDONLY:I = 0x1

.field static final O_RDWR:I = 0x3

.field static final O_TRUNC:I = 0x40

.field static final O_WRONLY:I = 0x2

.field public static final TYPE_COMM:I = 0x40

.field public static final TYPE_FILESYSTEM:I = 0x1

.field public static final TYPE_NAMED_PIPE:I = 0x10

.field public static final TYPE_PRINTER:I = 0x20

.field public static final TYPE_SERVER:I = 0x4

.field public static final TYPE_SHARE:I = 0x8

.field public static final TYPE_WORKGROUP:I = 0x2

.field static attrExpirationPeriod:J

.field protected static dfs:Ljcifs/smb/Dfs;

.field static ignoreCopyToException:Z

.field static log:Ljcifs/util/LogStream;


# instance fields
.field addressIndex:I

.field addresses:[Ljcifs/UniAddress;

.field private attrExpiration:J

.field private attributes:I

.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field private blank_resp:Ljcifs/smb/SmbComBlankResponse;

.field private canon:Ljava/lang/String;

.field private createTime:J

.field private dfsReferral:Ljcifs/smb/DfsReferral;

.field fid:I

.field private isExists:Z

.field private lastModified:J

.field opened:Z

.field private share:Ljava/lang/String;

.field private shareAccess:I

.field private size:J

.field private sizeExpiration:J

.field tree:Ljcifs/smb/SmbTree;

.field tree_num:I

.field type:I

.field unc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "."

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ljcifs/smb/SmbFile;->HASH_DOT:I

    const-string v0, ".."

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    :try_start_0
    const-string v0, "jcifs.Config"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "jcifs.smb.client.attrExpirationPeriod"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    const-string v0, "jcifs.smb.client.ignoreCopyToException"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    new-instance v0, Ljcifs/smb/Dfs;

    invoke-direct {v0}, Ljcifs/smb/Dfs;-><init>()V

    sput-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 4

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .locals 4

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 v0, p4, -0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal shareAccess parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 3

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .locals 3

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 v0, p3, -0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal shareAccess parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    iput v0, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    iput-object v1, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-nez p2, :cond_0

    new-instance p2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    iget-object v1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 v0, p3, -0x8

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal shareAccess parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0

    :cond_1
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void
.end method

.method constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V
    .locals 5

    const/16 v4, 0x5c

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    iget-object v0, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, p1, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    :goto_1
    iput p3, p0, Ljcifs/smb/SmbFile;->type:I

    iput p4, p0, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide p5, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide p7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    iput-wide p9, p0, Ljcifs/smb/SmbFile;->size:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    :cond_2
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v0, p4, 0x10

    if-lez v0, :cond_3

    const-string v0, "/"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    iget-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_1
.end method

.method private blank_resp()Ljcifs/smb/SmbComBlankResponse;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    return-object v0
.end method

.method private processAces([Ljcifs/smb/ACE;Z)V
    .locals 6

    const/16 v2, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2

    array-length v0, p1

    new-array v4, v0, [Ljcifs/smb/SID;

    move v0, v1

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    aget-object v5, p1, v0

    iget-object v5, v5, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_3

    array-length v0, v4

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v3, v5, v4, v1, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_1

    :cond_2
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_3

    aget-object v0, p1, v1

    iget-object v0, v0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iput-object v3, v0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    aget-object v0, p1, v1

    iget-object v0, v0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v2, v0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private queryFSInformation(I)J
    .locals 6

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, p1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v1, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v1}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->size:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    :cond_0
    iget-object v0, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v0}, Ljcifs/smb/AllocInfo;->getFree()J

    move-result-wide v0

    return-wide v0
.end method

.method static queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-char v4, v3, v2

    const/16 v5, 0x26

    if-ne v4, v5, :cond_2

    if-le v0, v1, :cond_0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v0, v1

    invoke-direct {v4, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-instance v0, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    move v0, v2

    goto :goto_2

    :cond_3
    if-le v0, v1, :cond_4

    new-instance v2, Ljava/lang/String;

    sub-int v4, v0, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public canWrite()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method close()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->close(J)V

    return-void
.end method

.method close(IJ)V
    .locals 4

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljcifs/smb/SmbComClose;

    invoke-direct {v0, p1, p2, p3}, Ljcifs/smb/SmbComClose;-><init>(IJ)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void
.end method

.method close(J)V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbFile;->close(IJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    goto :goto_0
.end method

.method public connect()V
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v1

    if-nez v1, :cond_2

    throw v0

    :cond_2
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1
.end method

.method connect0()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public copyTo(Ljcifs/smb/SmbFile;)V
    .locals 14

    const-wide/16 v8, 0x0

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups or servers"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v7, Ljcifs/smb/SmbComReadAndX;

    invoke-direct {v7}, Ljcifs/smb/SmbComReadAndX;-><init>()V

    new-instance v6, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v6}, Ljcifs/smb/SmbComReadAndXResponse;-><init>()V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    invoke-virtual {p0, v11}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v10, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Source and destination paths overlap."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_2
    new-instance v4, Ljcifs/smb/SmbFile$WriterThread;

    invoke-direct {v4, p0}, Ljcifs/smb/SmbFile$WriterThread;-><init>(Ljcifs/smb/SmbFile;)V

    invoke-virtual {v4, v13}, Ljcifs/smb/SmbFile$WriterThread;->setDaemon(Z)V

    invoke-virtual {v4}, Ljcifs/smb/SmbFile$WriterThread;->start()V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v2, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget v3, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    if-ge v2, v3, :cond_3

    iget v2, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v2, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    :goto_0
    iget v1, v0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v1, v1, -0x46

    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v0, v0, -0x46

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x2

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    move-object v0, p0

    move-object v1, p1

    move-object v5, v7

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    return-void

    :cond_3
    iget v1, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v1, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v11

    move v6, v12

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    throw v0
.end method

.method copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/16 v4, 0x11

    move-object/from16 v0, p0

    iput v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->createTime:J

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->lastModified:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x101

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v4

    invoke-interface {v4}, Ljcifs/smb/Info;->getAttributes()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v4}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v4}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->lastModified:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->mkdir()V

    move-object/from16 v0, p0

    iget v5, v0, Ljcifs/smb/SmbFile;->attributes:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljcifs/smb/SmbFile;->createTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljcifs/smb/SmbFile;->lastModified:J

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v4, "*"

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v17

    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_0
    :try_start_1
    move-object/from16 v0, v17

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    new-instance v5, Ljcifs/smb/SmbFile;

    aget-object v4, v17, v16

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v7

    aget-object v4, v17, v16

    iget v8, v4, Ljcifs/smb/SmbFile;->type:I

    aget-object v4, v17, v16

    iget v9, v4, Ljcifs/smb/SmbFile;->attributes:I

    aget-object v4, v17, v16

    iget-wide v10, v4, Ljcifs/smb/SmbFile;->createTime:J

    aget-object v4, v17, v16

    iget-wide v12, v4, Ljcifs/smb/SmbFile;->lastModified:J

    aget-object v4, v17, v16

    iget-wide v14, v4, Ljcifs/smb/SmbFile;->size:J

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v15}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    aget-object v4, v17, v16

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v5

    const v6, -0x3fffffde    # -2.000008f

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v5

    const v6, -0x3fffffcb    # -2.0000126f

    if-eq v5, v6, :cond_1

    throw v4

    :catch_1
    move-exception v4

    new-instance v5, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v4

    new-instance v5, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x80

    const/4 v7, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_2
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x52

    const/16 v5, 0x102

    :try_start_3
    move-object/from16 v0, p0

    iget v6, v0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_3
    .catch Ljcifs/smb/SmbAuthException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljcifs/smb/SmbException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    move v10, v4

    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget v4, v0, Ljcifs/smb/SmbFile;->fid:I

    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v4, v8, v9, v1}, Ljcifs/smb/SmbComReadAndX;->setParam(IJI)V

    aget-object v4, p2, v10

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbComReadAndXResponse;->setParam([BI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    monitor-enter p4
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v4, :cond_4

    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljcifs/smb/SmbException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_3
    move-exception v4

    :try_start_7
    sget-boolean v5, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    if-nez v5, :cond_a

    new-instance v5, Ljcifs/smb/SmbException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to copy file from ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    throw v4

    :catch_4
    move-exception v4

    :try_start_8
    move-object/from16 v0, p1

    iget v5, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v5, v4, -0x2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    const/16 v4, 0x52

    const/16 v5, 0x102

    move-object/from16 v0, p0

    iget v6, v0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljcifs/smb/SmbFile;->open(IIII)V

    goto/16 :goto_1

    :cond_3
    throw v4
    :try_end_8
    .catch Ljcifs/smb/SmbException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    :goto_3
    :try_start_9
    move-object/from16 v0, p4

    iget-boolean v4, v0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v4, :cond_5

    :try_start_a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_5
    move-exception v4

    :try_start_b
    new-instance v5, Ljcifs/smb/SmbException;

    move-object/from16 v0, p1

    iget-object v6, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_5
    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v4, :cond_6

    move-object/from16 v0, p4

    iget-object v4, v0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v4

    :cond_6
    move-object/from16 v0, p6

    iget v4, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v4, :cond_8

    monitor-exit p4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    new-instance v5, Ljcifs/smb/Trans2SetFileInformation;

    move-object/from16 v0, p1

    iget v6, v0, Ljcifs/smb/SmbFile;->fid:I

    move-object/from16 v0, p0

    iget v7, v0, Ljcifs/smb/SmbFile;->attributes:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljcifs/smb/SmbFile;->createTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljcifs/smb/SmbFile;->lastModified:J

    invoke-direct/range {v5 .. v11}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v4, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v4}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljcifs/smb/SmbFile;->close(J)V
    :try_end_c
    .catch Ljcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    :cond_7
    :goto_4
    return-void

    :cond_8
    :try_start_d
    aget-object v5, p2, v10

    move-object/from16 v0, p6

    iget v6, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    move-object/from16 v4, p4

    move-object/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    monitor-exit p4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v4, 0x1

    if-ne v10, v4, :cond_9

    const/4 v4, 0x0

    :goto_5
    :try_start_e
    move-object/from16 v0, p6

    iget v5, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I
    :try_end_e
    .catch Ljcifs/smb/SmbException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    int-to-long v6, v5

    add-long/2addr v8, v6

    move v10, v4

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    :try_start_f
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v4, v5}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    goto :goto_4
.end method

.method public createNewFile()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x33

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljcifs/smb/SmbFile;->close(IJ)V

    return-void
.end method

.method public createTime()J
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public delete()V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->delete(Ljava/lang/String;)V

    return-void
.end method

.method delete(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v8, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/16 v1, 0x11

    iput v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide v6, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v6, p0, Ljcifs/smb/SmbFile;->lastModified:J

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x101

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v1

    invoke-interface {v1}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v1}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v1}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->lastModified:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-boolean v8, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :cond_1
    iget v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->setReadWrite()V

    :cond_2
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    :try_start_0
    const-string v1, "*"

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v2, -0x3ffffff1    # -2.0000036f

    if-eq v1, v2, :cond_4

    throw v0

    :cond_4
    new-instance v0, Ljcifs/smb/SmbComDeleteDirectory;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDeleteDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_1
    iput-wide v6, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v6, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    :cond_5
    new-instance v0, Ljcifs/smb/SmbComDelete;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_1
.end method

.method doConnect()V
    .locals 11

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v4

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v7, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v7, v7, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v8, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v5, v7, v9, v8}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, v6, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v1, v1, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput v10, v1, Ljcifs/smb/SmbTree;->connectionState:I

    :cond_0
    :try_start_0
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x3

    if-lt v1, v6, :cond_1

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doConnect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-static {v4, v0}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v1

    iget-object v5, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v1, v5, v9}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v4, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v4, :cond_4

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v9, v9}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljcifs/smb/NtlmAuthenticator;->requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v4

    if-eqz v4, :cond_7

    iput-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v4, v4, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v5, v4, v9, v6}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_3
    iput-boolean v2, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v0, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput v10, v0, Ljcifs/smb/SmbTree;->connectionState:I

    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v9, v9}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v2, :cond_8

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->hasNextAddress()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljcifs/smb/SmbAuthException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8
    throw v1
.end method

.method doDfsRootEnum()[Ljcifs/smb/FileEntry;
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ncacn_np:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[\\PIPE\\netdfs]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v2, v0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->retval:I

    if-eqz v2, :cond_1

    new-instance v2, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->retval:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->getEntries()[Ljcifs/smb/FileEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_2

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_0

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 7

    if-eqz p6, :cond_4

    instance-of v0, p6, Ljcifs/smb/DosFileFilter;

    if-eqz v0, :cond_4

    move-object v0, p6

    check-cast v0, Ljcifs/smb/DosFileFilter;

    iget-object v1, v0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p3, v0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    :cond_0
    iget p4, v0, Ljcifs/smb/DosFileFilter;->attributes:I

    move v4, p4

    move-object v3, p3

    :goto_0
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move v4, p4

    move-object v3, p3

    goto :goto_0
.end method

.method doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_0

    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory must end with \'/\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v3, Ljcifs/smb/Trans2FindFirst2;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v3, v2, v0, v1}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {v14}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFindFirstNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Ljcifs/smb/SmbComTransaction;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v15, v14, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    new-instance v16, Ljcifs/smb/Trans2FindNext2;

    iget v2, v14, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v3, v14, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v2, v3}, Ljcifs/smb/Trans2FindNext2;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    iput-byte v2, v14, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget v3, v14, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    if-ge v2, v3, :cond_8

    iget-object v3, v14, Ljcifs/smb/Trans2FindFirst2Response;->results:[Ljcifs/smb/FileEntry;

    aget-object v4, v3, v2

    invoke-interface {v4}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-ge v3, v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    sget v6, Ljcifs/smb/SmbFile;->HASH_DOT:I

    if-eq v3, v6, :cond_2

    sget v6, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    if-ne v3, v6, :cond_4

    :cond_2
    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".."

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljcifs/smb/SmbFile;

    const/4 v6, 0x1

    invoke-interface {v4}, Ljcifs/smb/FileEntry;->getAttributes()I

    move-result v7

    invoke-interface {v4}, Ljcifs/smb/FileEntry;->createTime()J

    move-result-wide v8

    invoke-interface {v4}, Ljcifs/smb/FileEntry;->lastModified()J

    move-result-wide v10

    invoke-interface {v4}, Ljcifs/smb/FileEntry;->length()J

    move-result-wide v12

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_6

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-boolean v2, v14, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    if-nez v2, :cond_9

    iget v2, v14, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    if-nez v2, :cond_b

    :cond_9
    :try_start_0
    new-instance v2, Ljcifs/smb/SmbComFindClose2;

    invoke-direct {v2, v15}, Ljcifs/smb/SmbComFindClose2;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    return-void

    :cond_b
    iget v2, v14, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v3, v14, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljcifs/smb/SmbComTransaction;->reset(ILjava/lang/String;)V

    invoke-virtual {v14}, Ljcifs/smb/Trans2FindFirst2Response;->reset()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_a

    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_3
.end method

.method doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ncacn_np:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[\\PIPE\\srvsvc]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v1, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v2, v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->retval:I

    if-eqz v2, :cond_1

    new-instance v2, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->retval:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->getEntries()[Ljcifs/smb/FileEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_2

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_0

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    new-instance v2, Ljcifs/smb/NetServerEnum2;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v3, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v3, v3, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v3, v3, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v3, v3, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v4, -0x80000000

    invoke-direct {v2, v3, v4}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v14}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    move-object v15, v2

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v2, v14, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eqz v2, :cond_4

    iget v2, v14, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v3, 0xea

    if-eq v2, v3, :cond_4

    new-instance v2, Ljcifs/smb/SmbException;

    iget v3, v14, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v2, Ljcifs/smb/NetServerEnum2;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v14}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    move-object v15, v2

    goto :goto_1

    :cond_3
    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested list operations is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget v2, v14, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v3, 0xea

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    move/from16 v17, v2

    :goto_2
    if-eqz v17, :cond_7

    iget v2, v14, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_4
    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    iget-object v3, v14, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v4, v3, v16

    invoke-interface {v4}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_8

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    :goto_5
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_2

    :cond_7
    iget v2, v14, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-interface {v4}, Ljcifs/smb/FileEntry;->getType()I

    move-result v6

    const/16 v7, 0x11

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_9

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_9
    if-eqz p2, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    :goto_6
    return-void

    :cond_c
    const/16 v2, -0x29

    iput-byte v2, v15, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/4 v3, 0x0

    move-object v2, v14

    check-cast v2, Ljcifs/smb/NetServerEnum2Response;

    iget-object v2, v2, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v15, v3, v2}, Ljcifs/smb/SmbComTransaction;->reset(ILjava/lang/String;)V

    invoke-virtual {v14}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    if-nez v17, :cond_0

    goto :goto_6
.end method

.method doNetShareEnum()[Ljcifs/smb/FileEntry;
    .locals 3

    new-instance v0, Ljcifs/smb/NetShareEnum;

    invoke-direct {v0}, Ljcifs/smb/NetShareEnum;-><init>()V

    new-instance v1, Ljcifs/smb/NetShareEnumResponse;

    invoke-direct {v1}, Ljcifs/smb/NetShareEnumResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eqz v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :cond_0
    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    return-object v0
.end method

.method doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v4, v2, :cond_0

    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory must end with \'/\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested list operations is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v4, v6}, Ljcifs/smb/Dfs;->isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doDfsRootEnum()[Ljcifs/smb/FileEntry;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_3

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_3

    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v2

    move-object v15, v2

    move-object v2, v3

    move-object v3, v15

    :goto_1
    if-eqz v3, :cond_7

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    :goto_3
    :try_start_3
    array-length v6, v3

    if-ge v4, v6, :cond_7

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_1
    move-exception v3

    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x3

    if-lt v4, v6, :cond_5

    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doNetShareEnum()[Ljcifs/smb/FileEntry;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6

    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, v2, Ljcifs/smb/SmbException;

    if-nez v3, :cond_8

    new-instance v3, Ljcifs/smb/SmbException;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_8
    check-cast v2, Ljcifs/smb/SmbException;

    throw v2

    :cond_9
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/smb/FileEntry;

    invoke-interface {v2}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_b

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-interface {v2}, Ljcifs/smb/FileEntry;->getType()I

    move-result v6

    const/16 v7, 0x11

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_c

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_c
    if-eqz p2, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljcifs/smb/SmbFile;

    if-eqz v0, :cond_1

    check-cast p1, Ljcifs/smb/SmbFile;

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide v6, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v6, p0, Ljcifs/smb/SmbFile;->lastModified:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x3ffffff1 -> :sswitch_0
        -0x3fffffcd -> :sswitch_0
        -0x3fffffcc -> :sswitch_0
        -0x3fffffc6 -> :sswitch_0
    .end sparse-switch
.end method

.method getAddress()Ljcifs/UniAddress;
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getAttributes()I
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit16 v0, v0, 0x7fff

    goto :goto_0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "smb://"

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDate()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDfsPath()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x2f

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb:/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDiskFreeSpace()J
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v0, 0x3ef

    :try_start_0
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    throw v0

    :pswitch_1
    invoke-direct {p0, v2}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3fffffff
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getFirstAddress()Ljcifs/UniAddress;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput v6, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "server"

    invoke-static {v2, v3}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-array v0, v5, [Ljcifs/UniAddress;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-static {v3}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "address"

    invoke-static {v2, v3}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    new-array v2, v5, [Ljcifs/UniAddress;

    iput-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    new-instance v3, Ljcifs/UniAddress;

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v3, v0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v6

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    const-string v0, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljcifs/UniAddress;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    throw v0

    :cond_2
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-static {v0, v5}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {v0, v5}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_1

    :cond_5
    invoke-static {v0, v6}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2f

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "smb://"

    goto :goto_1
.end method

.method getNextAddress()Ljcifs/UniAddress;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    aget-object v0, v0, v1

    :cond_0
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2f

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "smb://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const-string v0, "smb://"

    goto :goto_2
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    return-object v0
.end method

.method public getSecurity()[Ljcifs/smb/ACE;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->getSecurity(Z)[Ljcifs/smb/ACE;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity(Z)[Ljcifs/smb/ACE;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x20000

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v3, v2, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    new-instance v1, Ljcifs/smb/NtTransQuerySecurityDesc;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Ljcifs/smb/NtTransQuerySecurityDesc;-><init>(II)V

    new-instance v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;

    invoke-direct {v2}, Ljcifs/smb/NtTransQuerySecurityDescResponse;-><init>()V

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, v4, v5}, Ljcifs/smb/SmbFile;->close(IJ)V

    iget-object v0, v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    iget-object v0, v0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V

    :cond_0
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0, v4, v5}, Ljcifs/smb/SmbFile;->close(IJ)V

    throw v1
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method getServerWithDfs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSecurity(Z)[Ljcifs/smb/ACE;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ncacn_np:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[\\PIPE\\srvsvc]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v0, v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->retval:I

    if-eqz v0, :cond_1

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->retval:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->getSecurity()[Ljcifs/smb/ACE;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_3

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_0

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public getType()I
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    :cond_0
    :goto_0
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "LPT1:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x40

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljcifs/netbios/NbtAddress;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_9

    :cond_8
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto/16 :goto_0
.end method

.method public getUncPath()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getUncPath0()Ljava/lang/String;
    .locals 13

    const/4 v5, 0x0

    const/16 v12, 0x2e

    const/4 v6, 0x0

    const/16 v11, 0x2f

    const/4 v1, 0x1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v0, v7

    new-array v8, v0, [C

    array-length v9, v7

    move v0, v6

    move v2, v6

    move v4, v6

    :goto_0
    if-ge v4, v9, :cond_9

    packed-switch v0, :pswitch_data_0

    move v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :pswitch_0
    aget-char v0, v7, v4

    if-eq v0, v11, :cond_1

    move-object v0, v5

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    aget-char v3, v7, v4

    aput-char v3, v8, v2

    move v2, v0

    move v3, v4

    move v0, v1

    goto :goto_1

    :pswitch_1
    aget-char v3, v7, v4

    if-ne v3, v11, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    aget-char v3, v7, v4

    if-ne v3, v12, :cond_4

    add-int/lit8 v3, v4, 0x1

    if-ge v3, v9, :cond_3

    add-int/lit8 v3, v4, 0x1

    aget-char v3, v7, v3

    if-ne v3, v11, :cond_4

    :cond_3
    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v4, 0x1

    if-ge v3, v9, :cond_7

    aget-char v3, v7, v4

    if-ne v3, v12, :cond_7

    add-int/lit8 v3, v4, 0x1

    aget-char v3, v7, v3

    if-ne v3, v12, :cond_7

    add-int/lit8 v3, v4, 0x2

    if-ge v3, v9, :cond_5

    add-int/lit8 v3, v4, 0x2

    aget-char v3, v7, v3

    if-ne v3, v11, :cond_7

    :cond_5
    add-int/lit8 v3, v4, 0x2

    if-eq v2, v1, :cond_0

    :cond_6
    add-int/lit8 v2, v2, -0x1

    if-le v2, v1, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v8, v4

    if-ne v4, v11, :cond_6

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    :pswitch_2
    aget-char v3, v7, v4

    if-ne v3, v11, :cond_8

    move v0, v1

    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-char v10, v7, v4

    aput-char v10, v8, v2

    move v2, v3

    move v3, v4

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v6, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    if-le v2, v1, :cond_e

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_b

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    :cond_a
    :goto_3
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_2

    :cond_b
    if-ne v2, v0, :cond_c

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    aget-char v3, v8, v0

    if-ne v3, v11, :cond_d

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/16 v1, 0x5c

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    iput-object v5, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method hasNextAddress()Z
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->hashCode()I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v0, v0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isFile()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isHidden()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method isOpen()Z
    .locals 2

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljcifs/smb/SmbFile;->tree_num:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v1, v1, Ljcifs/smb/SmbTree;->tree_num:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWorkgroup0()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x2

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljcifs/netbios/NbtAddress;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_3

    :cond_2
    iput v3, p0, Ljcifs/smb/SmbFile;->type:I

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 5

    const/4 v4, 0x1

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, v4}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, v4}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v0}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_1
.end method

.method public list()[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "*"

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public list(Ljcifs/smb/SmbFilenameFilter;)[Ljava/lang/String;
    .locals 3

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listFiles()[Ljcifs/smb/SmbFile;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "*"

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Ljcifs/smb/SmbFile;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0, v1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljcifs/smb/SmbFile;

    check-cast v0, [Ljcifs/smb/SmbFile;

    return-object v0
.end method

.method public listFiles(Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .locals 3

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljcifs/smb/SmbFilenameFilter;)[Ljcifs/smb/SmbFile;
    .locals 3

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()V
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljcifs/smb/SmbComCreateDirectory;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbComCreateDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method public mkdirs()V
    .locals 3

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->mkdirs()V

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->mkdir()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method open(IIII)V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbFile;->fid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v0, v0, Ljcifs/smb/SmbTree;->tree_num:I

    iput v0, p0, Ljcifs/smb/SmbFile;->tree_num:I

    goto :goto_0
.end method

.method open0(IIII)I
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v8, Ljcifs/smb/SmbComNTCreateAndXResponse;

    invoke-direct {v8}, Ljcifs/smb/SmbComNTCreateAndXResponse;-><init>()V

    new-instance v0, Ljcifs/smb/SmbComNTCreateAndX;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Ljcifs/smb/SmbComNTCreateAndX;-><init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V

    instance-of v1, p0, Ljcifs/smb/SmbNamedPipe;

    if-eqz v1, :cond_1

    iget v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    or-int/lit8 v1, v1, 0x16

    iput v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    iget v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    iput-boolean v9, v8, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    :cond_1
    invoke-virtual {p0, v0, v8}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v8, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    iget v1, v8, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-boolean v9, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :goto_0
    return v0

    :cond_2
    new-instance v0, Ljcifs/smb/SmbComOpenAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComOpenAndXResponse;-><init>()V

    new-instance v1, Ljcifs/smb/SmbComOpenAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p1, v7}, Ljcifs/smb/SmbComOpenAndX;-><init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v0, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    goto :goto_0
.end method

.method protected pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/16 v0, 0x2f

    const/16 v6, 0x2e

    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    if-le v5, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_0

    :cond_2
    if-ne v5, v0, :cond_3

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;
    .locals 6

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct {v0, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryPathInformation;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/Trans2QueryPathInformation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljcifs/smb/SmbComQueryInformationResponse;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljcifs/smb/SmbComQueryInformationResponse;-><init>(J)V

    new-instance v1, Ljcifs/smb/SmbComQueryInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/SmbComQueryInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0
.end method

.method public renameTo(Ljcifs/smb/SmbFile;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v2}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p1, v2}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTree;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_3
    iput-wide v4, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-wide v4, p1, Ljcifs/smb/SmbFile;->attrExpiration:J

    new-instance v0, Ljcifs/smb/SmbComRename;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbComRename;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void
.end method

.method resolveDfs(Ljcifs/smb/ServerMessageBlock;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    instance-of v0, p1, Ljcifs/smb/SmbComClose;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v3, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v4, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1, v3, v4, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz p1, :cond_f

    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v0, :sswitch_data_0

    const-string v0, "A:"

    move-object v1, v0

    :goto_1
    move-object v4, v5

    :goto_2
    :try_start_0
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DFS redirect: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-static {v0, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/smb/SmbTransport;->connect()V

    iget-object v3, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v3}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    iget-object v3, v4, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eq v4, v5, :cond_3

    iget-object v0, v4, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v4, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    iget-object v3, v4, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v1, v4

    :goto_3
    if-eqz v2, :cond_5

    throw v2

    :sswitch_0
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    iget-byte v0, v0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    const-string v0, "A:"

    move-object v1, v0

    goto :goto_1

    :pswitch_0
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    instance-of v3, v0, Ljcifs/smb/SmbException;

    if-eqz v3, :cond_4

    check-cast v0, Ljcifs/smb/SmbException;

    :goto_4
    iget-object v3, v4, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v3, v5, :cond_e

    move-object v2, v0

    move-object v1, v3

    goto :goto_3

    :cond_4
    new-instance v3, Ljcifs/smb/SmbException;

    iget-object v6, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-direct {v3, v6, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_4

    :cond_5
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_6

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    :cond_6
    iput-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget v0, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    if-gez v0, :cond_b

    iput v7, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    :cond_7
    :goto_5
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "\\"

    :cond_8
    iget-object v2, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz p1, :cond_0

    iput-object v0, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    goto/16 :goto_0

    :cond_b
    iget v0, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_7

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    goto :goto_5

    :cond_c
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v0, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v0, :cond_d

    instance-of v0, p1, Ljcifs/smb/NtTransQuerySecurityDesc;

    if-nez v0, :cond_d

    instance-of v0, p1, Ljcifs/smb/SmbComClose;

    if-nez v0, :cond_d

    instance-of v0, p1, Ljcifs/smb/SmbComFindClose2;

    if-nez v0, :cond_d

    new-instance v0, Ljcifs/smb/SmbException;

    const v1, -0x3ffffddb    # -2.000131f

    invoke-direct {v0, v1, v7}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :cond_d
    if-eqz p1, :cond_0

    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    goto/16 :goto_0

    :cond_e
    move-object v4, v3

    goto/16 :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 2

    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/DfsReferral; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    if-eqz v1, :cond_0

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljcifs/smb/ServerMessageBlock;->reset()V

    goto :goto_0
.end method

.method public setAttributes(I)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v1, p1, 0x30a7

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void
.end method

.method public setCreateTime(J)V
    .locals 7

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void
.end method

.method public setLastModified(J)V
    .locals 7

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void
.end method

.method setPathInformation(IJJ)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v3, v0, 0x10

    const/16 v2, 0x100

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v2

    new-instance v1, Ljcifs/smb/Trans2SetFileInformation;

    or-int/2addr v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v0, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v0}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0, v2, v8, v9}, Ljcifs/smb/SmbFile;->close(IJ)V

    iput-wide v8, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method public setReadOnly()V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public setReadWrite()V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    return-object v0
.end method
