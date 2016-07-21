.class public final Lcom/google/android/gms/internal/hq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final b:Lcom/google/android/gms/internal/if;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/hw;

.field private final f:Z

.field private g:Z

.field private h:Lcom/google/android/gms/internal/hz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/internal/hw;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hq;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hq;->g:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/hq;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/hq;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/hq;->b:Lcom/google/android/gms/internal/if;

    iput-object p4, p0, Lcom/google/android/gms/internal/hq;->e:Lcom/google/android/gms/internal/hw;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/hq;->f:Z

    return-void
.end method


# virtual methods
.method public a(JJLcom/google/android/gms/internal/dh;)Lcom/google/android/gms/internal/ib;
    .locals 23

    const-string v4, "Starting mediation."

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/dh;->a()Lcom/google/android/gms/internal/dg;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hq;->e:Lcom/google/android/gms/internal/hw;

    iget-object v4, v4, Lcom/google/android/gms/internal/hw;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/hs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying mediation network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/hs;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/hs;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/dh;->a()Lcom/google/android/gms/internal/dg;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/hq;->d:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/hq;->g:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/ib;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ib;-><init>(I)V

    monitor-exit v21

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/hz;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/hq;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/hq;->b:Lcom/google/android/gms/internal/if;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/hq;->e:Lcom/google/android/gms/internal/hw;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/hq;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/hq;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->e:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/hq;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->l:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/hq;->f:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/hq;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v14, v14, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->D:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/hq;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v15, v15, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->o:Ljava/util/List;

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/hz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/internal/hw;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/hq;->h:Lcom/google/android/gms/internal/hz;

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/hq;->h:Lcom/google/android/gms/internal/hz;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/hz;->a(JJ)Lcom/google/android/gms/internal/ib;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ib;->a:I

    if-nez v5, :cond_4

    const-string v5, "Adapter succeeded."

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    const-string v5, "mediation_network_succeed"

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "mediation_networks_fail"

    const-string v6, ","

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "mls"

    aput-object v7, v5, v6

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ttm"

    aput-object v7, v5, v6

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "mlf"

    aput-object v7, v5, v6

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    iget-object v5, v4, Lcom/google/android/gms/internal/ib;->c:Lcom/google/android/gms/internal/ii;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/hr;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/hr;-><init>(Lcom/google/android/gms/internal/hq;Lcom/google/android/gms/internal/ib;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mediation_networks_fail"

    const-string v5, ","

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v4, Lcom/google/android/gms/internal/ib;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ib;-><init>(I)V

    goto/16 :goto_1
.end method

.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hq;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hq;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hq;->h:Lcom/google/android/gms/internal/hz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hq;->h:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
