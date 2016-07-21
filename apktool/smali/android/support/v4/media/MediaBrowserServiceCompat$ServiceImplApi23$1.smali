.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;
.super Landroid/support/v4/os/ResultReceiver;


# instance fields
.field final synthetic a:Landroid/support/v4/media/y;


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;->a:Landroid/support/v4/media/y;

    invoke-interface {v1, p1, p2, v0}, Landroid/support/v4/media/y;->a(ILandroid/os/Bundle;Landroid/os/Parcel;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
