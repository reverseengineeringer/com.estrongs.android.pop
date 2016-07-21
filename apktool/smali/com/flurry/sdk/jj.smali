.class public Lcom/flurry/sdk/jj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/ll$a;


# static fields
.field private static a:Lcom/flurry/sdk/jj;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:J

.field private final f:J

.field private g:Z

.field private h:Landroid/location/Location;

.field private i:J

.field private j:Landroid/location/LocationManager;

.field private k:Lcom/flurry/sdk/jj$a;

.field private l:Landroid/location/Location;

.field private m:Z

.field private n:I

.field private o:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ln;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/jj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/flurry/sdk/jj;->c:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/jj;->d:J

    const-wide/32 v0, 0x15f90

    iput-wide v0, p0, Lcom/flurry/sdk/jj;->e:J

    iput-wide v6, p0, Lcom/flurry/sdk/jj;->f:J

    iput-wide v6, p0, Lcom/flurry/sdk/jj;->i:J

    iput-boolean v2, p0, Lcom/flurry/sdk/jj;->m:Z

    iput v2, p0, Lcom/flurry/sdk/jj;->n:I

    new-instance v0, Lcom/flurry/sdk/jj$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jj$1;-><init>(Lcom/flurry/sdk/jj;)V

    iput-object v0, p0, Lcom/flurry/sdk/jj;->o:Lcom/flurry/sdk/kb;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/jj;->j:Landroid/location/LocationManager;

    new-instance v0, Lcom/flurry/sdk/jj$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jj$a;-><init>(Lcom/flurry/sdk/jj;)V

    iput-object v0, p0, Lcom/flurry/sdk/jj;->k:Lcom/flurry/sdk/jj$a;

    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v1

    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jj;->g:Z

    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)V

    sget-object v0, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, ReportLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/jj;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExplicitLocation"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/flurry/sdk/jj;->h:Landroid/location/Location;

    const-string v0, "ExplicitLocation"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ll;->a(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)V

    sget-object v0, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ExplicitLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/jj;->h:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jj;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/jj;->i:J

    return-wide v0
.end method

.method static synthetic a(Lcom/flurry/sdk/jj;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jj;->l:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jj;
    .locals 2

    const-class v1, Lcom/flurry/sdk/jj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/jj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/jj;

    invoke-direct {v0}, Lcom/flurry/sdk/jj;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/jj;

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/jj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jj;->j:Landroid/location/LocationManager;

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flurry/sdk/jj;->k:Lcom/flurry/sdk/jj$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jj;->j:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/jj;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v0

    const-string v1, "ReportLocation"

    sget-object v2, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/jj;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/lk;->b(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)Z

    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    move-result-object v0

    const-string v1, "ExplicitLocation"

    sget-object v2, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/jj;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/lk;->b(Ljava/lang/String;Lcom/flurry/sdk/ll$a;)Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/jj;

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/jj;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->h()V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/jj;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/jj;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/jj;->n:I

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-boolean v0, p0, Lcom/flurry/sdk/jj;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/jj;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jj;->h:Landroid/location/Location;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/jj;->n:I

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/flurry/sdk/jj;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->i()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/flurry/sdk/jj;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/jj;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jj;->l:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/jj;->i:J

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jj;->m:Z

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    const-string v2, "LocationProvider started"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/flurry/sdk/jj;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/flurry/sdk/jj;->m:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jj;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/jj;->k:Lcom/flurry/sdk/jj$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput v2, p0, Lcom/flurry/sdk/jj;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/jj;->i:J

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->l()V

    iput-boolean v2, p0, Lcom/flurry/sdk/jj;->m:Z

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    const-string v2, "LocationProvider stopped"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    const-string v0, "passive"

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    const-string v0, "network"

    return-object v0
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    const-string v2, "Register location timer"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jj;->o:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    const-string v2, "Unregister location timer"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jj;->o:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/kb;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    const-string v2, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_0
    const-string v1, "ReportLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ExplicitLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jj;->g:Z

    sget-object v0, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/jj;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lcom/flurry/sdk/jj;->h:Landroid/location/Location;

    sget-object v0, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ExplicitLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/jj;->h:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33814ed7 -> :sswitch_0
        -0x11ecc5d7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    const-string v2, "Location update requested"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/flurry/sdk/jj;->n:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    const-string v2, "Stop update location requested"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Landroid/location/Location;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flurry/sdk/jj;->h:Landroid/location/Location;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/jj;->h:Landroid/location/Location;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/flurry/sdk/jj;->g:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/jj;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/flurry/sdk/jj;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/flurry/sdk/jj;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->i()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/flurry/sdk/jj;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/flurry/sdk/jj;->l:Landroid/location/Location;

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/jj;->l:Landroid/location/Location;

    :cond_4
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/jj;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocation() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1}, Lcom/flurry/sdk/jj;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/flurry/sdk/jj;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method
