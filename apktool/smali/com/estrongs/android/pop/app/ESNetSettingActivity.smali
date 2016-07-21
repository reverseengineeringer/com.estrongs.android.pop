.class public final Lcom/estrongs/android/pop/app/ESNetSettingActivity;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# instance fields
.field a:Lcom/estrongs/android/pop/ad;

.field b:Landroid/preference/CheckBoxPreference;

.field c:Landroid/preference/CheckBoxPreference;

.field d:Landroid/view/View;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field private g:Lcom/estrongs/android/ui/theme/at;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v1, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const-string v2, "vland"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "nj820"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const v2, 0x7f090181

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->setTheme(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->requestWindowFeature(I)Z

    :cond_2
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->g:Lcom/estrongs/android/ui/theme/at;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->g:Lcom/estrongs/android/ui/theme/at;

    const v3, 0x7f02038d

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f02038b

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080381

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->a:Lcom/estrongs/android/pop/ad;

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->addPreferencesFromResource(I)V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    const-string v2, "vland"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "nj820"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f030197

    invoke-virtual {v0, v4, v2}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->g:Lcom/estrongs/android/ui/theme/at;

    const v3, 0x7f0203b7

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0802c2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    const-string v0, "random_ap"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/estrongs/android/pop/app/bt;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bt;-><init>(Lcom/estrongs/android/pop/app/ESNetSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "customized_ap"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/estrongs/android/pop/app/bu;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bu;-><init>(Lcom/estrongs/android/pop/app/ESNetSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_5
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
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

    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02038d

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

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onResume()V

    return-void
.end method
