.class public final Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;
.super Ljava/lang/Object;


# instance fields
.field public playbackStream:I

.field public playbackType:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    return-void
.end method
