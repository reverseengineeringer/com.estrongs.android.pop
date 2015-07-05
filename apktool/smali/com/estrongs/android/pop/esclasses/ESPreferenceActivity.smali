.class public Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;
.super Landroid/preference/PreferenceActivity;


# static fields
.field private static a:Lcom/estrongs/android/pop/esclasses/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->a:Lcom/estrongs/android/pop/esclasses/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/j;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/esclasses/j;->a(ILandroid/preference/PreferenceGroup;)V

    return-void
.end method

.method public declared-synchronized getResources()Landroid/content/res/Resources;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->a:Lcom/estrongs/android/pop/esclasses/k;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->b(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/k;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->a:Lcom/estrongs/android/pop/esclasses/k;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->a:Lcom/estrongs/android/pop/esclasses/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->c()V

    return-void
.end method
