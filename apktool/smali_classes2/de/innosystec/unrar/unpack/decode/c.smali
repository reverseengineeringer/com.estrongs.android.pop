.class public Lde/innosystec/unrar/unpack/decode/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:[I

.field private b:I

.field private final c:[I

.field private final d:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/decode/c;->c:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/decode/c;->d:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/decode/c;->a:[I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/decode/c;->b:I

    return-void
.end method

.method public a()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/decode/c;->c:[I

    return-object v0
.end method

.method public b()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/decode/c;->a:[I

    return-object v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/decode/c;->d:[I

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/decode/c;->b:I

    return v0
.end method
