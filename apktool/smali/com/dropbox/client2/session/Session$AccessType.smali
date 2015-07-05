.class public final enum Lcom/dropbox/client2/session/Session$AccessType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/client2/session/Session$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_FOLDER:Lcom/dropbox/client2/session/Session$AccessType;

.field public static final enum AUTO:Lcom/dropbox/client2/session/Session$AccessType;

.field public static final enum DROPBOX:Lcom/dropbox/client2/session/Session$AccessType;

.field private static final synthetic ENUM$VALUES:[Lcom/dropbox/client2/session/Session$AccessType;


# instance fields
.field private final urlPart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dropbox/client2/session/Session$AccessType;

    const-string v1, "DROPBOX"

    const-string v2, "dropbox"

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/client2/session/Session$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/session/Session$AccessType;->DROPBOX:Lcom/dropbox/client2/session/Session$AccessType;

    new-instance v0, Lcom/dropbox/client2/session/Session$AccessType;

    const-string v1, "APP_FOLDER"

    const-string v2, "sandbox"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/client2/session/Session$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/session/Session$AccessType;->APP_FOLDER:Lcom/dropbox/client2/session/Session$AccessType;

    new-instance v0, Lcom/dropbox/client2/session/Session$AccessType;

    const-string v1, "AUTO"

    const-string v2, "auto"

    invoke-direct {v0, v1, v5, v2}, Lcom/dropbox/client2/session/Session$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/session/Session$AccessType;->AUTO:Lcom/dropbox/client2/session/Session$AccessType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/client2/session/Session$AccessType;

    sget-object v1, Lcom/dropbox/client2/session/Session$AccessType;->DROPBOX:Lcom/dropbox/client2/session/Session$AccessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/client2/session/Session$AccessType;->APP_FOLDER:Lcom/dropbox/client2/session/Session$AccessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/client2/session/Session$AccessType;->AUTO:Lcom/dropbox/client2/session/Session$AccessType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/client2/session/Session$AccessType;->ENUM$VALUES:[Lcom/dropbox/client2/session/Session$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dropbox/client2/session/Session$AccessType;->urlPart:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/client2/session/Session$AccessType;
    .locals 1

    const-class v0, Lcom/dropbox/client2/session/Session$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/session/Session$AccessType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/client2/session/Session$AccessType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/dropbox/client2/session/Session$AccessType;->ENUM$VALUES:[Lcom/dropbox/client2/session/Session$AccessType;

    array-length v1, v0

    new-array v2, v1, [Lcom/dropbox/client2/session/Session$AccessType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/session/Session$AccessType;->urlPart:Ljava/lang/String;

    return-object v0
.end method
