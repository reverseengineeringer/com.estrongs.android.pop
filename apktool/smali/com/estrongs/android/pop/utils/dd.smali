.class public Lcom/estrongs/android/pop/utils/dd;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->aq:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/utils/de;->a:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v4, "in"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "india"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "india_quikr"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const-string v4, "Quikr"

    iput-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const-string v4, "india_quikr_url"

    const-string v5, "http://goo.gl/gTCquG"

    invoke-static {v4, v5}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v4, "virtualKey"

    const-string v5, "india"

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aM()Ljava/lang/String;

    move-result-object v4

    const-string v0, "news"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "news"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/de;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0802f2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dg;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "news"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchEngineKey"

    invoke-virtual {v5, v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "weather"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "weather"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/de;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0802f3

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dg;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "weather"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchEngineKey"

    invoke-virtual {v5, v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "facebook"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v5, 0x7f0802e6

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    sget-object v5, Lcom/estrongs/android/util/bc;->a:Ljava/lang/String;

    iput-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v5, "virtualKey"

    const-string v6, "facebook"

    invoke-virtual {v0, v5, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "document"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "document"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/de;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f08019a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dg;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "document"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchEngineKey"

    invoke-virtual {v5, v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v0, Lcom/estrongs/android/pop/z;->am:Z

    if-nez v0, :cond_6

    const-string v0, "video"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "video"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/de;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f08019f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dg;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "video"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchEngineKey"

    invoke-virtual {v5, v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "apk"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "apk"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/de;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f080199

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dg;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "apk"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchEngineKey"

    invoke-virtual {v5, v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v0, "music"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "music"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/de;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0801a0

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dg;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "music"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchEngineKey"

    invoke-virtual {v5, v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v0, "image"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "image"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/de;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0801a2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dg;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "image"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchEngineKey"

    invoke-virtual {v5, v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->aO()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->aP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const-string v3, "all"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/estrongs/android/pop/utils/de;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/utils/dh;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/utils/dh;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v2, "isSearchEngine"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "virtualKey"

    const-string v3, "all"

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "searchEngineKey"

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_2
    sput-boolean v7, Lcom/estrongs/android/pop/utils/de;->a:Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    :try_start_1
    const-string v0, "download"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v4, 0x7f08007f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v4, "virtualKey"

    const-string v5, "download"

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "music"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "apk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "document"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->am:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->v(Z)V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/bc;->b()V

    return-void

    :cond_0
    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/pop/ad;->c(Ljava/lang/String;Z)V

    goto :goto_0
.end method
