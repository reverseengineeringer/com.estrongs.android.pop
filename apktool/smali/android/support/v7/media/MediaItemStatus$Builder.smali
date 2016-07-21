.class public final Landroid/support/v7/media/MediaItemStatus$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/media/MediaItemStatus$Builder;->setTimestamp(J)Landroid/support/v7/media/MediaItemStatus$Builder;

    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaItemStatus$Builder;->setPlaybackState(I)Landroid/support/v7/media/MediaItemStatus$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/MediaItemStatus;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    # getter for: Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/support/v7/media/MediaItemStatus;->access$000(Landroid/support/v7/media/MediaItemStatus;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/media/MediaItemStatus;
    .locals 3

    new-instance v0, Landroid/support/v7/media/MediaItemStatus;

    iget-object v1, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaItemStatus;-><init>(Landroid/os/Bundle;Landroid/support/v7/media/MediaItemStatus$1;)V

    return-object v0
.end method

.method public setContentDuration(J)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentDuration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setContentPosition(J)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setPlaybackState(I)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTimestamp(J)Landroid/support/v7/media/MediaItemStatus$Builder;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method
