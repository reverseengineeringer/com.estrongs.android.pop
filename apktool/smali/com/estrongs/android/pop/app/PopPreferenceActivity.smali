.class public final Lcom/estrongs/android/pop/app/PopPreferenceActivity;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# static fields
.field private static E:I

.field static a:Z

.field public static u:Ljava/lang/String;


# instance fields
.field private A:Lcom/estrongs/android/ui/theme/al;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Landroid/os/Handler;

.field b:Lcom/estrongs/android/pop/ad;

.field c:Landroid/preference/EditTextPreference;

.field d:Landroid/preference/EditTextPreference;

.field e:Landroid/preference/EditTextPreference;

.field f:Landroid/preference/CheckBoxPreference;

.field g:Landroid/preference/CheckBoxPreference;

.field h:Landroid/preference/CheckBoxPreference;

.field i:Landroid/preference/CheckBoxPreference;

.field j:Landroid/preference/CheckBoxPreference;

.field k:Landroid/preference/CheckBoxPreference;

.field l:Landroid/preference/CheckBoxPreference;

.field m:Landroid/preference/CheckBoxPreference;

.field n:Landroid/preference/CheckBoxPreference;

.field o:Landroid/preference/Preference;

.field p:Landroid/preference/Preference;

.field q:Landroid/preference/Preference;

.field r:Landroid/preference/Preference;

.field s:Landroid/preference/Preference;

.field t:Landroid/preference/Preference;

.field private v:Landroid/preference/Preference;

.field private w:Landroid/preference/Preference;

.field private x:Landroid/preference/Preference;

.field private y:Landroid/preference/EditTextPreference;

.field private z:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a:Z

    const-string v0, "www.estrongs.com"

    sput-object v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->u:Ljava/lang/String;

    sput v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->E:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->D:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    return p1
.end method

.method private a()V
    .locals 3

    const-string v0, "preference_display_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    sget-boolean v1, Lcom/estrongs/android/pop/z;->Q:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "language_setting"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :cond_0
    :goto_0
    const-string v1, "preference_tools_settings"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    sget-boolean v2, Lcom/estrongs/android/pop/z;->R:Z

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "gesture_settings"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :cond_1
    :goto_1
    sget-boolean v2, Lcom/estrongs/android/pop/z;->T:Z

    if-eqz v2, :cond_2

    :try_start_2
    const-string v2, "downloader_settings"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_2
    sget-boolean v1, Lcom/estrongs/android/pop/z;->Z:Z

    if-eqz v1, :cond_3

    :try_start_3
    const-string v1, "preference_net_settings_category"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    const-string v2, "hided_dirfiles_passwd_enable"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    sget-boolean v1, Lcom/estrongs/android/pop/z;->C:Z

    if-eqz v1, :cond_4

    :try_start_4
    const-string v1, "appmanager_preference"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    const-string v2, "app_root_enhancement"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_4
    sget-boolean v1, Lcom/estrongs/android/pop/z;->m:Z

    if-eqz v1, :cond_5

    :try_start_5
    const-string v1, "preference_about"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    const-string v2, "preference_more_app"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "preference_rate"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_5
    sget-boolean v1, Lcom/estrongs/android/pop/z;->aj:Z

    if-eqz v1, :cond_6

    :try_start_6
    const-string v1, "show_disk_remain"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    :goto_6
    sget-boolean v1, Lcom/estrongs/android/pop/z;->W:Z

    if-eqz v1, :cond_7

    :try_start_7
    const-string v1, "show_pcs_drive"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_7
    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v2

    goto/16 :goto_1

    :catch_7
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/estrongs/android/pop/z;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->x()Ljava/lang/String;

    move-result-object v1

    const-string v0, "app_backup_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/he;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/he;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backup_app_cache"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "root_auto_install"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    const-string v0, "appmanager_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "app_check_update"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "preference_tools_settings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "appmanager_preference"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
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

.method static synthetic c(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->D:Landroid/os/Handler;

    new-instance v3, Lcom/estrongs/android/pop/app/hf;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/hf;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "/sdcard/"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const v0, 0x7f0b01b3

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto/16 :goto_0
.end method

.method private e()V
    .locals 2

    const-string v0, "backupsettings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->s:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->s:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/hp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hp;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "restoresettings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->t:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->t:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/hw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hw;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "enableRemoteSynchronizer"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/app/ie;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ie;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d()V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onContentChanged()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v6, 0x7f0b006f

    const/4 v5, 0x7

    const v8, 0x7f0b0294

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const-string v1, "vland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nj820"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const v1, 0x7f0c0017

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->setTheme(I)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->requestWindowFeature(I)Z

    :cond_2
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->A:Lcom/estrongs/android/ui/theme/al;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->A:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f02021a

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v4, 0x7f020218

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->am()Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->ak()Z

    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    const-string v1, "vland"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "nj820"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0300e0

    invoke-virtual {v0, v5, v1}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->A:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f020087

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    new-instance v0, Lcom/estrongs/android/pop/app/gg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/gg;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/Preference$OnPreferenceChangeListener;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "root_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gt;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "show_sdcard_notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/hg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hg;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "cache"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->o:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->o:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/id;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/id;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "upgrade_check"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->p:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->p:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/if;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/if;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->y:Z

    if-eqz v0, :cond_5

    const-string v0, "update_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "upgrade_auto_check"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->k:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->k:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->k:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v0, "send_statistics"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    const-string v0, "CN"

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/estrongs/android/pop/z;->z:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    const-string v1, "\u7edf\u8ba1"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    const-string v1, "\u53d1\u9001\u7edf\u8ba1\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    const-string v0, "clean_prefer"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->q:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->q:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->q:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/ig;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ig;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->y()Ljava/lang/String;

    move-result-object v1

    const-string v0, "bt_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/estrongs/android/pop/z;->e:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/ih;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ih;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v1

    const-string v0, "download_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/ii;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ii;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_9
    const-string v0, "preference_help"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    const-string v0, "search_engine_default"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/CustomListPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    move v1, v2

    :goto_2
    array-length v6, v4

    if-ge v1, v6, :cond_c

    aget-object v6, v4, v1

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    const-string v0, "update_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_b
    const-string v0, "preference_directory_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_c
    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "auto"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_d
    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v1, Lcom/estrongs/android/pop/app/ij;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/ij;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Lcom/estrongs/android/ui/preference/CustomListPreference;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->k:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/gh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gh;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    :goto_4
    const-string v0, "preference_privacy"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->w:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->w:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/gj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gj;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_rate"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->x:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->x:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/gl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gl;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "1.x"

    :cond_f
    const-string v1, "Market"

    const-string v4, "oem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/estrongs/android/pop/z;->b:Ljava/lang/String;

    if-eqz v4, :cond_10

    sget-object v1, Lcom/estrongs/android/pop/z;->b:Ljava/lang/String;

    :cond_10
    :goto_5
    const-string v4, "\u5de5\u4fe1\u90e8"

    sget-object v5, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v1, "ES"

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    const-string v4, "preference_version"

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "preference_special_thanks_to_translators"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v0, 0x7f0b041b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/estrongs/android/pop/z;->b:Ljava/lang/String;

    if-eqz v0, :cond_21

    move v0, v2

    :goto_6
    if-nez v0, :cond_13

    const-string v0, "none"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_13
    const-string v0, "preference_about"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_7
    const-string v0, "preference_website"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/gm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gm;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_more_app"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/gn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gn;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_feedback"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/go;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/go;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "net_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    const-string v0, "net_passwd_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    const-string v0, "start_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    const-string v0, "hided_dirfiles_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gp;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gq;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gr;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_19
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/gs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gs;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1a
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b()V

    const-string v0, "show_pcs_drive"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-boolean v1, Lcom/estrongs/android/pop/z;->N:Z

    if-eqz v1, :cond_23

    new-instance v1, Lcom/estrongs/android/pop/app/gu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gu;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1b
    :goto_8
    const-string v0, "show_select_button"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_windows_button"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->am()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_disk_usage"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->N()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "history_dir_only"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gv;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "show_disk_remain"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->P()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_usb_prompt"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->Q()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gx;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1c

    const-string v0, "preference_display_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c
    const-string v0, "browser_downloader_disabled"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gy;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "language_setting"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/ListPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_24

    aget-object v3, v1, v2

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1e
    const-string v0, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_1f
    const-string v4, "Market"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    if-eqz v4, :cond_10

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v4, "\u767e\u5ea6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    goto/16 :goto_5

    :cond_20
    const-string v1, "ES"

    goto/16 :goto_5

    :cond_21
    move v0, v3

    goto/16 :goto_6

    :cond_22
    const-string v0, ","

    const-string v5, "\n"

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_23
    const-string v0, "preference_display_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "file"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    :cond_24
    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/preference/ListPreference;->a([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_25

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_25
    new-instance v1, Lcom/estrongs/android/pop/app/gz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gz;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "multithread_copy_enabled"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_26

    new-instance v1, Lcom/estrongs/android/pop/app/hb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hb;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_26
    const-string v0, "use_xlarge_layout"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/estrongs/android/pop/esclasses/k;->a:Z

    if-eqz v1, :cond_27

    sget-boolean v1, Lcom/estrongs/android/pop/z;->O:Z

    if-nez v1, :cond_27

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aZ()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/hc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hc;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_a
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a()V

    const-string v0, "hidden_file"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "gesture_setting_enabled"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "thumbnail"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "show_select_button"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "show_windows_button"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "show_search_engine"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "enable_recycle"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "toolbar_setting_show_name"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "scroll_thumb"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    const-string v0, "sdcard_size"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->D:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/hd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hd;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_27
    const-string v1, "others"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x7f0a02b8

    const v6, 0x7f03009d

    const/4 v5, 0x5

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000d

    new-instance v2, Lcom/estrongs/android/pop/app/hi;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/hi;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000e

    new-instance v2, Lcom/estrongs/android/pop/app/hh;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/hh;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b029b

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000b

    new-instance v3, Lcom/estrongs/android/pop/app/hk;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/hk;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000c

    new-instance v3, Lcom/estrongs/android/pop/app/hj;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/hj;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b029d

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000b

    new-instance v3, Lcom/estrongs/android/pop/app/hm;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/hm;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000c

    new-instance v3, Lcom/estrongs/android/pop/app/hl;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/hl;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :pswitch_5
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0238

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000b

    new-instance v3, Lcom/estrongs/android/pop/app/ho;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/ho;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000c

    new-instance v3, Lcom/estrongs/android/pop/app/hn;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/hn;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a02bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02021a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    const v4, 0x7f0a0191

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f0a02bb

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02be

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02ba

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02c0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02b9

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b02a2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a0193

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b02a3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b02a1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onResume()V

    return-void
.end method
