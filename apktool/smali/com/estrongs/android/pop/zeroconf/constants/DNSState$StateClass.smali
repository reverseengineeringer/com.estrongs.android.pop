.class final enum Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

.field public static final enum announced:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

.field public static final enum announcing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

.field public static final enum canceled:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

.field public static final enum canceling:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

.field public static final enum closed:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

.field public static final enum closing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

.field public static final enum probing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const-string v1, "probing"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->probing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const-string v1, "announcing"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announcing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const-string v1, "announced"

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announced:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const-string v1, "canceling"

    invoke-direct {v0, v1, v6}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceling:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const-string v1, "canceled"

    invoke-direct {v0, v1, v7}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceled:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const-string v1, "closing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const-string v1, "closed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closed:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->probing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announcing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announced:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceling:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceled:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closed:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

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

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    return-object v0
.end method
