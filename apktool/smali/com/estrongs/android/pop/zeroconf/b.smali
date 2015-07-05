.class synthetic Lcom/estrongs/android/pop/zeroconf/b;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_A:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_AAAA:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_CNAME:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_PTR:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_TXT:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_SRV:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->c:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->TYPE_OPT:Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/b;->b:[I

    :try_start_7
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->b:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->Owner:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->b:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->LLQ:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->b:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->NSID:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->b:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->UL:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->b:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    invoke-static {}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->values()[Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/estrongs/android/pop/zeroconf/b;->a:[I

    :try_start_c
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Standard:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Compressed:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Extended:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v0, Lcom/estrongs/android/pop/zeroconf/b;->a:[I

    sget-object v1, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->Unknown:Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    return-void

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto/16 :goto_6

    :catch_a
    move-exception v0

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_1

    :catch_f
    move-exception v0

    goto/16 :goto_0
.end method
