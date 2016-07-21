.class final Lcom/dianxinos/lockscreen/ad/a;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:I

.field i:Z

.field j:I

.field k:J

.field l:J

.field m:J


# direct methods
.method constructor <init>()V
    .locals 6

    const-wide/32 v4, 0x5265c00

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ad/a;->a:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ad/a;->b:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ad/a;->c:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ad/a;->d:Z

    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ad/a;->f:J

    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ad/a;->g:J

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/dianxinos/lockscreen/ad/a;->h:I

    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->i:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/lockscreen/ad/a;->j:I

    iput-wide v4, p0, Lcom/dianxinos/lockscreen/ad/a;->k:J

    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ad/a;->l:J

    iput-wide v4, p0, Lcom/dianxinos/lockscreen/ad/a;->m:J

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/dianxinos/lockscreen/ad/a;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/dianxinos/lockscreen/ad/a;->b(Lorg/json/JSONObject;)Lcom/dianxinos/lockscreen/ad/a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/dianxinos/lockscreen/ad/a;

    invoke-direct {v0}, Lcom/dianxinos/lockscreen/ad/a;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/dianxinos/lockscreen/ad/a;
    .locals 24

    const-string v4, "ad_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    :cond_0
    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown ad switch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x3

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_8

    const/4 v7, 0x1

    :goto_3
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    :goto_4
    const-string v9, "new_protect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    const-wide/32 v12, 0x36ee80

    mul-long v16, v10, v12

    const-string v9, "close_protect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    const-wide/32 v12, 0x36ee80

    mul-long v18, v10, v12

    const-string v9, "show_times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "recommend_switch"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-wide/32 v10, 0x5265c00

    const-string v12, "recommend_new_pro_hours"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v10, "recommend_new_pro_hours"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    const-wide/32 v12, 0x36ee80

    mul-long/2addr v10, v12

    :cond_2
    const-wide/32 v12, 0xf731400

    const-string v14, "recommend_int_hours"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v12, "recommend_int_hours"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    const-wide/32 v14, 0x36ee80

    mul-long/2addr v12, v14

    :cond_3
    const-string v14, "recommend_show_times"

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    const-wide/32 v14, 0x5265c00

    const-string v22, "dlg_int_hours"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v14, "dlg_int_hours"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    const-wide/32 v22, 0x36ee80

    mul-long v14, v14, v22

    :cond_4
    new-instance v22, Lcom/dianxinos/lockscreen/ad/a;

    invoke-direct/range {v22 .. v22}, Lcom/dianxinos/lockscreen/ad/a;-><init>()V

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/dianxinos/lockscreen/ad/a;->a:Z

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/dianxinos/lockscreen/ad/a;->b:Z

    move-object/from16 v0, v22

    iput-boolean v6, v0, Lcom/dianxinos/lockscreen/ad/a;->c:Z

    move-object/from16 v0, v22

    iput-boolean v7, v0, Lcom/dianxinos/lockscreen/ad/a;->d:Z

    move-object/from16 v0, v22

    iput-boolean v8, v0, Lcom/dianxinos/lockscreen/ad/a;->e:Z

    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/dianxinos/lockscreen/ad/a;->f:J

    move-wide/from16 v0, v18

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/dianxinos/lockscreen/ad/a;->g:J

    move-object/from16 v0, v22

    iput v9, v0, Lcom/dianxinos/lockscreen/ad/a;->h:I

    move/from16 v0, v20

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/dianxinos/lockscreen/ad/a;->i:Z

    move-object/from16 v0, v22

    iput-wide v10, v0, Lcom/dianxinos/lockscreen/ad/a;->k:J

    move-object/from16 v0, v22

    iput-wide v12, v0, Lcom/dianxinos/lockscreen/ad/a;->l:J

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/dianxinos/lockscreen/ad/a;->j:I

    move-object/from16 v0, v22

    iput-wide v14, v0, Lcom/dianxinos/lockscreen/ad/a;->m:J

    return-object v22

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const-wide/32 v4, 0x36ee80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi switch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", 2G switch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", 3G switch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", 4G switch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", other switch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ad/a;->f:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    const-string v2, ", new user protect time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ad/a;->g:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    const-string v2, ", close ad protect time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", show ad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ad/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times per day"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendSwitch :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/ad/a;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recommendShowTimes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ad/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recommendNewProTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ad/a;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", recommendIntTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ad/a;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dlgIntTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ad/a;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
