.class public Lde/innosystec/unrar/unpack/vm/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;


# direct methods
.method public constructor <init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/h;->a:I

    iput p2, p0, Lde/innosystec/unrar/unpack/vm/h;->b:I

    iput-object p3, p0, Lde/innosystec/unrar/unpack/vm/h;->c:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/h;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/h;->a:I

    return v0
.end method

.method public c()Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/h;->c:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    return-object v0
.end method
