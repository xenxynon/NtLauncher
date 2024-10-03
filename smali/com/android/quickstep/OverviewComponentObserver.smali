.class public final Lcom/android/quickstep/OverviewComponentObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverviewComponentObserver"


# instance fields
.field private mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private final mConfigChangesMap:Landroid/util/SparseIntArray;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentHomeIntent:Landroid/content/Intent;

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private final mFallbackIntent:Landroid/content/Intent;

.field private mIsDefaultHome:Z

.field private mIsHomeAndOverviewSame:Z

.field private mIsHomeDisabled:Z

.field private final mMyHomeIntent:Landroid/content/Intent;

.field private final mOtherHomeAppUpdateReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mOverviewChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOverviewIntent:Landroid/content/Intent;

.field private final mSetupWizardPkg:Ljava/lang/String;

.field private mUpdateRegisteredPackage:Ljava/lang/String;

.field private final mUserPreferenceChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/quickstep/e3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/e3;-><init>(Lcom/android/quickstep/OverviewComponentObserver;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUserPreferenceChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/quickstep/e3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/e3;-><init>(Lcom/android/quickstep/OverviewComponentObserver;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mConfigChangesMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/quickstep/g3;->g:Lcom/android/quickstep/g3;

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewChangeListener:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {}, Lcom/android/quickstep/OverviewComponentObserver;->createHomeIntent()Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/ComponentName;->hashCode()I

    move-result v4

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v2, 0x7f120246

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mSetupWizardPkg:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/OverviewComponentObserver;->mFallbackIntent:Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constructing: mCurrentHomeIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n, mMyHomeIntent = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n, mFallbackIntent = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OverviewComponentObserver"

    invoke-static {v1, p2}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result p2

    iget p1, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUserPreferenceChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewComponentObserver;->updateOverviewTargets(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OverviewComponentObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewComponentObserver;->updateOverviewTargets(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/OverviewComponentObserver;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/OverviewComponentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->lambda$updateOverviewTargets$1()V

    return-void
.end method

.method private static createHomeIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/android/quickstep/OverviewComponentObserver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewComponentObserver;->lambda$updateOverviewTargets$2(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$updateOverviewTargets$1()V
    .locals 4

    const-string v0, "OverviewComponentObserver"

    const-string v1, "callback for default launcher changing is executing"

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateOverviewTargets$2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/quickstep/d3;

    invoke-direct {p1, p0}, Lcom/android/quickstep/d3;-><init>(Lcom/android/quickstep/OverviewComponentObserver;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static startHomeIntentSafely(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/android/quickstep/OverviewComponentObserver;->createHomeIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public static startHomeIntentSafely(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/quickstep/OverviewComponentObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    invoke-static {p0, v2, p1}, Lcom/android/quickstep/OverviewComponentObserver;->startHomeIntentSafely(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private unregisterOtherHomeAppUpdateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateOverviewTargets(Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mSetupWizardPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOverviewTargets: sourceIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defaultHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHomeDisabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDefaultHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverviewComponentObserver"

    invoke-static {v2, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/quickstep/BaseActivityInterface;->onAssistantVisibilityChanged(F)V

    :cond_1
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_2
    new-instance v1, Lcom/android/quickstep/f3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/f3;-><init>(Lcom/android/quickstep/OverviewComponentObserver;)V

    sget-object v4, Ly4/b;->h:Ly4/b;

    iget-boolean v5, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    invoke-virtual {v4, p1, v0, v1, v5}, Ly4/b;->i(Landroid/content/Intent;Landroid/content/ComponentName;Ljava/util/function/Consumer;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOverviewTargets: mIsHomeDisabled="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultHomeNull="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsDefaultHome="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    iget-boolean p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    if-eqz p1, :cond_5

    :cond_4
    sget-object p1, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iput-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    iget-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/android/quickstep/FallbackActivityInterface;->INSTANCE:Lcom/android/quickstep/FallbackActivityInterface;

    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iput-boolean v3, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    iget-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mFallbackIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateOverviewTargets:  [use fallback home] --> mIsHomeAndOverviewSame = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mOverviewIntent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n, mCurrentHomeIntent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewChangeListener:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method canHandleConfigChanges(Landroid/content/ComponentName;I)Z
    .locals 3

    and-int/lit16 v0, p2, 0x480

    const/4 v1, 0x1

    const/16 v2, 0x480

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mConfigChangesMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_1

    not-int p0, p0

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "OverviewComponentObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isDefaultHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isHomeDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  homeAndOverviewSame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  overviewIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  homeIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getOverviewIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    return-object p0
.end method

.method getOverviewIntentIgnoreSysUiState()Landroid/content/Intent;
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method public isHomeAndOverviewSame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    return p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUserPreferenceChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    return-void
.end method

.method public onSystemUiStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/OverviewComponentObserver;->updateOverviewTargets(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setOverviewChangeListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewChangeListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public writeToProto(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->newBuilder()Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->setOverviewActivityStarted(Z)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    iget-object p0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->setOverviewActivityResumed(Z)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    return-void
.end method
