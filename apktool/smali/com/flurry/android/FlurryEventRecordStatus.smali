.class public final enum Lcom/flurry/android/FlurryEventRecordStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/FlurryEventRecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventFailed"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventRecorded"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventUniqueCountExceeded"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventParamsCountExceeded"

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventLogCountExceeded"

    invoke-direct {v0, v1, v7}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventLoggingDelayed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventAnalyticsDisabled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/android/FlurryEventRecordStatus;

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->a:[Lcom/flurry/android/FlurryEventRecordStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const-class v0, Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryEventRecordStatus;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->a:[Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-virtual {v0}, [Lcom/flurry/android/FlurryEventRecordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/FlurryEventRecordStatus;

    return-object v0
.end method
