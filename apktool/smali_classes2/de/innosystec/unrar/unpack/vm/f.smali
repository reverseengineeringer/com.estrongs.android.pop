.class public Lde/innosystec/unrar/unpack/vm/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lde/innosystec/unrar/unpack/vm/VMOpType;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/f;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/f;->c:I

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V
    .locals 0

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/f;->a:Lde/innosystec/unrar/unpack/vm/VMOpType;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/f;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/f;->b:I

    return-void
.end method

.method public c()Lde/innosystec/unrar/unpack/vm/VMOpType;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/f;->a:Lde/innosystec/unrar/unpack/vm/VMOpType;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/f;->d:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/f;->d:I

    return v0
.end method
