.class public Lcom/android/launcher3/pm/InstallSessionTracker;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
    }
.end annotation


# instance fields
.field private mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
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

.field private final mWeakCallback:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/pm/InstallSessionTracker$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakHelper:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/pm/InstallSessionHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;Landroid/content/pm/PackageInstaller;Landroid/content/pm/LauncherApps;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/pm/InstallSessionHelper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/pm/PackageInstaller;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/pm/LauncherApps;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mInstaller:Landroid/content/pm/PackageInstaller;

    iput-object p4, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pm/InstallSessionTracker;Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/pm/InstallSessionTracker;->lambda$getActiveSessionMap$0(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void
.end method

.method private getActiveSessionMap(Lcom/android/launcher3/pm/InstallSessionHelper;)Landroid/util/SparseArray;
    .locals 1
    .param p1    # Lcom/android/launcher3/pm/InstallSessionHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pm/InstallSessionHelper;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lq/b;

    invoke-direct {v0, p0}, Lq/b;-><init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method private synthetic lambda$getActiveSessionMap$0(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private pushSessionDisplayToLauncher(ILcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 3
    .param p2    # Lcom/android/launcher3/pm/InstallSessionHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p2, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getVerifiedSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/pm/InstallSessionTracker;->getActiveSessionMap(Lcom/android/launcher3/pm/InstallSessionHelper;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p3, v0, p1}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onUpdateSessionDisplay(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/pm/InstallSessionTracker;->pushSessionDisplayToLauncher(ILcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->tryQueuePromiseAppIcon(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreated(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/pm/InstallSessionTracker;->pushSessionDisplayToLauncher(ILcom/android/launcher3/pm/InstallSessionHelper;Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onInstallSessionCreated(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/launcher3/pm/InstallSessionHelper;->tryQueuePromiseAppIcon(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinished(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v1, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/pm/InstallSessionTracker;->getActiveSessionMap(Lcom/android/launcher3/pm/InstallSessionHelper;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v2, :cond_2

    iget-object p0, v2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    iget-object v4, v2, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, p0, v4}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromState(ILjava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v2, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-interface {v1, p0, p2}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->removePromiseIconId(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 0

    iget-object p2, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object p0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getVerifiedSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/pm/InstallSessionTracker$Callback;->onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method register()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/LauncherApps;->registerPackageInstallerSessionCallback(Ljava/util/concurrent/Executor;Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps;->unregisterPackageInstallerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method
