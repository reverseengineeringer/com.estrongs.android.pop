.class public Lcom/estrongs/fs/impl/usb/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static m:Landroid/content/Context;

.field private static n:Ljava/lang/Object;


# instance fields
.field private d:Landroid/hardware/usb/UsbManager;

.field private e:Landroid/hardware/usb/UsbDeviceConnection;

.field private f:Landroid/hardware/usb/UsbDevice;

.field private g:Landroid/hardware/usb/UsbInterface;

.field private h:Landroid/hardware/usb/UsbEndpoint;

.field private i:Landroid/hardware/usb/UsbEndpoint;

.field private j:Lcom/estrongs/fs/impl/usb/driver/a;

.field private k:Lcom/estrongs/fs/impl/usb/a/c;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/estrongs/fs/impl/usb/k;

.field private p:Z

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Z

.field private s:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/g;->a:Ljava/lang/String;

    const/16 v0, 0x7d0

    sput v0, Lcom/estrongs/fs/impl/usb/g;->b:I

    const v0, 0x30d40

    sput v0, Lcom/estrongs/fs/impl/usb/g;->c:I

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/g;->m:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/usb/g;->n:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->l:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->o:Lcom/estrongs/fs/impl/usb/k;

    iput-boolean v2, p0, Lcom/estrongs/fs/impl/usb/g;->p:Z

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->q:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/estrongs/fs/impl/usb/g;->r:Z

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/g;->d:Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/estrongs/fs/impl/usb/g;->g:Landroid/hardware/usb/UsbInterface;

    iput-object p4, p0, Lcom/estrongs/fs/impl/usb/g;->h:Landroid/hardware/usb/UsbEndpoint;

    iput-object p5, p0, Lcom/estrongs/fs/impl/usb/g;->i:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method

.method private a(I)Lcom/estrongs/fs/impl/usb/a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/usb/j;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/j;-><init>(Lcom/estrongs/fs/impl/usb/g;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/impl/usb/i;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/i;-><init>(Lcom/estrongs/fs/impl/usb/g;I)V

    goto :goto_0
.end method

.method public static a(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->r:Z

    return v0
.end method

.method public static a()[Lcom/estrongs/fs/impl/usb/g;
    .locals 15

    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->m:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7

    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v12

    move v9, v7

    :goto_0
    if-ge v9, v12, :cond_0

    invoke-virtual {v2, v9}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v0

    const/16 v4, 0x50

    if-eq v0, v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v13

    const/4 v0, 0x2

    if-eq v13, v0, :cond_3

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->a:Ljava/lang/String;

    const-string v4, "inteface endpoint count != 2"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v6, v7

    move-object v4, v8

    move-object v5, v8

    :goto_2
    if-ge v6, v13, :cond_5

    invoke-virtual {v3, v6}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v14

    if-nez v14, :cond_4

    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v0

    goto :goto_2

    :cond_4
    move-object v4, v0

    move-object v0, v5

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    if-nez v4, :cond_8

    :cond_6
    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->a:Ljava/lang/String;

    const-string v3, "Not all needed endpoints found!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    new-array v0, v7, [Lcom/estrongs/fs/impl/usb/g;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/fs/impl/usb/g;

    return-object v0

    :cond_8
    :try_start_1
    new-instance v0, Lcom/estrongs/fs/impl/usb/g;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/impl/usb/g;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->i:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->h:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/fs/impl/usb/g;)Lcom/estrongs/fs/impl/usb/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->o:Lcom/estrongs/fs/impl/usb/k;

    return-object v0
.end method

.method static synthetic l()I
    .locals 1

    sget v0, Lcom/estrongs/fs/impl/usb/g;->c:I

    return v0
.end method

.method static synthetic m()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->n:Ljava/lang/Object;

    return-object v0
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/g;->d()V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/g;->c()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/g;->q()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->d:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->a:Ljava/lang/String;

    const-string v1, "deviceConnetion is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->g:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->a:Ljava/lang/String;

    const-string v1, "could not claim interface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget v0, Lcom/estrongs/fs/impl/usb/g;->b:I

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/g;->a(I)Lcom/estrongs/fs/impl/usb/a;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/driver/b;->a(Lcom/estrongs/fs/impl/usb/a;)Lcom/estrongs/fs/impl/usb/driver/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->j:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->j:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/driver/a;->a()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->j:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/a/e;->a(Lcom/estrongs/fs/impl/usb/driver/a;)Lcom/estrongs/fs/impl/usb/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->k:Lcom/estrongs/fs/impl/usb/a/c;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->k:Lcom/estrongs/fs/impl/usb/a/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v1, "unsupported mbr type"

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/g;->p()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->j:Lcom/estrongs/fs/impl/usb/driver/a;

    instance-of v0, v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;

    if-eqz v0, :cond_3

    sget v0, Lcom/estrongs/fs/impl/usb/g;->c:I

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/g;->a(I)Lcom/estrongs/fs/impl/usb/a;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->j:Lcom/estrongs/fs/impl/usb/driver/a;

    check-cast v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a(Lcom/estrongs/fs/impl/usb/a;)V

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/fs/impl/usb/g;->p:Z

    goto :goto_0
.end method

.method private p()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->k:Lcom/estrongs/fs/impl/usb/a/c;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/a/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/a/d;

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/fs/impl/usb/g;->j:Lcom/estrongs/fs/impl/usb/driver/a;

    invoke-static {v5, v0, v6}, Lcom/estrongs/fs/impl/usb/a/b;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/a/d;Lcom/estrongs/fs/impl/usb/driver/a;)Lcom/estrongs/fs/impl/usb/a/b;
    :try_end_0
    .catch Lcom/estrongs/fs/impl/usb/UsbFsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v7

    :goto_1
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/estrongs/fs/impl/usb/g;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/UsbFsException;->printStackTrace()V

    move-object v3, v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v3

    move-object v3, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    throw v3

    :cond_2
    if-eqz v1, :cond_3

    throw v1

    :cond_3
    return-void
.end method

.method private q()V
    .locals 3

    sget-object v1, Lcom/estrongs/fs/impl/usb/g;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/g;->g:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->a:Ljava/lang/String;

    const-string v2, "could not release interface!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->e:Landroid/hardware/usb/UsbDeviceConnection;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/impl/usb/k;)V
    .locals 5

    sget-object v1, Lcom/estrongs/fs/impl/usb/g;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.estrongs.fs.impl.usb.USB_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/g;->q:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/usb/g;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/g;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v2, Lcom/estrongs/fs/impl/usb/h;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/impl/usb/h;-><init>(Lcom/estrongs/fs/impl/usb/g;)V

    iput-object v2, p0, Lcom/estrongs/fs/impl/usb/g;->q:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/estrongs/fs/impl/usb/g;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/g;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/g;->o:Lcom/estrongs/fs/impl/usb/k;

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->m:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.estrongs.fs.impl.usb.USB_PERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/g;->d:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->d:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 4

    sget-object v1, Lcom/estrongs/fs/impl/usb/g;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->p:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/g;->d()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->d:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/g;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/g;->d()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->p:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v2, "fail to connect usb device"

    sget-object v3, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_OPERATION_FAILED:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v2, "Missing permission to access device"

    sget-object v3, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_OPERATION_FAILED:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    check-cast v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_IO_ERROR:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->s:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_OPERATION_FAILED:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0

    :cond_2
    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->p:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->p:Z

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/g;->q()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/g;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->r:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/g;->r:Z

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/a/b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/g;->n()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/g;->l:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->b()[Lcom/estrongs/fs/impl/usb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/z;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/z;->A:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/g;->f:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
