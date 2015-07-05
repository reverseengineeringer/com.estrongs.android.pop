.class public Lde/innosystec/unrar/unpack/vm/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->b:Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->e:Ljava/util/Vector;

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/g;->c:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/g;->b:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/g;->e:Ljava/util/Vector;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/g;->g:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/g;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lde/innosystec/unrar/unpack/vm/g;->h:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/g;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/g;->h:I

    return v0
.end method

.method public f()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public g()[I
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->f:[I

    return-object v0
.end method

.method public h()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/g;->e:Ljava/util/Vector;

    return-object v0
.end method
