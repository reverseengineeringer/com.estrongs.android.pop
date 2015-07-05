.class public Lcom/estrongs/android/ui/preference/RecyclePreference;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "enable_recycle"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aD()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

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

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/RecyclePreference;->setTheme(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/RecyclePreference;->requestWindowFeature(I)Z

    :cond_2
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f020218

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/RecyclePreference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f050014

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/RecyclePreference;->addPreferencesFromResource(I)V

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
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0300e0

    invoke-virtual {v0, v4, v1}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201ef

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0438

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->a()V

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

    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

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
