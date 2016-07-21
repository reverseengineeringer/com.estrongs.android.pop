.class public Lde/aflx/sardine/model/Lockscope;
.super Ljava/lang/Object;


# instance fields
.field protected exclusive:Lde/aflx/sardine/model/Exclusive;

.field protected shared:Lde/aflx/sardine/model/Shared;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExclusive()Lde/aflx/sardine/model/Exclusive;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Lockscope;->exclusive:Lde/aflx/sardine/model/Exclusive;

    return-object v0
.end method

.method public getShared()Lde/aflx/sardine/model/Shared;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Lockscope;->shared:Lde/aflx/sardine/model/Shared;

    return-object v0
.end method

.method public setExclusive(Lde/aflx/sardine/model/Exclusive;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Lockscope;->exclusive:Lde/aflx/sardine/model/Exclusive;

    return-void
.end method

.method public setShared(Lde/aflx/sardine/model/Shared;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Lockscope;->shared:Lde/aflx/sardine/model/Shared;

    return-void
.end method
