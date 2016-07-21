.class public Lde/aflx/sardine/model/Locktype;
.super Ljava/lang/Object;


# instance fields
.field protected write:Lde/aflx/sardine/model/Write;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWrite()Lde/aflx/sardine/model/Write;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Locktype;->write:Lde/aflx/sardine/model/Write;

    return-object v0
.end method

.method public setWrite(Lde/aflx/sardine/model/Write;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Locktype;->write:Lde/aflx/sardine/model/Write;

    return-void
.end method
