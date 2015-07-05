.class public Lcom/estrongs/android/ui/preference/FtpServerPreference;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# instance fields
.field a:Lcom/estrongs/android/ui/preference/DirChoosePreference;

.field b:Landroid/preference/EditTextPreference;

.field c:Landroid/preference/Preference;

.field d:Landroid/preference/Preference;

.field e:Landroid/preference/Preference;

.field f:Landroid/preference/CheckBoxPreference;

.field g:I

.field private h:Lcom/estrongs/android/pop/ad;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    iput v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->i:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->j:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/FtpServerPreference;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->j:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/FtpServerPreference;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->h:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method private a()V
    .locals 4

    const v3, 0x7f0b0144

    const-string v0, "ftpsvr_root_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/DirChoosePreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    const-string v0, "ftpsvr_auto_exit"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->f:Landroid/preference/CheckBoxPreference;

    const-string v0, "ftpsvr_account_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->c:Landroid/preference/Preference;

    const-string v0, "ftpsvr_port"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/CustomEditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b:Landroid/preference/EditTextPreference;

    const-string v0, "ftpsvr_charset_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->d:Landroid/preference/Preference;

    const-string v0, "ftpsvr_create_shortcut"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->e:Landroid/preference/Preference;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->T()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->c:Landroid/preference/Preference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->V()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0143

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->U()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b01cd

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_3

    const-string v0, "/"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    if-nez v1, :cond_1

    const-string v1, "/"

    :cond_1
    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/d;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/h;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/preference/i;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/preference/i;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;Lcom/estrongs/android/ftp/k;)V

    invoke-virtual {v0, p0, v1}, Lcom/estrongs/android/ftp/k;->a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->c:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/j;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->W()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->d:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0152

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->d:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/k;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->e:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/m;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->c:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/FtpServerPreference;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a(Ljava/lang/String;)Z

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
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/FtpServerPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "/sdcard/"

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->i:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b01b3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x7

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

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->setTheme(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->requestWindowFeature(I)Z

    :cond_2
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f020218

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->h:Lcom/estrongs/android/pop/ad;

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/cl;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->addPreferencesFromResource(I)V

    :goto_0
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
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0300e0

    invoke-virtual {v0, v4, v1}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201f6

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a()V

    return-void

    :cond_5
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000d

    new-instance v2, Lcom/estrongs/android/ui/preference/o;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/o;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000e

    new-instance v2, Lcom/estrongs/android/ui/preference/n;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/n;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/ui/preference/f;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/f;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/preference/p;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/p;-><init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    const v3, 0x7f0b0563

    :try_start_0
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    const v0, 0x7f0a02bb

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02bf

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02bc

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b006b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0191

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method
