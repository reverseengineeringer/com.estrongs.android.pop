.class public final enum Lcom/estrongs/android/pop/zeroconf/constants/DNSState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/android/pop/zeroconf/constants/DNSState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum ANNOUNCED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum ANNOUNCING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum ANNOUNCING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum CANCELED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum CANCELING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum CANCELING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum CANCELING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum CLOSED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum CLOSING:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum PROBING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum PROBING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

.field public static final enum PROBING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "PROBING_1"

    const-string v2, "probing 1"

    sget-object v3, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->probing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "PROBING_2"

    const-string v2, "probing 2"

    sget-object v3, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->probing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "PROBING_3"

    const-string v2, "probing 3"

    sget-object v3, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->probing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "ANNOUNCING_1"

    const-string v2, "announcing 1"

    sget-object v3, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announcing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "ANNOUNCING_2"

    const-string v2, "announcing 2"

    sget-object v3, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announcing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "ANNOUNCED"

    const/4 v2, 0x5

    const-string v3, "announced"

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announced:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "CANCELING_1"

    const/4 v2, 0x6

    const-string v3, "canceling 1"

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceling:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "CANCELING_2"

    const/4 v2, 0x7

    const-string v3, "canceling 2"

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceling:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "CANCELING_3"

    const/16 v2, 0x8

    const-string v3, "canceling 3"

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceling:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "CANCELED"

    const/16 v2, 0x9

    const-string v3, "canceled"

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceled:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "CLOSING"

    const/16 v2, 0xa

    const-string v3, "closing"

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSING:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const-string v1, "CLOSED"

    const/16 v2, 0xb

    const-string v3, "closed"

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closed:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSING:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/android/pop/zeroconf/constants/DNSState;
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSState;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->$VALUES:[Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v0}, [Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    return-object v0
.end method


# virtual methods
.method public final advance()Lcom/estrongs/android/pop/zeroconf/constants/DNSState;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final isAnnounced()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announced:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAnnouncing()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->announcing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCanceled()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceled:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCanceling()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->canceling:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closed:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClosing()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->closing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isProbing()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_state:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;->probing:Lcom/estrongs/android/pop/zeroconf/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final revert()Lcom/estrongs/android/pop/zeroconf/constants/DNSState;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSING:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->_name:Ljava/lang/String;

    return-object v0
.end method
