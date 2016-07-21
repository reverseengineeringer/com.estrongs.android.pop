.class public Lcom/google/android/gms/internal/lp;
.super Lcom/google/android/gms/internal/zzfz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ib;

.field private i:Lcom/google/android/gms/internal/if;

.field private j:Lcom/google/android/gms/internal/hq;

.field private k:Lcom/google/android/gms/internal/hw;

.field private final l:Lcom/google/android/gms/internal/dh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/dh;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/zzfz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/ll;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/lp;->i:Lcom/google/android/gms/internal/if;

    iget-object v0, p2, Lcom/google/android/gms/internal/nh;->c:Lcom/google/android/gms/internal/hw;

    iput-object v0, p0, Lcom/google/android/gms/internal/lp;->k:Lcom/google/android/gms/internal/hw;

    iput-object p6, p0, Lcom/google/android/gms/internal/lp;->l:Lcom/google/android/gms/internal/dh;

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/google/android/gms/internal/ng;
    .locals 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/lp;->g:Lcom/google/android/gms/internal/nh;

    iget-object v6, v2, Lcom/google/android/gms/internal/nh;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/ng;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/lp;->d:Lcom/google/android/gms/internal/qa;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v13, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->i:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    iget-object v14, v14, Lcom/google/android/gms/internal/ib;->b:Lcom/google/android/gms/internal/hs;

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    iget-object v15, v15, Lcom/google/android/gms/internal/ib;->c:Lcom/google/android/gms/internal/ii;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/ib;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->k:Lcom/google/android/gms/internal/hw;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/ib;->e:Lcom/google/android/gms/internal/hy;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->j:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->g:Lcom/google/android/gms/internal/nh;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/nh;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->g:Lcom/google/android/gms/internal/nh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/nh;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->p:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/lp;->g:Lcom/google/android/gms/internal/nh;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/nh;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->y:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/internal/ng;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/qa;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/ii;Ljava/lang/String;Lcom/google/android/gms/internal/hw;Lcom/google/android/gms/internal/hy;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/o;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_2
    const-class v16, Lcom/google/ads/mediation/a/a;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lp;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzfz;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->j:Lcom/google/android/gms/internal/hq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->j:Lcom/google/android/gms/internal/hq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hq;->a()V

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

.method protected b(J)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/lp;->f:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/hq;

    iget-object v1, p0, Lcom/google/android/gms/internal/lp;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/lp;->g:Lcom/google/android/gms/internal/nh;

    iget-object v2, v2, Lcom/google/android/gms/internal/nh;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/lp;->i:Lcom/google/android/gms/internal/if;

    iget-object v4, p0, Lcom/google/android/gms/internal/lp;->k:Lcom/google/android/gms/internal/hw;

    iget-object v5, p0, Lcom/google/android/gms/internal/lp;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->u:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/internal/hw;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lp;->j:Lcom/google/android/gms/internal/hq;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/lp;->j:Lcom/google/android/gms/internal/hq;

    const-wide/32 v4, 0xea60

    iget-object v6, p0, Lcom/google/android/gms/internal/lp;->l:Lcom/google/android/gms/internal/dh;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/hq;->a(JJLcom/google/android/gms/internal/dh;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    iget v0, v0, Lcom/google/android/gms/internal/ib;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/zzfz$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/lp;->a:Lcom/google/android/gms/internal/ib;

    iget v2, v2, Lcom/google/android/gms/internal/ib;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfz$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzfz$zza;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfz$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
