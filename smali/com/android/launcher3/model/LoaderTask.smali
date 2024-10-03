.class public Lcom/android/launcher3/model/LoaderTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final mApp:Lcom/android/launcher3/LauncherAppState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field protected final mCardWidgetLoaderHelper:Lg4/b;

.field private mDbName:Ljava/lang/String;

.field private mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

.field protected final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private mItemsDeleted:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

.field private final mPendingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

.field private mShortcutKeyToPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z

.field private final mTagWithId:Ljava/lang/String;

.field private final mUserCache:Lcom/android/launcher3/pm/UserCache;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

.field protected final mWidgetProvidersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/LauncherAppState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/launcher3/model/LauncherBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iput-object p5, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    sget-object p2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/pm/UserCache;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    sget-object p2, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/pm/InstallSessionHelper;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    new-instance p2, Lg4/b;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lg4/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mCardWidgetLoaderHelper:Lg4/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoaderTask#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mTagWithId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/data/IconRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$loadAllApps$1(Lcom/android/launcher3/model/data/IconRequestInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/LoaderTask;->lambda$markConflictingItemsAsDeleted$3(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$run$0(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/LoaderTask;->lambda$markConflictingItemsAsDeleted$2(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private getTagWithId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mTagWithId:Ljava/lang/String;

    return-object p0
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$loadAllApps$1(Lcom/android/launcher3/model/data/IconRequestInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object p1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/AllAppsList;->updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method private static synthetic lambda$markConflictingItemsAsDeleted$2(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Item info: %s found with invalid container: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$markConflictingItemsAsDeleted$3(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 1

    new-instance v0, Ln/b1;

    invoke-direct {v0, p0, p3}, Ln/b1;-><init>(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-interface {p4, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, p2, p4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method private launcherItemsLoadingBoost(J)V
    .locals 5

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-static {p0}, Ly2/g;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "launcherItemsLoadingBoost"

    invoke-interface {v0, v3, v2}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-interface {v0, p0, v1}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadAllApps()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "b/243688989"

    const-string v1, "loadingAllApps"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/shared/TestProtocol;->testLogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/model/AllAppsList;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v6, v4, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v6

    move v7, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    new-instance v9, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v9, v8, v3, v6}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    new-instance v10, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-direct {v10, v9, v8, v5}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v10, v9, v8, v5}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v3

    invoke-virtual {v6, v7, v3, v5}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/pm/PackageInstallInfo;Z)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v6, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v7

    invoke-direct {v6, v3, v4, v7}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v0, "LoadAllAppsIconsInBulk"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    new-instance v0, Ln/c1;

    invoke-direct {v0, p0}, Ln/c1;-><init>(Lcom/android/launcher3/model/LoaderTask;)V

    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v3}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {v4, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    move v5, v3

    :cond_6
    invoke-virtual {v0, v2, v5}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/model/AllAppsList;->getAndResetChangeFlag()Z

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private loadDeepShortcuts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->hasShortcutHostPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private loadFolderNames()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    iput-object v3, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private loadWorkspaceImpl(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 25
    .param p4    # Lcom/android/launcher3/model/LoaderMemoryLogger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v13, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v13, v15}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result v16

    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v17

    new-instance v12, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v12, v15}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v15}, Lcom/android/launcher3/model/LoaderTask;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadWorkspace: resetting launcher database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "create_empty_db"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadWorkspace: loading default favorites"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "load_default_favorites"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    instance-of v1, v15, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadWorkspace: transform old widgets."

    invoke-static {v1, v2}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "transform_widget_to_card"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_1
    iget-object v11, v14, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v11

    :try_start_0
    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v10

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ln/z0;

    invoke-direct {v1, v0}, Ln/z0;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v9, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v0, 0x0

    invoke-direct {v9, v0, v0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/launcher3/model/FirstScreenBroadcast;

    invoke-direct {v1, v10}, Lcom/android/launcher3/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v1, v14, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v14, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v14, v15}, Lcom/android/launcher3/model/LoaderTask;->getModelDbController(Landroid/content/Context;)Lg4/i;

    move-result-object v2

    new-instance v8, Lcom/android/launcher3/model/LoaderCursor;

    invoke-virtual {v14, v15}, Lcom/android/launcher3/model/LoaderTask;->getContentTable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/model/LoaderCursor;->WORK_SPACE_PROJECTS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, v14, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v8, v1, v2, v3}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;)V

    invoke-virtual {v8}, Landroid/database/CursorWrapper;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "db_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherDatabase()Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->f()Lg4/d;

    move-result-object v0

    invoke-interface {v0}, Lg4/d;->a()Ljava/util/List;

    move-result-object v0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg4/c;

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v2}, Lg4/c;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v2}, Lg4/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lg4/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", user is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lg4/c;->e()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lg4/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :cond_3
    :try_start_3
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iget-object v1, v14, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    iget-object v3, v14, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    iget-object v1, v14, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v3, v14, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    iget-object v5, v14, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v6, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v6, v15, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v18, v1

    iget-object v1, v14, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    move-object/from16 v19, v2

    invoke-static {v6}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto :goto_4

    :cond_4
    move-object/from16 v18, v1

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v18, v1

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object/from16 v1, v18

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    iget-boolean v1, v14, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v1, :cond_7

    :try_start_4
    invoke-virtual {v8}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_7

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p4

    move-object v4, v10

    move/from16 v5, v17

    move-object/from16 p3, v6

    move-object v6, v9

    move-object/from16 v18, v7

    move-object v7, v12

    move-object/from16 v19, v8

    move-object v8, v13

    move-object/from16 v20, v9

    move-object/from16 v9, p3

    move-object/from16 v21, v10

    move-object v10, v0

    move-object/from16 v22, v11

    move/from16 v11, v16

    move-object/from16 v23, v12

    move-object/from16 v12, p1

    move-object/from16 v24, v13

    move-object/from16 v13, v18

    :try_start_5
    invoke-direct/range {v1 .. v13}, Lcom/android/launcher3/model/LoaderTask;->processWorkspaceItem(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/LoaderMemoryLogger;Ljava/util/HashMap;ZLcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/widget/WidgetManagerHelper;Lcom/android/launcher3/util/PackageManagerHelper;Ljava/util/List;Landroid/util/LongSparseArray;ZLjava/util/List;Ljava/util/Map;)V

    move-object/from16 v6, p3

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v22, v11

    move-object v1, v8

    goto/16 :goto_9

    :cond_7
    move-object/from16 v19, v8

    move-object/from16 v22, v11

    move-object/from16 v1, p2

    move-object v0, v6

    invoke-direct {v14, v0, v1}, Lcom/android/launcher3/model/LoaderTask;->tryLoadWorkspaceIconsInBulk(Ljava/util/List;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static/range {v19 .. v19}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v1, v19

    invoke-direct {v14, v15, v0, v1}, Lcom/android/launcher3/model/LoaderTask;->markConflictingItemsAsDeleted(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderCursor;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v3, v14, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v4, v14, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v3, v14, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v4, v14, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindAllAppsItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDelegate;->markActive()V

    :cond_8
    iget-boolean v0, v14, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_9

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    monitor-exit v22

    return-void

    :cond_9
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_a

    iget-object v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v7, :cond_b

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {v3, v7}, Lb3/k;->a(Lcom/android/launcher3/model/data/FolderInfo;I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v14, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    monitor-exit v22

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v8

    move-object/from16 v22, v11

    :goto_9
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v22, v11

    :goto_a
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_a
.end method

.method private logASplit(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logWidgetInfo(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceProfile available width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", available height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellLayoutBorderSpacePx Horizontal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellLayoutBorderSpacePx Vertical: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellSize: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Widget dimensions:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "minResizeWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "minResizeHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "defaultWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "defaultHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_1

    const-string v1, "targetCellWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "targetCellHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "maxResizeWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "maxResizeHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private markConflictingItemsAsDeleted(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderCursor;)V
    .locals 1

    invoke-static {p2}, Lb3/c;->a(Lcom/android/launcher3/model/BgDataModel;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ln/a1;

    invoke-direct {v0, p3, p2, p1}, Ln/a1;-><init>(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method private processWorkspaceItem(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/LoaderMemoryLogger;Ljava/util/HashMap;ZLcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/widget/WidgetManagerHelper;Lcom/android/launcher3/util/PackageManagerHelper;Ljava/util/List;Landroid/util/LongSparseArray;ZLjava/util/List;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/LoaderCursor;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;Z",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/widget/WidgetManagerHelper;",
            "Lcom/android/launcher3/util/PackageManagerHelper;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;>;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lg4/c;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    :try_start_0
    iget-object v7, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    if-nez v7, :cond_0

    const-string v2, "User has been deleted"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v7, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v8, 0x42c80000    # 100.0f

    const-string v9, "restored"

    const/4 v12, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-eqz v7, :cond_1c

    if-eq v7, v15, :cond_1c

    if-eq v7, v13, :cond_1a

    const/4 v10, 0x5

    if-eq v7, v14, :cond_2

    if-eq v7, v10, :cond_2

    if-eq v7, v12, :cond_1c

    const/16 v2, 0x64

    if-eq v7, v2, :cond_1

    goto/16 :goto_16

    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mCardWidgetLoaderHelper:Lg4/b;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2, v0, v3}, Lg4/b;->c(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;)V

    goto/16 :goto_16

    :cond_2
    if-ne v7, v10, :cond_3

    move v2, v15

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getAppWidgetId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getOptions()I

    move-result v10

    and-int/2addr v10, v15

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v2, "Discarding SearchWidget without packagename "

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :cond_5
    invoke-virtual {v0, v15}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v12

    if-nez v12, :cond_6

    move v12, v15

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v0, v13}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    :goto_2
    new-instance v13, Lcom/android/launcher3/util/ComponentKey;

    iget-object v14, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v13, v10, v14}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v14, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    iget-object v11, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v11}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v11

    invoke-interface {v14, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v11}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v13

    if-nez p10, :cond_9

    if-nez v2, :cond_9

    if-eqz v15, :cond_9

    if-nez v13, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting widget that isn\'t installed anymore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_9
    if-eqz v13, :cond_b

    new-instance v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v4, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v3, v6, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v4, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v4, v4, -0x9

    and-int/lit8 v4, v4, -0x3

    if-nez v15, :cond_a

    if-eqz v12, :cond_a

    or-int/lit8 v4, v4, 0x4

    :cond_a
    iput v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    :goto_3
    const/16 v4, 0x20

    goto/16 :goto_8

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Widget restore pending id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " appWidgetId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " status ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v11, v6, v10}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v12, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v12, v11, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v12, v13}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v3, :cond_c

    const/4 v3, 0x0

    :goto_4
    const/16 v4, 0x8

    goto :goto_5

    :cond_c
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v3, :cond_e

    iget v8, v11, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v4, v8

    iput v4, v11, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_6

    :cond_e
    if-nez p10, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrestored widget removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_6
    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_7
    iput v3, v11, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    move-object v3, v11

    goto/16 :goto_3

    :goto_8
    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    :cond_11
    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getSpanX()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getSpanY()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getOptions()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->options:I

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getAppWidgetSource()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "x"

    if-lez v4, :cond_19

    :try_start_2
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-gtz v4, :cond_12

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_14

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    if-lt v5, v6, :cond_13

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v6, v4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    if-ge v5, v6, :cond_14

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " minSizes not meet: span="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " minSpan="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lcom/android/launcher3/model/LoaderTask;->logWidgetInfo(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v4

    if-nez v4, :cond_15

    const-string v2, "Widget found where container != CONTAINER_DESKTOPnor CONTAINER_HOTSEAT - ignoring!"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_15
    if-nez v2, :cond_17

    iget-object v2, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v4, v5, :cond_17

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    const-string v5, "appWidgetProvider"

    invoke-virtual {v4, v5, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v2

    iget v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    :cond_17
    iget v2, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2, v4, v5}, Lcom/android/launcher3/model/WidgetsModel;->newPendingItemInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    :cond_18
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    goto/16 :goto_16

    :cond_19
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget has invalid size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v4, v0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget v4, v0, Lcom/android/launcher3/model/LoaderCursor;->mTitleIndex:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v4, v0, Lcom/android/launcher3/model/LoaderCursor;->folderTypeIndex:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    iget v4, v0, Lcom/android/launcher3/model/LoaderCursor;->coverValueIndex:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    iput-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getOptions()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    goto/16 :goto_16

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_1d

    const-string v2, "Invalid or null intent"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-wide v10, v0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v7, v10, v11}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(J)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/16 v7, 0x8

    goto :goto_a

    :cond_1e
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_1f

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    goto :goto_b

    :cond_1f
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    :goto_b
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_20

    iget v8, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-eq v8, v15, :cond_20

    const-string v2, "Only legacy shortcuts can have null package"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_20
    new-instance v8, Lcom/android/launcher3/util/ComponentKey;

    iget-object v13, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v8, v10, v13}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object/from16 v13, p12

    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    iget v8, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-nez v8, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apps is hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_23

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v13, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v11, v13}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_22

    goto :goto_c

    :cond_22
    const/4 v8, 0x0

    goto :goto_d

    :cond_23
    :goto_c
    move v8, v15

    :goto_d
    if-eqz v10, :cond_26

    if-eqz v8, :cond_26

    iget v13, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-eq v13, v12, :cond_26

    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v15, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v10, v15}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    goto :goto_e

    :cond_24
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v11, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_25

    const/4 v10, 0x0

    iput v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v13

    const-string v15, "intent"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v15, v12}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    goto :goto_e

    :cond_25
    const-string v2, "Unable to find a launch target"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_26
    :goto_e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2c

    if-nez v8, :cond_2c

    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v10, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package not yet restored: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v11, v10}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v14}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_27

    goto/16 :goto_10

    :cond_27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    or-int/2addr v10, v14

    iput v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v10

    iget v12, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_10

    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrestored app removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_29
    iget-object v9, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v11, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v9

    if-eqz v9, :cond_2a

    or-int/lit8 v7, v7, 0x2

    :goto_f
    move v9, v7

    const/4 v7, 0x1

    goto :goto_11

    :cond_2a
    if-nez p4, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing pkg, will check later: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    new-instance v10, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v12, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v10, v11, v12}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_2c
    :goto_10
    move v9, v7

    const/4 v7, 0x0

    :goto_11
    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/16 v12, 0x8

    and-int/2addr v10, v12

    if-eqz v10, :cond_2d

    const/4 v8, 0x0

    :cond_2d
    if-eqz v8, :cond_2e

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v8

    if-nez v8, :cond_2f

    const/4 v8, 0x1

    goto :goto_12

    :cond_2f
    const/4 v8, 0x0

    :goto_12
    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v10, :cond_30

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    goto/16 :goto_14

    :cond_30
    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-nez v10, :cond_31

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v7, v8, v12}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    goto/16 :goto_14

    :cond_31
    const/4 v7, 0x6

    if-ne v10, v7, :cond_35

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v5, v7}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v7

    iget-wide v12, v0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    move-object/from16 v10, p9

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_34

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    if-nez v5, :cond_32

    const-string v2, "Pinned shortcut not found"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_32
    new-instance v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v5, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getSpanX()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v10

    iput v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getSpanY()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v10

    iput v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    new-instance v12, Lcom/android/launcher3/model/e0;

    invoke-direct {v12, v0}, Lcom/android/launcher3/model/e0;-><init>(Lcom/android/launcher3/model/LoaderCursor;)V

    invoke-virtual {v10, v7, v5, v12}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v12}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_33

    iget v6, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/2addr v6, v14

    iput v6, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_33
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v10, p11

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    goto :goto_13

    :cond_34
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v10, 0x20

    or-int/2addr v7, v10

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_14

    :cond_35
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_36

    iget-object v10, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v11, v10}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_36

    or-int/lit8 v9, v9, 0x4

    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getOptions()I

    move-result v6

    iput v6, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_37

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_37

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v10, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/high16 v6, 0x10200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_37
    :goto_13
    move-object v6, v7

    :goto_14
    if-eqz v6, :cond_3d

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v10, 0x6

    if-eq v7, v10, :cond_38

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object v7

    move-object/from16 v8, p8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    invoke-virtual {v0, v6}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object v5, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getRank()I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/2addr v7, v9

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-eqz p10, :cond_39

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_39

    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v7, 0x1

    or-int/2addr v5, v7

    iput v5, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_39
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/LoaderCursor;->getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-static {v5}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    :cond_3a
    iget v7, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v7, :cond_3c

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v11, v7}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v3, :cond_3b

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_15

    :cond_3b
    if-nez v5, :cond_3c

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v4}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    :cond_3c
    :goto_15
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, v6, v3, v2}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    goto :goto_16

    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected null WorkspaceItemInfo"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Desktop items loading interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method private sanitizeFolders(Z)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "delete_empty_folders"

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private sanitizeWidgetsShortcutsAndPackages()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remove_ghost_widgets"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Ljava/util/Set;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private sendFirstScreenActiveInstallsBroadcast()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1, v0, v3}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/model/FirstScreenBroadcast;->sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tryLoadWorkspaceIconsInBulk(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LoadWorkspaceIconsInBulk"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-boolean v1, v0, Lcom/android/launcher3/model/data/IconRequestInfo;->useFallbackIcon:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/model/data/IconRequestInfo;->launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v3, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/IconRequestInfo;->loadWorkspaceIcon(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private declared-synchronized verifyNotStopped()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getContentTable(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "favorites"

    return-object p0
.end method

.method protected getModelDbController(Landroid/content/Context;)Lg4/i;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected loadWorkspace(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "LoadWorkspace"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspaceImpl(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "loadWorkspace"

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object p3, p3, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelDelegate;->markActive()V

    const-string p1, "workspaceDelegateItems"

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method protected migrateGridIfNeeded(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected prepareLoadWorkspace()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public run()V
    .locals 15

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->getTagWithId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/LoaderMemoryLogger;

    invoke-direct {v1}, Lcom/android/launcher3/model/LoaderMemoryLogger;-><init>()V

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher3/LauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object v5
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v6, "loadtaskbegin"

    invoke-direct {p0, v6}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/model/LoaderTask;->launcherItemsLoadingBoost(J)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->prepareLoadWorkspace()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, ""

    invoke-virtual {p0, v6, v7, v8, v1}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-boolean v8, p0, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    invoke-direct {p0, v8}, Lcom/android/launcher3/model/LoaderTask;->sanitizeFolders(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->sanitizeWidgetsShortcutsAndPackages()V

    const-string v8, "sanitizeData"

    invoke-direct {p0, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v4}, Lcom/android/launcher3/model/BaseLauncherBinder;->bindWorkspace(ZZ)V

    const-string v8, "bindWorkspace"

    invoke-direct {p0, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v8}, Lcom/android/launcher3/model/ModelDelegate;->workspaceLoadComplete()V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->sendFirstScreenActiveInstallsBroadcast()V

    const-string v8, "sendFirstScreenActiveInstallsBroadcast"

    invoke-direct {p0, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string v8, "step 1 complete"

    invoke-direct {p0, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const-string v8, "LoadAllApps"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadAllApps()Ljava/util/List;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v10, "loadAllApps"

    invoke-direct {p0, v10}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    sget-object v10, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v10}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v12, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v13, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v13, v13, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v14, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindAllAppsItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    const-string v11, "allAppsDelegateItems"

    invoke-direct {p0, v11}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v11, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v11}, Lcom/android/launcher3/model/BaseLauncherBinder;->bindAllApps()V

    const-string v11, "bindAllApps"

    invoke-direct {p0, v11}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v11, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/launcher3/model/LoaderTask;->setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V

    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    move-result-object v7

    iget-object v12, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Ln/w0;

    invoke-direct {v13, v12}, Ln/w0;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v11, v8, v7, v13}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string v7, "update icon cache"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const-string v7, "save shortcuts in icon cache"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v7}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ln/w0;

    invoke-direct {v12, v8}, Ln/w0;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v11, v6, v7, v12}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string v6, "step 2 complete"

    invoke-direct {p0, v6}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()Ljava/util/List;

    move-result-object v6

    const-string v7, "loadDeepShortcuts"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v7}, Lcom/android/launcher3/model/LauncherBinder;->bindDeepShortcuts()V

    const-string v7, "bindDeepShortcuts"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const-string v7, "save deep shortcuts in icon cache"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v7}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    sget-object v8, Ln/y0;->a:Ln/y0;

    invoke-virtual {v11, v6, v7, v8}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string v6, "step 3 complete"

    invoke-direct {p0, v6}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v6

    const-string v7, "load widgets"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v7}, Lcom/android/launcher3/model/LauncherBinder;->bindWidgets()V

    const-string v7, "bindWidgets"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v10}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v8, v8, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    const-string v7, "otherDelegateItems"

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    :cond_3
    new-instance v7, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;-><init>(Landroid/content/Context;Z)V

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ln/x0;

    invoke-direct {v9, v8}, Ln/x0;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v11, v6, v7, v9}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string v6, "save widgets in icon cache"

    invoke-direct {p0, v6}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadFolderNames()V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v11}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->finish()V

    const-string v6, "finish icon update"

    invoke-direct {p0, v6}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v6}, Lcom/android/launcher3/model/ModelDelegate;->modelLoadComplete()V

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderMemoryLogger;->clearLogs()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v6

    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v6
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_9
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderMemoryLogger;->printLogs()V

    throw v0

    :catch_1
    const-string v1, "Cancelled"

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/model/LoaderTask;->launcherItemsLoadingBoost(J)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/model/LoaderTask;->launcherItemsLoadingBoost(J)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    throw v0

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method public declared-synchronized stopLocked()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized waitForIdle()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/BaseLauncherBinder;->newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LooperIdleLock;->awaitLocked(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
