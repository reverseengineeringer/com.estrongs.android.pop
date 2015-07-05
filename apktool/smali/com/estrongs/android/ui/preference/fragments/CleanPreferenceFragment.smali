.class public Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/preference/Preference;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/i;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/estrongs/android/ui/preference/fragments/u;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/preference/fragments/u;-><init>(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->a:Landroid/preference/Preference;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b:Landroid/app/ProgressDialog;

    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "cache"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->a:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->a:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/s;-><init>(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "clean_prefer"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->c:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->c:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->c:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/t;-><init>(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method
