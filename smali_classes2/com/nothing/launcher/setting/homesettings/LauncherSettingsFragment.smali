.class public Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;
.super Lcom/nothing/launcher/setting/BaseSettingsFragment;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/launcher/setting/BaseSettingsFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->h:Z

    return-void
.end method

.method public static synthetic c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->h(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private createHighlighter()Lcom/android/launcher3/settings/PreferenceHighlighter;
    .locals 5

    iget-object v0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v4, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->g:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter;

    iget-object p0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/android/launcher3/settings/PreferenceHighlighter;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/Preference;)V

    :cond_2
    return-object v1
.end method

.method public static synthetic d(Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->f(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->g(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic f(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/a;->d(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic g(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lz4/a;->j(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic h(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "com.android.launcher3.prefs"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const v0, 0x7f150010

    invoke-virtual {p0, v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string p1, "pref_set_default"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lp4/a;

    invoke-direct {v0, p0}, Lp4/a;-><init>(Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    const-string p1, "pref_edit_hidden_apps"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v0, Lp4/b;

    invoke-direct {v0, p0}, Lp4/b;-><init>(Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    return-void
.end method

.method private requestAccessibilityFocus(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Lp4/c;

    invoke-direct {p0, p1}, Lp4/c;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDeveloperOption()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/config/FeatureFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->hasPlugins(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->i:Landroidx/preference/Preference;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object p0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->i:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method protected getParentKeyForPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initPreference(Landroidx/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "flag_toggler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "pref_allowRotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "pref_developer_options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/config/FeatureFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_1
    sget-object p1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    return v3

    :pswitch_2
    iput-object p1, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->i:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->updateDeveloperOption()Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7711ebf3 -> :sswitch_2
        -0x2f13c735 -> :sswitch_1
        0x60c829cb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->g:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->g:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->getParentKeyForPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->h:Z

    :cond_2
    invoke-direct {p0, p2}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->updateDeveloperOption()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->createHighlighter()Lcom/android/launcher3/settings/PreferenceHighlighter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->h:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->requestAccessibilityFocus(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->h:Z

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
