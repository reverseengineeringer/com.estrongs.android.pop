.class public Lcom/estrongs/chromecast/CastDeviceInfoImpl;
.super Lcom/estrongs/chromecast/CastDeviceInfo;


# instance fields
.field private mDevice:Lcom/google/android/gms/cast/CastDevice;

.field private mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/chromecast/CastDeviceInfo;-><init>()V

    iput-object p1, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mDevice:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl(II)Ljava/net/URL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->c()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public getRouteInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getServicePort()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->g()I

    move-result v0

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    return v0
.end method

.method public getVolumeMax()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/CastDeviceInfoImpl;->mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    return v0
.end method
