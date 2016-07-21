.class public Lde/innosystec/unrar/unpack/vm/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lde/innosystec/unrar/unpack/vm/VMCommands;

.field private b:Z

.field private c:Lde/innosystec/unrar/unpack/vm/f;

.field private d:Lde/innosystec/unrar/unpack/vm/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lde/innosystec/unrar/unpack/vm/f;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/f;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/e;->c:Lde/innosystec/unrar/unpack/vm/f;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/f;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/f;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/e;->d:Lde/innosystec/unrar/unpack/vm/f;

    return-void
.end method


# virtual methods
.method public a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V
    .locals 0

    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/e;->a:Lde/innosystec/unrar/unpack/vm/VMCommands;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/vm/e;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/vm/e;->b:Z

    return v0
.end method

.method public b()Lde/innosystec/unrar/unpack/vm/f;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/e;->c:Lde/innosystec/unrar/unpack/vm/f;

    return-object v0
.end method

.method public c()Lde/innosystec/unrar/unpack/vm/f;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/e;->d:Lde/innosystec/unrar/unpack/vm/f;

    return-object v0
.end method

.method public d()Lde/innosystec/unrar/unpack/vm/VMCommands;
    .locals 1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/e;->a:Lde/innosystec/unrar/unpack/vm/VMCommands;

    return-object v0
.end method
