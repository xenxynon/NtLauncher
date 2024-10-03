.class public final Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Landroidx/preference/PreferenceDataStore;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$1;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mDataStore:Landroidx/preference/PreferenceDataStore;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->lambda$applyTo$2(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->updateMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->getFlagStateFromSharedPrefs(Lcom/android/launcher3/uioverrides/flags/DebugFlag;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->updateSummary(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    return-void
.end method

.method private anyChanged()Z
    .locals 3

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    invoke-direct {p0, v1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->getFlagStateFromSharedPrefs(Lcom/android/launcher3/uioverrides/flags/DebugFlag;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Ljava/util/Set;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->lambda$applyTo$0(Ljava/util/Set;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->lambda$applyTo$1(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    return-void
.end method

.method private getFlagStateFromSharedPrefs(Lcom/android/launcher3/uioverrides/flags/DebugFlag;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->defaultValue:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getEnabledValue(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mDataStore:Landroidx/preference/PreferenceDataStore;

    iget-object p1, p1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyTo$0(Ljava/util/Set;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)I
    .locals 2

    iget-object v0, p2, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private synthetic lambda$applyTo$1(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->updateSummary(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    return-void
.end method

.method private synthetic lambda$applyTo$2(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/android/launcher3/uioverrides/flags/d;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/d;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private updateMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->anyChanged()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateSummary(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 2

    iget-object p0, p2, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->defaultValue:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags$FlagState;->TEAMFOOD:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    if-ne p0, v0, :cond_0

    const-string p0, "<font color=\'blue\'><b>[TEAMFOOD]</b> </font>"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<font color=\'red\'><b>[OVERRIDDEN]</b> </font>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<br>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlags()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/uioverrides/flags/e;

    invoke-direct {v2, v0}, Lcom/android/launcher3/uioverrides/flags/e;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    sget-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->TEAMFOOD_FLAG:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    check-cast v0, Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    new-instance v2, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroid/content/Context;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    iget-object v3, v1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->defaultValue:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    invoke-static {v3}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getEnabledValue(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->getFlagStateFromSharedPrefs(Lcom/android/launcher3/uioverrides/flags/DebugFlag;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, v1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->updateSummary(Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mDataStore:Landroidx/preference/PreferenceDataStore;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    new-instance v3, Lcom/android/launcher3/uioverrides/flags/c;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/launcher3/uioverrides/flags/c;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->updateMenu()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->anyChanged()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0b0249

    const/4 v0, 0x0

    const-string v1, "Apply"

    invoke-interface {p1, v0, p0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const p1, 0x7f0b0249

    if-ne p0, p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Killing launcher process "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to apply new flag values"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlagTogglerPrefFrag"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->anyChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "Flag won\'t be applied until you restart launcher"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
