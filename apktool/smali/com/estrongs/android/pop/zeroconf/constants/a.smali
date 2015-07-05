.class synthetic Lcom/estrongs/android/pop/zeroconf/constants/a;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->PROBING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ANNOUNCED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_1:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_2:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELING_3:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CANCELED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSING:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/constants/a;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->CLOSED:Lcom/estrongs/android/pop/zeroconf/constants/DNSState;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
