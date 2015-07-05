.class public Lde/aflx/sardine/model/Propertybehavior;
.super Ljava/lang/Object;


# instance fields
.field protected keepalive:Lde/aflx/sardine/model/Keepalive;

.field protected omit:Lde/aflx/sardine/model/Omit;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepalive()Lde/aflx/sardine/model/Keepalive;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Propertybehavior;->keepalive:Lde/aflx/sardine/model/Keepalive;

    return-object v0
.end method

.method public getOmit()Lde/aflx/sardine/model/Omit;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Propertybehavior;->omit:Lde/aflx/sardine/model/Omit;

    return-object v0
.end method

.method public setKeepalive(Lde/aflx/sardine/model/Keepalive;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Propertybehavior;->keepalive:Lde/aflx/sardine/model/Keepalive;

    return-void
.end method

.method public setOmit(Lde/aflx/sardine/model/Omit;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Propertybehavior;->omit:Lde/aflx/sardine/model/Omit;

    return-void
.end method
