.class public Lcom/estrongs/android/pop/esclasses/k;
.super Landroid/content/res/Resources;


# static fields
.field public static a:Z

.field private static b:Lcom/estrongs/android/pop/esclasses/k;


# instance fields
.field private c:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/k;->b:Lcom/estrongs/android/pop/esclasses/k;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/esclasses/k;->a:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/k;->c:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/k;->c:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/estrongs/android/pop/esclasses/k;->a:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/esclasses/k;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/estrongs/android/util/al;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v1, "getCompatibilityInfo"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/android/util/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v2, "setCompatibilityInfo"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/k;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/k;->b:Lcom/estrongs/android/pop/esclasses/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/esclasses/k;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/k;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/k;->b:Lcom/estrongs/android/pop/esclasses/k;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/k;->b:Lcom/estrongs/android/pop/esclasses/k;

    return-object v0
.end method

.method public static b(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/k;
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/esclasses/k;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/k;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/k;->c:Landroid/content/res/Resources;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/k;->c:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-boolean v3, Lcom/estrongs/android/pop/esclasses/k;->a:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->aZ()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/estrongs/android/pop/z;->O:Z

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_4

    iget v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/k;->c:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/esclasses/k;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->c()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "updateConfiguration"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/estrongs/android/pop/esclasses/k;->c:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/k;->a(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/k;->a(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->K:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->K:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->c(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->K:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->K:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->d(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    return-void
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/theme/al;->a(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
