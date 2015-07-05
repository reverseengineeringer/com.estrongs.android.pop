.class public abstract Lcom/estrongs/chromecast/CastDeviceInfo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getFriendlyName()Ljava/lang/String;
.end method

.method public abstract getIconUrl(II)Ljava/net/URL;
.end method

.method public abstract getIpAddress()Ljava/net/InetAddress;
.end method

.method public abstract getRouteInfo()Ljava/lang/Object;
.end method

.method public abstract getServicePort()I
.end method

.method public abstract getVolume()I
.end method

.method public abstract getVolumeMax()I
.end method

.method public abstract isSelected()Z
.end method
