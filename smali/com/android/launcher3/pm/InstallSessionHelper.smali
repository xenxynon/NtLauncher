.class public Lcom/android/launcher3/pm/InstallSessionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/pm/InstallSessionHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mInstaller:Landroid/content/pm/PackageInstaller;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPromiseIconIds:Lcom/android/launcher3/util/IntSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSessionVerifiedMap:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lq/a;->a:Lq/a;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method private getPromiseIconIds()Lcom/android/launcher3/util/IntSet;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->PROMISE_ICON_IDS:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntArray;->add(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mPromiseIconIds:Lcom/android/launcher3/util/IntSet;

    return-object p0
.end method

.method public static getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;
    .locals 1
    .param p0    # Landroid/content/pm/PackageInstaller$SessionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private updatePromiseIconPrefs()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->PROMISE_ICON_IDS:Lcom/android/launcher3/ConstantItem;

    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    return-void
.end method

.method private verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 3
    .param p1    # Landroid/content/pm/PackageInstaller$SessionInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->isTrustedPackage(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveSessions()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllVerifiedSessions()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps;->getAllPackageInstallerSessions()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method getVerifiedSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public isTrustedPackage(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v3, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mSessionVerifiedMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public promiseIconAddedForId(I)Z
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public registerInstallTracker(Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Lcom/android/launcher3/pm/InstallSessionTracker;
    .locals 3
    .param p1    # Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/android/launcher3/pm/InstallSessionTracker;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v2, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/launcher3/pm/InstallSessionTracker;-><init>(Lcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;Landroid/content/pm/PackageInstaller;Landroid/content/pm/LauncherApps;)V

    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionTracker;->register()V

    return-object v0
.end method

.method public removePromiseIconId(I)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->updatePromiseIconPrefs()V

    :cond_0
    return-void
.end method

.method tryQueuePromiseAppIcon(Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 3
    .param p1    # Landroid/content/pm/PackageInstaller$SessionInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding package name to install queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallSessionHelper"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getPromiseIconIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    invoke-direct {p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->updatePromiseIconPrefs()V

    :cond_0
    return-void
.end method

.method public verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 1
    .param p1    # Landroid/content/pm/PackageInstaller$SessionInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->verify(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/SessionCommitReceiver;->isAccessibleInstall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object p0, p0, Lcom/android/launcher3/pm/InstallSessionHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
