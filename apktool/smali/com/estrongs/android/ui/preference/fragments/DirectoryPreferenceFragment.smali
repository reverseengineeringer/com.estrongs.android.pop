.class public Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/m;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/estrongs/android/pop/ad;

.field private b:Landroid/preference/EditTextPreference;

.field private c:Landroid/preference/EditTextPreference;

.field private d:Landroid/preference/EditTextPreference;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->f:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->f:I

    return p1
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0803e7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0804ac

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080229

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/ab;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/ab;-><init>(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080225

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/aa;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/aa;-><init>(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "/sdcard/"

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->f:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "TianYu"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0804ab

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/m;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    sget-object v1, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v2, "TianYu"

    if-eq v0, v2, :cond_0

    const-string v0, "root_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/x;-><init>(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v1

    const-string v0, "bt_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/estrongs/android/pop/z;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/y;-><init>(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v1

    const-string v0, "download_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->d:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/z;-><init>(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
