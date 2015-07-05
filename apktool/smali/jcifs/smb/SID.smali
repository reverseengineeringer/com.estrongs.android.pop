.class public Ljcifs/smb/SID;
.super Ljcifs/dcerpc/rpc$sid_t;


# static fields
.field public static CREATOR_OWNER:Ljcifs/smb/SID; = null

.field public static EVERYONE:Ljcifs/smb/SID; = null

.field public static final SID_FLAG_RESOLVE_SIDS:I = 0x1

.field public static final SID_TYPE_ALIAS:I = 0x4

.field public static final SID_TYPE_DELETED:I = 0x6

.field public static final SID_TYPE_DOMAIN:I = 0x3

.field public static final SID_TYPE_DOM_GRP:I = 0x2

.field public static final SID_TYPE_INVALID:I = 0x7

.field static final SID_TYPE_NAMES:[Ljava/lang/String;

.field public static final SID_TYPE_UNKNOWN:I = 0x8

.field public static final SID_TYPE_USER:I = 0x1

.field public static final SID_TYPE_USE_NONE:I = 0x0

.field public static final SID_TYPE_WKN_GRP:I = 0x5

.field public static SYSTEM:Ljcifs/smb/SID;

.field static sid_cache:Ljava/util/Map;


# instance fields
.field acctName:Ljava/lang/String;

.field domainName:Ljava/lang/String;

.field origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field origin_server:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "User"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Domain group"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Domain"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Local group"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Builtin group"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    sput-object v3, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    sput-object v3, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    sput-object v3, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;

    :try_start_0
    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-1-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-3-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-5-18"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v0, "-"

    invoke-direct {v4, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad textual SID format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Ljcifs/smb/SID;->revision:B

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    :goto_0
    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v2, 0x5

    move v8, v2

    move-wide v2, v0

    move v0, v8

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    iget-object v1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const-wide/16 v6, 0x100

    rem-long v6, v2, v6

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    const/16 v1, 0x8

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-lez v0, :cond_4

    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    const/4 v0, 0x0

    :goto_2
    iget-byte v1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    long-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/smb/SID;->revision:B

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iput-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    iget-object v0, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    iget-object v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    iput p2, p0, Ljcifs/smb/SID;->type:I

    iput-object p3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object p4, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    if-eqz p5, :cond_0

    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-object v2, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SID;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-byte v0, p1, Ljcifs/smb/SID;->revision:B

    iput-byte v0, p0, Ljcifs/smb/SID;->revision:B

    iget-object v0, p1, Ljcifs/smb/SID;->identifier_authority:[B

    iput-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    iget-byte v0, p1, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p1, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-object v2, p1, Ljcifs/smb/SID;->sub_authority:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    aput p2, v1, v0

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    iput-byte v2, p0, Ljcifs/smb/SID;->revision:B

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array v1, v3, [B

    iput-object v1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    iget-object v1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x6

    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid SID sub_authority_count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array v2, v2, [I

    iput-object v2, p0, Ljcifs/smb/SID;->sub_authority:[I

    :goto_0
    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljcifs/smb/SID;->sub_authority:[I

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    .locals 13

    const/4 v2, 0x0

    new-instance v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    :try_start_0
    new-instance v8, Ljcifs/dcerpc/msrpc/SamrAliasHandle;

    const v3, 0x2000c

    move/from16 v0, p3

    invoke-direct {v8, p0, p1, v3, v0}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v10, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;

    invoke-direct {v10, v8, v1}, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    invoke-virtual {p0, v10}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v1, v10, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->retval:I

    if-eqz v1, :cond_1

    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, v10, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->retval:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v8

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    :cond_0
    throw v1

    :cond_1
    :try_start_2
    iget-object v1, v10, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget v1, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    new-array v11, v1, [Ljcifs/smb/SID;

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getServer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getPrincipal()Ljava/security/Principal;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljcifs/smb/NtlmPasswordAuthentication;

    move-object v7, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    array-length v1, v11

    if-ge v9, v1, :cond_2

    new-instance v1, Ljcifs/smb/SID;

    iget-object v2, v10, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v2, v2, v9

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v11, v9

    aget-object v1, v11, v9

    iput-object v12, v1, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    aget-object v1, v11, v9

    iput-object v7, v1, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    :cond_2
    array-length v1, v11

    if-lez v1, :cond_3

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    invoke-static {v12, v7, v11}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    :cond_4
    return-object v11

    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method public static getLocalGroupsMap(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)Ljava/util/Map;
    .locals 15

    invoke-static/range {p0 .. p1}, Ljcifs/smb/SID;->getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v1, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    sget-object v8, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ncacn_np:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[\\PIPE\\samr]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v5

    :try_start_1
    new-instance v4, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/high16 v6, 0x2000000

    invoke-direct {v4, v5, p0, v6}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v2, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    const/high16 v6, 0x2000000

    invoke-direct {v2, v5, v4, v6, v7}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v9, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;

    const v3, 0xffff

    invoke-direct {v9, v2, v3, v1}, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V

    invoke-virtual {v5, v9}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v1, v9, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->retval:I

    if-eqz v1, :cond_3

    new-instance v1, Ljcifs/smb/SmbException;

    iget v3, v9, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->retval:I

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_0
    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_1
    invoke-virtual {v4}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_2
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_3
    :try_start_5
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    iget-object v1, v9, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    iget v1, v1, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    if-ge v6, v1, :cond_7

    iget-object v1, v9, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    iget-object v1, v1, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v1, v1, v6

    iget v3, v1, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    move/from16 v0, p2

    invoke-static {v5, v2, v7, v3, v0}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    move-result-object v11

    new-instance v12, Ljcifs/smb/SID;

    iget v3, v1, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-direct {v12, v7, v3}, Ljcifs/smb/SID;-><init>(Ljcifs/smb/SID;I)V

    const/4 v3, 0x4

    iput v3, v12, Ljcifs/smb/SID;->type:I

    invoke-virtual {v7}, Ljcifs/smb/SID;->getDomainName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    iget-object v1, v1, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    const/4 v13, 0x0

    invoke-direct {v3, v1, v13}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    array-length v1, v11

    if-ge v3, v1, :cond_6

    aget-object v1, v11, v3

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aget-object v13, v11, v3

    invoke-interface {v10, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_a

    if-eqz v4, :cond_9

    if-eqz v2, :cond_8

    :try_start_6
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_8
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_9
    invoke-virtual {v5}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_a
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v10

    :catchall_2
    move-exception v1

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    move-object v4, v5

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_0
.end method

.method public static getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;-><init>()V

    sget-object v8, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ncacn_np:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[\\PIPE\\lsarpc]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    :try_start_1
    new-instance v6, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {v6, v7, v0, v2}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;

    const/4 v1, 0x5

    invoke-direct {v0, v6, v1, v3}, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V

    invoke-virtual {v7, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v1, v0, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->retval:I

    if-eqz v1, :cond_2

    new-instance v1, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->retval:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_0
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    :try_start_4
    new-instance v0, Ljcifs/smb/SID;

    iget-object v1, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v2, 0x3

    new-instance v4, Ljcifs/dcerpc/UnicodeString;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v4}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_4

    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_3
    invoke-virtual {v7}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_4
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v2, v7

    goto :goto_0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v4

    move v2, v1

    :goto_0
    :try_start_0
    array-length v0, p2

    if-ge v2, v0, :cond_1

    sget-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v5, p2, v2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SID;

    if-eqz v0, :cond_0

    aget-object v5, p2, v2

    iget v6, v0, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    aget-object v5, p2, v2

    iget-object v6, v0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    aget-object v5, p2, v2

    iget-object v0, v0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    aget-object v0, p2, v2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljcifs/smb/SID;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljcifs/smb/SID;

    check-cast v0, [Ljcifs/smb/SID;

    invoke-static {p0, p1, v0}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v3, v0, v1

    aget-object v5, v0, v1

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v4

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_1

    :try_start_0
    sget-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    add-int v5, p3, v2

    aget-object v5, p2, v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SID;

    if-eqz v0, :cond_0

    add-int v5, p3, v2

    aget-object v5, p2, v5

    iget v6, v0, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    add-int v5, p3, v2

    aget-object v5, p2, v5

    iget-object v6, v0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    add-int v5, p3, v2

    aget-object v5, p2, v5

    iget-object v0, v0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    add-int v0, p3, v2

    aget-object v0, p2, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljcifs/smb/SID;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljcifs/smb/SID;

    check-cast v0, [Ljcifs/smb/SID;

    invoke-static {p0, p1, v0}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v3, v0, v1

    aget-object v5, v0, v1

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;

    invoke-direct {v2, p1, p2}, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v0, v2, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->retval:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljcifs/smb/SmbException;

    iget v2, v2, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->retval:I

    invoke-direct {v0, v2, v1}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :sswitch_0
    move v0, v1

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    aget-object v3, p2, v0

    iget-object v4, v2, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v4, v4, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v4, v4, v0

    iget-short v4, v4, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    iput v4, v3, Ljcifs/smb/SID;->type:I

    aget-object v3, p2, v0

    iput-object v6, v3, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    aget-object v3, p2, v0

    iget v3, v3, Ljcifs/smb/SID;->type:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    aget-object v3, p2, v0

    new-instance v4, Ljcifs/dcerpc/UnicodeString;

    iget-object v5, v2, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v5, v5, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v5, v5, v0

    iget-object v5, v5, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v4, v5, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v4}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    aget-object v3, p2, v0

    iput-object v6, v3, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    aget-object v3, p2, v0

    iput-object v6, v3, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v3, v2, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v3, v3, v0

    iget v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    iget-object v4, v2, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    iget-object v4, v4, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v3, v4, v3

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    aget-object v4, p2, v0

    new-instance v5, Ljcifs/dcerpc/UnicodeString;

    invoke-direct {v5, v3, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v5}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fffff8d -> :sswitch_0
        0x0 -> :sswitch_0
        0x107 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ncacn_np:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[\\PIPE\\lsarpc]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    const/16 v0, 0x2e

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v2, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\\\"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x800

    invoke-direct {v2, v3, v0, v5}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v3, v2, p2}, Ljcifs/smb/SID;->resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_1
    invoke-virtual {v3}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_3
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0
.end method

.method public static toByteArray(Ljcifs/dcerpc/rpc$sid_t;)[B
    .locals 5

    const/4 v0, 0x0

    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    new-array v2, v1, [B

    const/4 v1, 0x1

    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    aput-byte v3, v2, v0

    const/4 v3, 0x2

    iget-byte v4, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    aput-byte v4, v2, v1

    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v4, 0x6

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    :goto_0
    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v3, v3, v0

    invoke-static {v3, v2, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljcifs/smb/SID;

    if-eqz v2, :cond_0

    check-cast p1, Ljcifs/smb/SID;

    if-ne p1, p0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-byte v2, p1, Ljcifs/smb/SID;->sub_authority_count:B

    iget-byte v3, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ne v2, v3, :cond_0

    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2

    iget-object v2, p1, Ljcifs/smb/SID;->sub_authority:[I

    aget v2, v2, v3

    iget-object v4, p0, Ljcifs/smb/SID;->sub_authority:[I

    aget v4, v4, v3

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    iget-object v3, p1, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v4, v4, v2

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-byte v2, p1, Ljcifs/smb/SID;->revision:B

    iget-byte v3, p0, Ljcifs/smb/SID;->revision:B

    if-ne v2, v3, :cond_4

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljcifs/smb/SID;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDomainSid()Ljcifs/smb/SID;
    .locals 6

    const/4 v2, 0x3

    new-instance v0, Ljcifs/smb/SID;

    iget-object v3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getGroupMemberSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)[Ljcifs/smb/SID;
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljcifs/smb/SID;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SID;->getDomainSid()Ljcifs/smb/SID;

    move-result-object v0

    sget-object v5, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ncacn_np:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[\\PIPE\\samr]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    :try_start_1
    new-instance v3, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/16 v1, 0x30

    invoke-direct {v3, v4, p1, v1}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v1, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    const/16 v6, 0x200

    invoke-direct {v1, v4, v3, v6, v0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {p0}, Ljcifs/smb/SID;->getRid()I

    move-result v2

    invoke-static {v4, v1, v0, v2, p3}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_1
    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_2
    invoke-virtual {v4}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_4
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_5
    invoke-virtual {v3}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_1
.end method

.method public getRid()I
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This SID is a domain sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-byte v1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    return v0
.end method

.method public getTypeText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    sget-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    iget v1, p0, Ljcifs/smb/SID;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    const/4 v0, 0x0

    :goto_0
    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v0, v2, :cond_0

    const v2, 0x1003f

    iget-object v3, p0, Ljcifs/smb/SID;->sub_authority:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljcifs/smb/SID;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    return-void
.end method

.method resolveWeak()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SID;->resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    throw v0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    const-string v1, "BUILTIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    const-wide/16 v2, 0x0

    const/4 v12, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v4, p0, Ljcifs/smb/SID;->revision:B

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v0, v0, v12

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_1
    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SID;->sub_authority:[I

    aget v2, v2, v0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    move-wide v4, v2

    :goto_2
    if-le v0, v12, :cond_2

    iget-object v7, p0, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v7, v7, v0

    int-to-long v8, v7

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v7, v4

    shl-long/2addr v8, v7

    add-long/2addr v2, v8

    const-wide/16 v8, 0x8

    add-long/2addr v4, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v1
.end method
