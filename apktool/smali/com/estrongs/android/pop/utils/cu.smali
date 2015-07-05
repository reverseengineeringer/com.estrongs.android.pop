.class public Lcom/estrongs/android/pop/utils/cu;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;"
        }
    .end annotation

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

    sput-boolean v0, Lcom/estrongs/android/pop/utils/cv;->a:Z

    const-string v0, "download"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v4, 0x7f0b001f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v4, "virtualKey"

    const-string v5, "download"

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aL()Ljava/lang/String;

    move-result-object v4

    const-string v0, "news"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "news"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0b045a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "news"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "weather"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "weather"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0b0459

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "weather"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "facebook"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v5, 0x7f0b00ab

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    sget-object v5, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

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

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0b0060

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "document"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v0, Lcom/estrongs/android/pop/z;->am:Z

    if-nez v0, :cond_6

    const-string v0, "video"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "video"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0b0061

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "video"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "apk"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "apk"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0b005f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "apk"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v0, "music"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "music"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    new-instance v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v6, 0x7f0b005e

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v6, "music"

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v0, "image"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/ad;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "image"

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v4, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    const v5, 0x7f0b005d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    iput-object v0, v4, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v0, "virtualKey"

    const-string v5, "image"

    invoke-virtual {v4, v0, v5}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->aN()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->aO()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const-string v3, "all"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/estrongs/android/pop/utils/cv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/utils/cy;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/utils/cy;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v2, "isSearchEngine"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "virtualKey"

    const-string v3, "all"

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/utils/cv;->a:Z

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
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

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->w(Z)V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/ay;->b()V

    return-void

    :cond_0
    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/pop/ad;->c(Ljava/lang/String;Z)V

    goto :goto_0
.end method
