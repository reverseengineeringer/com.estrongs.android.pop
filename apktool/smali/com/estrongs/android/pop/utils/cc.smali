.class public Lcom/estrongs/android/pop/utils/cc;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->b()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "ug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/ch;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "KO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static g()Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    goto :goto_0
.end method
