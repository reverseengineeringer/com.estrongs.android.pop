.class public Lcom/dianxinos/library/notify/parser/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/ShowRule;
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/dianxinos/library/notify/data/n;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/n;-><init>()V

    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/dianxinos/library/notify/data/ShowRule;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/dianxinos/library/notify/data/ShowRule;->a:Ljava/lang/String;

    const-string v0, "showDayStart"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "showDayEnd"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "showGap"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/data/ShowRule;->c:Ljava/lang/Long;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/data/ShowRule;->d:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/dianxinos/library/notify/data/ShowRule;->f:Ljava/lang/Integer;

    const-string v0, "showWeek"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "showWeek field must be set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lcom/dianxinos/library/notify/data/m;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/m;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x7

    if-eq v4, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "showWeek\'s length must be 7"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_5

    iget-object v5, v1, Lcom/dianxinos/library/notify/data/ShowRule;->e:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "checks"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->c(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/Checkers;

    move-result-object v0

    iput-object v0, v1, Lcom/dianxinos/library/notify/data/ShowRule;->g:Lcom/dianxinos/library/notify/data/Checkers;

    instance-of v0, v1, Lcom/dianxinos/library/notify/data/n;

    if-eqz v0, :cond_7

    const-string v0, "iconShowTimes"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "notfShowTimes"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "widgetShowTimes"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be set to one of the iconShowTimes|notfShowTimes|widgetShowTimes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v0, v1

    check-cast v0, Lcom/dianxinos/library/notify/data/n;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/dianxinos/library/notify/data/n;->h:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/dianxinos/library/notify/data/n;->j:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/dianxinos/library/notify/data/n;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_7
    instance-of v0, v1, Lcom/dianxinos/library/notify/data/m;

    if-eqz v0, :cond_0

    const-string v0, "showTimes"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\'showTimes\' field value must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v1

    check-cast v0, Lcom/dianxinos/library/notify/data/m;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/dianxinos/library/notify/data/m;->h:Ljava/lang/Integer;

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/l;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/dianxinos/library/notify/data/l;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/l;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lcom/dianxinos/library/notify/data/l;->a:Ljava/lang/String;

    const-string v3, "installed"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/dianxinos/library/notify/data/l;->b:Ljava/lang/Boolean;

    :goto_1
    const-string v3, "chksum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dianxinos/library/notify/data/l;->c:Ljava/lang/String;

    const-string v3, "sign"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dianxinos/library/notify/data/l;->d:Ljava/lang/String;

    const-string v3, "chkSystem"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/dianxinos/library/notify/data/l;->e:Ljava/lang/Boolean;

    :goto_2
    :try_start_0
    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/dianxinos/library/notify/data/l;->f:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/l;->f:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/dianxinos/library/notify/data/l;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\'installed\' field only be set 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object v1, v0, Lcom/dianxinos/library/notify/data/l;->e:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lcom/dianxinos/library/notify/parser/NotifyStrategy;
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;-><init>()V

    const-string v2, "peroid2G"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    iput-wide v2, v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid2G:J

    :cond_2
    const-string v2, "peroid3G"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    iput-wide v2, v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid3G:J

    :cond_3
    const-string v2, "peroidWifi"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_4

    iput-wide v2, v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidWifi:J

    :cond_4
    const-string v2, "peroidDef"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    iput-wide v2, v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidDefault:J

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/i;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/dianxinos/library/notify/data/i;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/i;-><init>()V

    iput-object p0, v0, Lcom/dianxinos/library/notify/data/i;->a:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "essentials"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "bkg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/i;->b:Ljava/util/Map;

    const-string v5, "bkg"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v3, "file"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/dianxinos/library/notify/data/i;->b:Ljava/util/Map;

    const-string v4, "file"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "optionals"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/dianxinos/library/notify/data/i;->c:Ljava/util/Map;

    const-string v4, "bkg"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "file"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/dianxinos/library/notify/data/i;->c:Ljava/util/Map;

    const-string v3, "file"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/dianxinos/library/notify/data/j;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/j;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "category"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iput-object v4, v1, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    iput-object v5, v1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    const-string v6, "revoke"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v2, :cond_2

    :goto_1
    if-eqz v2, :cond_3

    iput-boolean v2, v1, Lcom/dianxinos/library/notify/data/j;->d:Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iput-boolean v2, v1, Lcom/dianxinos/library/notify/data/j;->d:Z

    const-string v2, "priority"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    iput v2, v1, Lcom/dianxinos/library/notify/data/j;->c:I

    :cond_4
    const-string v2, "rule"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v4}, Lcom/dianxinos/library/notify/parser/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/ShowRule;

    move-result-object v2

    iput-object v2, v1, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    const-string v2, "resources"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/dianxinos/library/notify/parser/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/i;

    move-result-object v2

    iput-object v2, v1, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    const-string v2, "display"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/dianxinos/library/notify/parser/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/c;

    move-result-object v2

    iput-object v2, v1, Lcom/dianxinos/library/notify/data/j;->g:Lcom/dianxinos/library/notify/data/c;

    const-string v2, "works"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/dianxinos/library/notify/parser/d;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/Works;

    move-result-object v2

    iput-object v2, v1, Lcom/dianxinos/library/notify/data/j;->h:Lcom/dianxinos/library/notify/data/Works;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/Checkers;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be set \'checkers\' value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/dianxinos/library/notify/data/Checkers;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/Checkers;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dianxinos/library/notify/parser/d;->d(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Lcom/dianxinos/library/notify/data/Checkers;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/c;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/dianxinos/library/notify/data/c;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/c;-><init>()V

    const-string v3, "splash"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->a:Ljava/lang/String;

    const-string v1, "liveTime"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->b:Ljava/lang/Integer;

    const-string v1, "share"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->j(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/g;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->d:Lcom/dianxinos/library/notify/data/g;

    const-string v1, "button"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->i(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/d;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->f:Lcom/dianxinos/library/notify/data/d;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\'liveTime\' field value must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v1, "pandoraapk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "pandorajar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "toolbox"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->l(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/h;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->g:Lcom/dianxinos/library/notify/data/h;

    :cond_5
    const-string v1, "type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string v1, "none"

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->a:Ljava/lang/String;

    const-string v3, "notf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v1, "attention"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->k(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/f;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->c:Lcom/dianxinos/library/notify/data/f;

    const-string v1, "notify"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->h(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/e;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->e:Lcom/dianxinos/library/notify/data/e;

    goto/16 :goto_0

    :cond_8
    const-string v3, "notfdialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v1, "attention"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->k(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/f;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->c:Lcom/dianxinos/library/notify/data/f;

    const-string v1, "notify"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->h(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/e;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->e:Lcom/dianxinos/library/notify/data/e;

    const-string v1, "share"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->j(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/g;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->d:Lcom/dianxinos/library/notify/data/g;

    const-string v1, "button"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->i(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/d;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->f:Lcom/dianxinos/library/notify/data/d;

    goto/16 :goto_0

    :cond_9
    const-string v3, "dialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "attention"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->k(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/f;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->c:Lcom/dianxinos/library/notify/data/f;

    const-string v1, "share"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->j(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/g;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->d:Lcom/dianxinos/library/notify/data/g;

    const-string v1, "button"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/d;->i(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/d;

    move-result-object v1

    iput-object v1, v0, Lcom/dianxinos/library/notify/data/c;->f:Lcom/dianxinos/library/notify/data/d;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid display type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/Works;
    .locals 4

    new-instance v0, Lcom/dianxinos/library/notify/data/Works;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/Works;-><init>()V

    iput-object p0, v0, Lcom/dianxinos/library/notify/data/Works;->mCategory:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "download"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "download"

    invoke-virtual {v0, v3, v2}, Lcom/dianxinos/library/notify/data/Works;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string v2, "install"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "install"

    invoke-virtual {v0, v3, v2}, Lcom/dianxinos/library/notify/data/Works;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    const-string v2, "open"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "open"

    invoke-virtual {v0, v3, v2}, Lcom/dianxinos/library/notify/data/Works;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    const-string v2, "uninstall"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "uninstall"

    invoke-virtual {v0, v3, v2}, Lcom/dianxinos/library/notify/data/Works;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    const-string v2, "runapk"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "runapk"

    invoke-virtual {v0, v3, v2}, Lcom/dianxinos/library/notify/data/Works;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    const-string v2, "runjar"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "runjar"

    invoke-virtual {v0, v2, v1}, Lcom/dianxinos/library/notify/data/Works;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/a;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "showNetwork"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\'showNetwork\' field must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/dianxinos/library/notify/data/a;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/a;-><init>()V

    iput-object v3, v1, Lcom/dianxinos/library/notify/data/a;->a:Ljava/lang/String;

    const-string v3, "accessPoint"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/data/a;->b:Ljava/lang/String;

    const-string v3, "deviceRoot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/data/a;->c:Ljava/lang/Boolean;

    :goto_1
    const-string v3, "apkRoot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/data/a;->d:Ljava/lang/Boolean;

    :goto_2
    const-string v3, "apkSystem"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/dianxinos/library/notify/data/a;->e:Ljava/lang/Boolean;

    :goto_3
    const-string v0, "packages"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->e(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/Packages;

    move-result-object v0

    iput-object v0, v1, Lcom/dianxinos/library/notify/data/a;->f:Lcom/dianxinos/library/notify/data/Packages;

    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v0, v1, Lcom/dianxinos/library/notify/data/a;->c:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    iput-object v0, v1, Lcom/dianxinos/library/notify/data/a;->d:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    iput-object v0, v1, Lcom/dianxinos/library/notify/data/a;->e:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static e(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/Packages;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/dianxinos/library/notify/data/Packages;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/Packages;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dianxinos/library/notify/parser/d;->f(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/PackageItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/dianxinos/library/notify/data/Packages;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/PackageItem;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/dianxinos/library/notify/data/PackageItem;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/PackageItem;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dianxinos/library/notify/parser/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/data/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/dianxinos/library/notify/data/PackageItem;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/b;
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/dianxinos/library/notify/data/b;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/b;-><init>()V

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iput-object v4, v1, Lcom/dianxinos/library/notify/data/b;->a:Ljava/lang/String;

    iput-object v5, v1, Lcom/dianxinos/library/notify/data/b;->b:Ljava/lang/String;

    const-string v4, "revoke"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_2

    :goto_1
    if-eqz v2, :cond_3

    iput-boolean v2, v1, Lcom/dianxinos/library/notify/data/b;->c:Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iput-boolean v2, v1, Lcom/dianxinos/library/notify/data/b;->c:Z

    iput-object v6, v1, Lcom/dianxinos/library/notify/data/b;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/e;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be set \'notify\' field value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/dianxinos/library/notify/data/e;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/e;-><init>()V

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dianxinos/library/notify/data/e;->b:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dianxinos/library/notify/data/e;->a:Ljava/lang/String;

    const-string v2, "textColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/dianxinos/library/notify/data/e;->c:I

    return-object v1
.end method

.method private static i(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/d;
    .locals 4

    new-instance v0, Lcom/dianxinos/library/notify/data/d;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/data/d;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "bkgColor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/dianxinos/library/notify/data/d;->a:I

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dianxinos/library/notify/data/d;->b:Ljava/lang/String;

    const-string v2, "textColor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dianxinos/library/notify/data/d;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    iput v1, v0, Lcom/dianxinos/library/notify/data/d;->c:I

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/g;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be set \'share\' field value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/dianxinos/library/notify/data/g;

    invoke-direct {v2}, Lcom/dianxinos/library/notify/data/g;-><init>()V

    const-string v0, "flag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/dianxinos/library/notify/data/g;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/dianxinos/library/notify/data/g;->b:Ljava/lang/String;

    const-string v0, "textColor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/dianxinos/library/notify/data/g;->c:I

    return-object v2
.end method

.method private static k(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/f;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/dianxinos/library/notify/data/f;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/f;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "vibrate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/dianxinos/library/notify/data/f;->b:Ljava/lang/Boolean;

    :goto_1
    const-string v3, "voice"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/dianxinos/library/notify/data/f;->a:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, v1, Lcom/dianxinos/library/notify/data/f;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    iput-object v0, v1, Lcom/dianxinos/library/notify/data/f;->a:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private static l(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/h;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be set \'toolbox\' field value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/dianxinos/library/notify/data/h;

    invoke-direct {v1}, Lcom/dianxinos/library/notify/data/h;-><init>()V

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dianxinos/library/notify/data/h;->a:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dianxinos/library/notify/data/h;->b:Ljava/lang/String;

    return-object v1
.end method
