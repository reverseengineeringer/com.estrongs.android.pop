.class public final enum Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

.field public static final enum NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

.field public static final enum NETFS_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

.field public static final enum NETFS_ERROR_NOT_INSTALLED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

.field public static final enum NETFS_ERROR_NOT_LOADED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

.field public static final enum NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

.field public static final enum NETFS_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

.field public static final enum NETFS_ERROR_TOKEN_EXPIRE:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const-string v1, "NETFS_ERROR_NOT_INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_INSTALLED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const-string v1, "NETFS_ERROR_NOT_LOADED"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOADED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const-string v1, "NETFS_ERROR_MALFORMED_URL"

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const-string v1, "NETFS_ERROR_NOT_LOG_IN"

    invoke-direct {v0, v1, v6}, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const-string v1, "NETFS_ERROR_AUTH_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const-string v1, "NETFS_ERROR_TOKEN_EXPIRE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_TOKEN_EXPIRE:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const-string v1, "NETFS_ERROR_OPERATION_NOT_SUPPORT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_INSTALLED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOADED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_TOKEN_EXPIRE:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->ENUM$VALUES:[Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->ENUM$VALUES:[Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
