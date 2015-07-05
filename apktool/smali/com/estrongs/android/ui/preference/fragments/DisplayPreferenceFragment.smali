.class public Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/estrongs/android/pop/ad;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/os/Handler;

.field private e:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/i;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->e:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->e:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->am()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ak()Z

    new-instance v0, Lcom/estrongs/android/ui/preference/fragments/aa;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/preference/fragments/aa;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->e:Landroid/preference/Preference$OnPreferenceChangeListener;

    const-string v0, "use_xlarge_layout"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/esclasses/k;->a:Z

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/estrongs/android/pop/z;->O:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aZ()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/ab;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    const-string v0, "show_pcs_drive"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/estrongs/android/pop/z;->N:Z

    if-eqz v1, :cond_c

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/ac;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    :goto_1
    const-string v1, "show_sdcard_notification"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/ad;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/ad;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v1, "hidden_file"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/ae;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/ae;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v1, "show_select_button"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->b:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->b:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->b:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    const-string v1, "show_windows_button"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->am()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    const-string v1, "show_disk_usage"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->N()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_6
    const-string v1, "history_dir_only"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/af;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/af;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    const-string v1, "show_disk_remain"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->P()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_8
    const-string v2, "show_usb_prompt"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->Q()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v3, Lcom/estrongs/android/ui/preference/fragments/ah;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/preference/fragments/ah;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_9
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_a

    const-string v3, "others"

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    :try_start_0
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_a
    :goto_2
    const-string v2, "language_setting"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/ui/preference/ListPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v6, 0x7f0b0294

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    :goto_3
    array-length v6, v4

    if-ge v3, v6, :cond_d

    aget-object v6, v4, v3

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    const-string v1, "others"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_c
    const-string v1, "file"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v2, v5}, Lcom/estrongs/android/ui/preference/ListPreference;->a([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/ad;->B()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_e

    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e
    new-instance v3, Lcom/estrongs/android/ui/preference/fragments/ai;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/preference/fragments/ai;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-boolean v3, Lcom/estrongs/android/pop/z;->Q:Z

    if-eqz v3, :cond_f

    :try_start_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_f
    :goto_4
    sget-boolean v2, Lcom/estrongs/android/pop/z;->aj:Z

    if-eqz v2, :cond_10

    :try_start_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_10
    :goto_5
    sget-boolean v1, Lcom/estrongs/android/pop/z;->W:Z

    if-eqz v1, :cond_11

    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_11
    :goto_6
    const-string v0, "thumbnail"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a(Ljava/lang/String;)V

    const-string v0, "hidden_file"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a(Ljava/lang/String;)V

    const-string v0, "show_select_button"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a(Ljava/lang/String;)V

    const-string v0, "show_windows_button"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a(Ljava/lang/String;)V

    const-string v0, "toolbar_setting_show_name"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a(Ljava/lang/String;)V

    const-string v0, "scroll_thumb"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a(Ljava/lang/String;)V

    const-string v0, "sdcard_size"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_4
.end method
