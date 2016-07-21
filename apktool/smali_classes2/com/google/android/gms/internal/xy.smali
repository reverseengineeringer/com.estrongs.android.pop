.class final Lcom/google/android/gms/internal/xy;
.super Ljava/lang/Object;


# direct methods
.method static a(ILorg/json/JSONArray;[Lcom/google/android/gms/internal/n;Ljava/util/Set;)Lcom/google/android/gms/internal/n;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONArray;",
            "[",
            "Lcom/google/android/gms/internal/n;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/n;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cycle detected. Current value reference: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  Previous value references: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xy;->b(Ljava/lang/String;)V

    :cond_0
    const-string v0, "values"

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aget-object v2, p2, p0

    if-eqz v2, :cond_1

    aget-object v0, p2, p0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/android/gms/internal/n;

    invoke-direct {v3}, Lcom/google/android/gms/internal/n;-><init>()V

    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/json/JSONArray;

    const/4 v2, 0x2

    iput v2, v3, Lcom/google/android/gms/internal/n;->a:I

    iput-boolean v7, v3, Lcom/google/android/gms/internal/n;->l:Z

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/n;

    iput-object v2, v3, Lcom/google/android/gms/internal/n;->c:[Lcom/google/android/gms/internal/n;

    :goto_1
    iget-object v2, v3, Lcom/google/android/gms/internal/n;->c:[Lcom/google/android/gms/internal/n;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, v3, Lcom/google/android/gms/internal/n;->c:[Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4, p1, p2, p3}, Lcom/google/android/gms/internal/xy;->a(ILorg/json/JSONArray;[Lcom/google/android/gms/internal/n;Ljava/util/Set;)Lcom/google/android/gms/internal/n;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "escaping"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v3, Lcom/google/android/gms/internal/n;->k:[I

    move v2, v1

    :goto_2
    iget-object v5, v3, Lcom/google/android/gms/internal/n;->k:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, v3, Lcom/google/android/gms/internal/n;->k:[I

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string v2, "function_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x5

    iput v1, v3, Lcom/google/android/gms/internal/n;->a:I

    const-string v1, "function_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/n;->g:Ljava/lang/String;

    :cond_4
    :goto_3
    aput-object v3, p2, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_0

    :cond_5
    const-string v2, "macro_reference"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x4

    iput v1, v3, Lcom/google/android/gms/internal/n;->a:I

    iput-boolean v7, v3, Lcom/google/android/gms/internal/n;->l:Z

    const-string v1, "macro_reference"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/xy;->a(ILorg/json/JSONArray;[Lcom/google/android/gms/internal/n;Ljava/util/Set;)Lcom/google/android/gms/internal/n;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ea;->a(Lcom/google/android/gms/internal/n;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/n;->f:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v2, "template_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    iput v2, v3, Lcom/google/android/gms/internal/n;->a:I

    iput-boolean v7, v3, Lcom/google/android/gms/internal/n;->l:Z

    const-string v2, "template_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/n;

    iput-object v2, v3, Lcom/google/android/gms/internal/n;->j:[Lcom/google/android/gms/internal/n;

    :goto_4
    iget-object v2, v3, Lcom/google/android/gms/internal/n;->j:[Lcom/google/android/gms/internal/n;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, v3, Lcom/google/android/gms/internal/n;->j:[Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4, p1, p2, p3}, Lcom/google/android/gms/internal/xy;->a(ILorg/json/JSONArray;[Lcom/google/android/gms/internal/n;Ljava/util/Set;)Lcom/google/android/gms/internal/n;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x3

    iput v2, v3, Lcom/google/android/gms/internal/n;->a:I

    iput-boolean v7, v3, Lcom/google/android/gms/internal/n;->l:Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    new-array v4, v2, [Lcom/google/android/gms/internal/n;

    iput-object v4, v3, Lcom/google/android/gms/internal/n;->d:[Lcom/google/android/gms/internal/n;

    new-array v2, v2, [Lcom/google/android/gms/internal/n;

    iput-object v2, v3, Lcom/google/android/gms/internal/n;->e:[Lcom/google/android/gms/internal/n;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/n;->d:[Lcom/google/android/gms/internal/n;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/internal/xy;->a(ILorg/json/JSONArray;[Lcom/google/android/gms/internal/n;Ljava/util/Set;)Lcom/google/android/gms/internal/n;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v5, v3, Lcom/google/android/gms/internal/n;->e:[Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/gms/internal/xy;->a(ILorg/json/JSONArray;[Lcom/google/android/gms/internal/n;Ljava/util/Set;)Lcom/google/android/gms/internal/n;

    move-result-object v1

    aput-object v1, v5, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/n;->b:Ljava/lang/String;

    iput v7, v3, Lcom/google/android/gms/internal/n;->a:I

    goto/16 :goto_3

    :cond_9
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/android/gms/internal/n;->i:Z

    const/16 v0, 0x8

    iput v0, v3, Lcom/google/android/gms/internal/n;->a:I

    goto/16 :goto_3

    :cond_a
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v3, Lcom/google/android/gms/internal/n;->h:J

    const/4 v0, 0x6

    iput v0, v3, Lcom/google/android/gms/internal/n;->a:I

    goto/16 :goto_3

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xy;->b(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;[Lcom/google/android/gms/internal/n;I)Lcom/google/android/gms/internal/yj;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/yj;->a()Lcom/google/android/gms/internal/yk;

    move-result-object v3

    const-string v0, "property"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    const-string v1, "properties"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "key"

    invoke-static {p2, v1, v5}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "value"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "value"

    invoke-static {p3, v0, v5}, Lcom/google/android/gms/internal/xy;->a([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/n;

    sget-object v5, Lcom/google/android/gms/internal/zzae;->zzgv:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/n;)Lcom/google/android/gms/internal/yk;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;Lcom/google/android/gms/internal/n;)Lcom/google/android/gms/internal/yk;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/yk;->a()Lcom/google/android/gms/internal/yj;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/internal/yl;
    .locals 9

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/google/android/gms/internal/yl;->a()Lcom/google/android/gms/internal/ym;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONObject;)[Lcom/google/android/gms/internal/n;

    move-result-object v4

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "tags"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6, v1, v5, v4}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;[Lcom/google/android/gms/internal/n;)Ljava/util/List;

    move-result-object v6

    const-string v7, "predicates"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7, v1, v5, v4}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;[Lcom/google/android/gms/internal/n;)Ljava/util/List;

    move-result-object v7

    const-string v8, "macros"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8, v1, v5, v4}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;[Lcom/google/android/gms/internal/n;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yj;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ym;->a(Lcom/google/android/gms/internal/yj;)Lcom/google/android/gms/internal/ym;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzqp$zzg;

    const-string v1, "Resource map not found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqp$zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "rules"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v6, v5, v7, v4}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;[Lcom/google/android/gms/internal/n;)Lcom/google/android/gms/internal/yn;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ym;->a(Lcom/google/android/gms/internal/yn;)Lcom/google/android/gms/internal/ym;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "1"

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ym;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ym;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ym;->a(I)Lcom/google/android/gms/internal/ym;

    const-string v0, "runtime"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ym;->a()Lcom/google/android/gms/internal/yl;

    move-result-object v0

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;[Lcom/google/android/gms/internal/n;)Lcom/google/android/gms/internal/yn;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/yj;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/yj;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/yj;",
            ">;[",
            "Lcom/google/android/gms/internal/n;",
            ")",
            "Lcom/google/android/gms/internal/yn;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/yn;->a()Lcom/google/android/gms/internal/yo;

    move-result-object v3

    const-string v1, "positive_predicate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v1, "negative_predicate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v1, "add_tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v1, "remove_tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v1, "add_tag_rule_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v1, "remove_tag_rule_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v1, "add_macro"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const-string v1, "remove_macro"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v1, "add_macro_rule_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const-string v1, "remove_macro_rule_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yj;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yo;->a(Lcom/google/android/gms/internal/yj;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yj;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yo;->b(Lcom/google/android/gms/internal/yj;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yj;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yo;->c(Lcom/google/android/gms/internal/yj;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yj;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yo;->d(Lcom/google/android/gms/internal/yj;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_4

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aget-object v2, p4, v2

    iget-object v2, v2, Lcom/google/android/gms/internal/n;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/yo;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_5

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aget-object v2, p4, v2

    iget-object v2, v2, Lcom/google/android/gms/internal/n;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/yo;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    if-eqz v10, :cond_6

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yj;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yo;->e(Lcom/google/android/gms/internal/yj;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_6
    if-eqz v11, :cond_7

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_7

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yj;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/yo;->f(Lcom/google/android/gms/internal/yj;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_7
    if-eqz v12, :cond_8

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aget-object v2, p4, v2

    iget-object v2, v2, Lcom/google/android/gms/internal/n;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/yo;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    if-eqz v13, :cond_9

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {v13, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aget-object v2, p4, v2

    iget-object v2, v2, Lcom/google/android/gms/internal/n;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/yo;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/yo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/yo;->a()Lcom/google/android/gms/internal/yn;

    move-result-object v1

    return-object v1
.end method

.method private static a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xy;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    array-length v0, p0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xy;->b(Ljava/lang/String;)V

    :cond_1
    aget-object v0, p0, p1

    return-object v0
.end method

.method static a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;[Lcom/google/android/gms/internal/n;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "[",
            "Lcom/google/android/gms/internal/n;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/yj;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1, p2, p3, v0}, Lcom/google/android/gms/internal/xy;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;[Lcom/google/android/gms/internal/n;I)Lcom/google/android/gms/internal/yj;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static a(Lorg/json/JSONObject;)[Lcom/google/android/gms/internal/n;
    .locals 5

    const/4 v2, 0x0

    const-string v0, "values"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v3, v1, [Lcom/google/android/gms/internal/n;

    move v1, v2

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/internal/xy;->a(ILorg/json/JSONArray;[Lcom/google/android/gms/internal/n;Ljava/util/Set;)Lcom/google/android/gms/internal/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzqp$zzg;

    const-string v1, "Missing Values list"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqp$zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v3
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/bg;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqp$zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqp$zzg;-><init>(Ljava/lang/String;)V

    throw v0
.end method
