.class public Lde/innosystec/unrar/rarfile/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lde/innosystec/unrar/rarfile/m;

.field public static final b:Lde/innosystec/unrar/rarfile/m;

.field public static final c:Lde/innosystec/unrar/rarfile/m;

.field public static final d:Lde/innosystec/unrar/rarfile/m;

.field public static final e:Lde/innosystec/unrar/rarfile/m;

.field public static final f:Lde/innosystec/unrar/rarfile/m;

.field public static final g:Lde/innosystec/unrar/rarfile/m;

.field public static final h:Lde/innosystec/unrar/rarfile/m;


# instance fields
.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x3

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->a:Lde/innosystec/unrar/rarfile/m;

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->b:Lde/innosystec/unrar/rarfile/m;

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->c:Lde/innosystec/unrar/rarfile/m;

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    new-array v1, v2, [B

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->d:Lde/innosystec/unrar/rarfile/m;

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->e:Lde/innosystec/unrar/rarfile/m;

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->f:Lde/innosystec/unrar/rarfile/m;

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    new-array v1, v2, [B

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->g:Lde/innosystec/unrar/rarfile/m;

    new-instance v0, Lde/innosystec/unrar/rarfile/m;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Lde/innosystec/unrar/rarfile/m;-><init>([B)V

    sput-object v0, Lde/innosystec/unrar/rarfile/m;->h:Lde/innosystec/unrar/rarfile/m;

    return-void

    :array_0
    .array-data 1
        0x43t
        0x4dt
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x43t
        0x4ct
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x54t
        0x4dt
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0x4ft
        0x57t
    .end array-data

    :array_4
    .array-data 1
        0x41t
        0x56t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x52t
        0x52t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x45t
        0x41t
        0x32t
    .end array-data

    :array_7
    .array-data 1
        0x45t
        0x41t
        0x42t
        0x45t
    .end array-data
.end method

.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/innosystec/unrar/rarfile/m;->i:[B

    return-void
.end method


# virtual methods
.method public a([B)Z
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/m;->i:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lde/innosystec/unrar/rarfile/m;->i:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
