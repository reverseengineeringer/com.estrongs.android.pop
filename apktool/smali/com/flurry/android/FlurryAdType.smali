.class public final enum Lcom/flurry/android/FlurryAdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/FlurryAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum VIDEO_TAKEOVER:Lcom/flurry/android/FlurryAdType;

.field public static final enum WEB_BANNER:Lcom/flurry/android/FlurryAdType;

.field public static final enum WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;

.field private static final synthetic a:[Lcom/flurry/android/FlurryAdType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/android/FlurryAdType;

    const-string v1, "WEB_BANNER"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/FlurryAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    new-instance v0, Lcom/flurry/android/FlurryAdType;

    const-string v1, "WEB_TAKEOVER"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/FlurryAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    new-instance v0, Lcom/flurry/android/FlurryAdType;

    const-string v1, "VIDEO_TAKEOVER"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/FlurryAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryAdType;->VIDEO_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/FlurryAdType;

    sget-object v1, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/FlurryAdType;->VIDEO_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/FlurryAdType;->a:[Lcom/flurry/android/FlurryAdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/FlurryAdType;
    .locals 1

    const-class v0, Lcom/flurry/android/FlurryAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdType;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/FlurryAdType;
    .locals 1

    sget-object v0, Lcom/flurry/android/FlurryAdType;->a:[Lcom/flurry/android/FlurryAdType;

    invoke-virtual {v0}, [Lcom/flurry/android/FlurryAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/FlurryAdType;

    return-object v0
.end method
