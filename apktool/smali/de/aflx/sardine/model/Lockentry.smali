.class public Lde/aflx/sardine/model/Lockentry;
.super Ljava/lang/Object;


# instance fields
.field protected lockscope:Lde/aflx/sardine/model/Lockscope;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field protected locktype:Lde/aflx/sardine/model/Locktype;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockscope()Lde/aflx/sardine/model/Lockscope;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Lockentry;->lockscope:Lde/aflx/sardine/model/Lockscope;

    return-object v0
.end method

.method public getLocktype()Lde/aflx/sardine/model/Locktype;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Lockentry;->locktype:Lde/aflx/sardine/model/Locktype;

    return-object v0
.end method

.method public setLockscope(Lde/aflx/sardine/model/Lockscope;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Lockentry;->lockscope:Lde/aflx/sardine/model/Lockscope;

    return-void
.end method

.method public setLocktype(Lde/aflx/sardine/model/Locktype;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Lockentry;->locktype:Lde/aflx/sardine/model/Locktype;

    return-void
.end method
