.class public Lcom/baidu/resultcard/common/PhotoReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final CAMERA_NEW_PICTURE:Ljava/lang/String; = "com.android.camera.NEW_PICTURE"

.field public static final HARDWARE_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field private static mOldContentUrl:Ljava/lang/String;

.field private static mOldNewPictureTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/resultcard/common/PhotoReceiver;->mOldContentUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/resultcard/common/PhotoReceiver;->mOldNewPictureTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/baidu/resultcard/common/PhotoReceiver;->mOldNewPictureTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    sget-object v1, Lcom/baidu/resultcard/common/PhotoReceiver;->mOldContentUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-static {p1}, Lcom/baidu/resultcard/common/PhotoScanner;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoScanner;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/resultcard/common/PhotoScanner;->updatePhotoNum(JLjava/lang/String;)V

    goto :goto_1
.end method
