.class public interface abstract Lcom/estrongs/chromecast/ChromeCast;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_ES_VERSION:I = -0x2

.field public static final ERROR_GOOGLE_PLAY_SERVICE:I = -0x1

.field public static final ERROR_NONE:I


# virtual methods
.method public abstract addConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
.end method

.method public abstract addDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V
.end method

.method public abstract addMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getConnectedDevice()Lcom/estrongs/chromecast/CastDeviceInfo;
.end method

.method public abstract getDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/chromecast/CastDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdleReason()I
.end method

.method public abstract getMediaPlayerState()I
.end method

.method public abstract getMediaStreamDuration()J
.end method

.method public abstract getMediaStreamPosition()J
.end method

.method public abstract getVersion()I
.end method

.method public abstract getVolume()D
.end method

.method public abstract init()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract loadMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/chromecast/MediaMetaData;)V
.end method

.method public abstract mediaPause()V
.end method

.method public abstract mediaPlay()V
.end method

.method public abstract mediaSeek(J)V
.end method

.method public abstract mediaStop()V
.end method

.method public abstract removeConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
.end method

.method public abstract removeDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V
.end method

.method public abstract removeMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
.end method

.method public abstract selectDevice(Lcom/estrongs/chromecast/CastDeviceInfo;)V
.end method

.method public abstract setVolume(D)V
.end method

.method public abstract startScan()V
.end method

.method public abstract stopScan()V
.end method
