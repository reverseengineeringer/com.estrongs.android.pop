.class public final enum Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

.field public static final enum ADB_ERROR_ES_AUTH_FAILED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

.field public static final enum ADB_ERROR_ES_NEED_UPDATE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

.field public static final enum ADB_ERROR_ES_NOT_INSTALLED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

.field public static final enum ADB_ERROR_NONE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    const-string v1, "ADB_ERROR_NONE"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_NONE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    const-string v1, "ADB_ERROR_ES_NOT_INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_NOT_INSTALLED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    const-string v1, "ADB_ERROR_ES_NEED_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_NEED_UPDATE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    const-string v1, "ADB_ERROR_ES_AUTH_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_AUTH_FAILED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    sget-object v1, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_NONE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_NOT_INSTALLED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_NEED_UPDATE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_AUTH_FAILED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->$VALUES:[Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->$VALUES:[Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    invoke-virtual {v0}, [Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    return-object v0
.end method
