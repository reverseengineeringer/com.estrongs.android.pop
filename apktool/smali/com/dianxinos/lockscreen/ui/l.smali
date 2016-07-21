.class public Lcom/dianxinos/lockscreen/ui/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/graphics/Typeface;

.field private static b:Landroid/graphics/Typeface;


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/dianxinos/lockscreen/ui/l;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/lockscreen/ui/l;->a:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/dianxinos/lockscreen/ui/l;->a:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/dianxinos/lockscreen/ui/l;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/lockscreen/ui/l;->a:Landroid/graphics/Typeface;

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/ui/l;->a:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/dianxinos/lockscreen/ui/l;->b:Landroid/graphics/Typeface;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Thin.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/lockscreen/ui/l;->b:Landroid/graphics/Typeface;

    :cond_2
    sget-object v0, Lcom/dianxinos/lockscreen/ui/l;->b:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
