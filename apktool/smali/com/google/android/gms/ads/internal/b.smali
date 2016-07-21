.class public abstract Lcom/google/android/gms/ads/internal/b;
.super Lcom/google/android/gms/ads/internal/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/p;
.implements Lcom/google/android/gms/ads/internal/purchase/m;
.implements Lcom/google/android/gms/internal/fy;
.implements Lcom/google/android/gms/internal/hx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field protected final g:Lcom/google/android/gms/internal/if;

.field protected transient h:Z

.field private final i:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/internal/af;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/af;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1, p6}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/ads/internal/af;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/ab;Lcom/google/android/gms/ads/internal/i;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/af;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/ab;Lcom/google/android/gms/ads/internal/i;)V
    .locals 3

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/af;Lcom/google/android/gms/ads/internal/ab;Lcom/google/android/gms/ads/internal/i;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/internal/if;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/internal/kc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/kc;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/b;->i:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/a;
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ag;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/ag;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ag;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ag;->getHeight()I

    move-result v9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/ag;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v4, v6

    if-lez v3, :cond_0

    add-int v3, v5, v9

    if-lez v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v4, v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v10, 0x5

    invoke-direct {v3, v10}, Landroid/os/Bundle;-><init>(I)V

    const-string v10, "x"

    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "y"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "width"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "height"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "visible"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nk;->c()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    new-instance v4, Lcom/google/android/gms/internal/ni;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Lcom/google/android/gms/internal/ni;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ni;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/v;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/v;->c()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/v;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/v;->a()Z

    move-result v22

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->p:Lcom/google/android/gms/ads/internal/client/am;

    if-eqz v2, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->p:Lcom/google/android/gms/ads/internal/client/am;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/am;->b()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v24

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0, v9}, Lcom/google/android/gms/internal/nk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/nm;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->v:Lcom/google/android/gms/internal/sz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/sz;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->v:Lcom/google/android/gms/internal/sz;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/sz;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v2, "Cannot get correlation id, default to 0."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->q:Lcom/google/android/gms/internal/kj;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nk;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move v15, v2

    :goto_4
    new-instance v2, Lcom/google/android/gms/ads/internal/request/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/nk;->a()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/af;->y:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/nk;->g()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->i:Landroid/os/Messenger;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    invoke-static {}, Lcom/google/android/gms/internal/cz;->a()Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->a:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v29, v0

    new-instance v30, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v15}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;-><init>(ZZ)V

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/ads/internal/request/a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;ZIJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/request/CapabilityParcel;)V

    return-object v2

    :cond_4
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    move v15, v2

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-object v0, v0, Lcom/google/android/gms/internal/hw;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->q()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v8, v8, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-object v8, v8, Lcom/google/android/gms/internal/hw;->c:Ljava/util/List;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v9, v9, Lcom/google/android/gms/internal/ng;->x:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ng;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->l:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->l:Lcom/google/android/gms/internal/hs;

    iget-object v0, v0, Lcom/google/android/gms/internal/hs;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->q()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v8, v8, Lcom/google/android/gms/internal/ng;->l:Lcom/google/android/gms/internal/hs;

    iget-object v8, v8, Lcom/google/android/gms/internal/hs;->f:Ljava/util/List;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v9, v9, Lcom/google/android/gms/internal/ng;->x:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ng;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->a()V

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/kj;)V
    .locals 1

    const-string v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->q:Lcom/google/android/gms/internal/kj;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/kv;Ljava/lang/String;)V
    .locals 4

    const-string v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/n;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/n;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/af;->z:Lcom/google/android/gms/ads/internal/purchase/n;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nk;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/c;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->z:Lcom/google/android/gms/ads/internal/purchase/n;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/kv;Lcom/google/android/gms/ads/internal/purchase/n;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/c;->g()Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ng;Z)V
    .locals 8

    if-nez p1, :cond_1

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/ng;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-object v0, v0, Lcom/google/android/gms/internal/hw;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->q()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-object v6, v6, Lcom/google/android/gms/internal/hw;->d:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/gms/internal/ng;->x:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ng;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ng;->l:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ng;->l:Lcom/google/android/gms/internal/hs;

    iget-object v0, v0, Lcom/google/android/gms/internal/hs;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->q()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/ng;->l:Lcom/google/android/gms/internal/hs;

    iget-object v6, v6, Lcom/google/android/gms/internal/hs;->g:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/gms/internal/ng;->x:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ng;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/e;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/e;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->q:Lcom/google/android/gms/internal/kj;

    if-nez v1, :cond_5

    const-string v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    if-nez v1, :cond_1

    const-string v0, "PlayStorePurchaseListener is not set."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->z:Lcom/google/android/gms/ads/internal/purchase/n;

    if-nez v1, :cond_2

    const-string v0, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/af;->D:Z

    if-eqz v1, :cond_3

    const-string v0, "An in-app purchase request is already in progress, abort"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/af;->D:Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/kv;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/af;->D:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/af;->D:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->o()Lcom/google/android/gms/ads/internal/purchase/k;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->f:Z

    new-instance v4, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/af;->z:Lcom/google/android/gms/ads/internal/purchase/n;

    invoke-direct {v4, v5, v6, v0, p0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/purchase/n;Lcom/google/android/gms/internal/kg;Lcom/google/android/gms/ads/internal/purchase/m;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/k;->a(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->q:Lcom/google/android/gms/internal/kj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/kj;->a(Lcom/google/android/gms/internal/kg;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/g;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/h;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/h;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/g;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/ks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/c;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/ads/internal/c;-><init>(Lcom/google/android/gms/ads/internal/b;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/dh;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->s()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nk;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bz;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/bz;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ab;->a()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iput v0, v2, Lcom/google/android/gms/ads/internal/af;->C:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/a;

    move-result-object v0

    const-string v1, "seq_num"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/a;->g:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/request/a;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "request_id"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/a;->x:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/request/a;->f:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_2

    const-string v1, "app_version"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/a;->f:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->a()Lcom/google/android/gms/ads/internal/request/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->d:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v2, v3, v0, v4, p0}, Lcom/google/android/gms/ads/internal/request/c;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/a;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/internal/request/d;)Lcom/google/android/gms/internal/np;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/af;->g:Lcom/google/android/gms/internal/np;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/ng;Z)Z
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/ng;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/ab;

    iget-wide v2, p2, Lcom/google/android/gms/internal/ng;->h:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/ab;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ab;->d()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-wide v0, v0, Lcom/google/android/gms/internal/hw;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/ab;

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-wide v2, v1, Lcom/google/android/gms/internal/hw;->g:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/ab;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ng;->k:Z

    if-nez v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ng;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/ab;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_0
.end method

.method a(Lcom/google/android/gms/internal/ng;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/b;->d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/ng;Z)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/ng;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:Landroid/os/Bundle;

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ng;->p:Lcom/google/android/gms/internal/hy;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ng;->p:Lcom/google/android/gms/internal/hy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/hx;)V

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->p:Lcom/google/android/gms/internal/hy;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->p:Lcom/google/android/gms/internal/hy;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/hx;)V

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget v1, v0, Lcom/google/android/gms/internal/hw;->j:I

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget v0, v0, Lcom/google/android/gms/internal/hw;->k:I

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->A:Lcom/google/android/gms/internal/nn;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/nn;->a(II)V

    const/4 v0, 0x1

    return v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/ng;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ng;)V

    iget v0, p1, Lcom/google/android/gms/internal/ng;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-object v0, v0, Lcom/google/android/gms/internal/hw;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->q()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/google/android/gms/internal/ng;->o:Lcom/google/android/gms/internal/hw;

    iget-object v6, v3, Lcom/google/android/gms/internal/hw;->e:Ljava/util/List;

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ng;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->g()Lcom/google/android/gms/internal/oh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v1, v1, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v1}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oh;->a(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ii;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/at;->d(Lcom/google/android/gms/internal/ng;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ab;->b()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->g()Lcom/google/android/gms/internal/oh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v1, v1, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v1}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oh;->b(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ii;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ab;->c()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/at;->e(Lcom/google/android/gms/internal/ng;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not resume mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "showInterstitial is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public q_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/at;->b(Lcom/google/android/gms/internal/ng;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->o()Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni;->c()V

    return-void
.end method

.method public r_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->p()Z

    return-void
.end method

.method protected s()Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->a()V

    return-void
.end method

.method public u()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->q_()V

    return-void
.end method

.method public v()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->m()V

    return-void
.end method

.method public w()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->r_()V

    return-void
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mediation adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v1, v1, Lcom/google/android/gms/internal/ng;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/ng;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->q()Z

    return-void
.end method
