.class public Lcom/android/launcher3/graphics/GridCustomizationsProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
    }
.end annotation


# instance fields
.field private final mActivePreviews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lh3/a;",
            "Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mGCCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/launcher3/graphics/b;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/b;-><init>(Lcom/android/launcher3/graphics/GridCustomizationsProvider;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mGCCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/graphics/GridCustomizationsProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->eliminateObsoletePreviews()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    return-void
.end method

.method private declared-synchronized destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    iget-boolean v0, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    iget-object v0, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/graphics/c;

    invoke-direct {v2, v1}, Lcom/android/launcher3/graphics/c;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getNTBinder()Lh3/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    sget-boolean v1, Ly2/e;->c:Z

    if-eqz v1, :cond_2

    const-string v1, "GridCustomizationsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroyed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, p1, :cond_1

    const-string v3, "remove"

    goto :goto_0

    :cond_1
    const-string v3, "not remove"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from activePreview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-ne v0, p1, :cond_3

    iget-object p1, p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getNTBinder()Lh3/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->removeActivePreview(Lh3/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized eliminateObsoletePreviews()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GridCustomizationsProvider"

    const-string v1, "eliminateObsoletePreviews: activePreviews is empty"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GridCustomizationsProvider"

    const-string v1, "eliminateObsoletePreviews: cannot get any process info"

    invoke-static {v0, v1}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/a;

    invoke-virtual {v1}, Lh3/a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/a;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lh3/a;->c()I

    move-result v3

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v3, v4, :cond_6

    :cond_4
    sget-boolean v3, Ly2/e;->c:Z

    if-eqz v3, :cond_5

    const-string v3, "GridCustomizationsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eliminateObsoletePreviews: recycling manually, binder is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", observer is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    invoke-direct {p0, v1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "nt_calling_package"

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nt_calling_pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lg3/c;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lg3/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getNTBinder()Lh3/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    new-instance p1, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;-><init>(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getNTBinder()Lh3/a;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->putActivePreview(Lh3/a;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadAsync()V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "surface_package"

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Landroid/os/Messenger;

    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v1, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput-object v1, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v1, "callback"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_0
    :try_start_2
    const-string v2, "GridCustomizationsProvider"

    const-string v3, "Unable to generate preview"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->destroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private putActivePreview(Lh3/a;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mGCCallback:Ljava/lang/Runnable;

    invoke-static {p1}, Li3/a;->g(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addGcWatcher "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mGCCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridCustomizationsProvider"

    invoke-static {p1, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeActivePreview(Lh3/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivePreviews:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mGCCallback:Ljava/lang/Runnable;

    invoke-static {p1}, Li3/a;->h(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeGcWatcher "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mGCCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridCustomizationsProvider"

    invoke-static {p1, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.BIND_WALLPAPER"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz p2, :cond_2

    const-string p2, "get_preview"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->getPreview(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "vnd.android.cursor.dir/launcher_grid"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 2

    sget-object v0, Lo3/c;->a:Lo3/c;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Lo3/c;->b(Landroid/app/Application;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mActivityManager:Landroid/app/ActivityManager;

    const/4 p0, 0x1

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    iget-object p0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->mGCCallback:Ljava/lang/Runnable;

    invoke-static {p0}, Ly2/c;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "/default_icon_pack"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p3

    invoke-virtual {p3}, Lo3/b;->D()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    new-instance p5, Lcom/android/launcher3/icons/BaseIconFactory;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f07012f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {p5, v0, v1, p0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    move p0, v0

    goto :goto_1

    :sswitch_0
    const-string p0, "THEMED_ICONS_NOTHING"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_1
    const-string p0, "SYSTEM_ICONS"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string p0, "THEMED_ICONS"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating icon preview of constructing a third-party icon pack "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly2/e;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0, p3, p5, p4}, Lo3/b;->i(Ljava/lang/String;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    :cond_4
    move p0, v0

    goto :goto_2

    :pswitch_0
    const p0, 0x7f080300

    goto :goto_2

    :pswitch_1
    const p0, 0x7f0802f8

    goto :goto_2

    :pswitch_2
    const p0, 0x7f0802ff

    :goto_2
    new-instance p1, Landroid/database/MatrixCursor;

    const-string p4, "icon_pack_name"

    const-string p5, "icon_pack_icon_res"

    const-string v1, "icon_pack_tint_color"

    const-string v2, "icon_pack_icon_blob"

    filled-new-array {p4, p5, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p5, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x75e9028a -> :sswitch_2
        -0x546f7b16 -> :sswitch_1
        0x439b41e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "/icon_themed"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p4, "/set_icon_themed"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string p4, "/default_grid"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const/4 p3, 0x0

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p4

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    const-string v2, "boolean_value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p4, v1, p2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :pswitch_1
    const-string p4, "name"

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->parseAllGridOptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object v4, v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, p3

    :goto_2
    if-nez v3, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p4, v1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cb99fcd -> :sswitch_2
        -0x49eef22b -> :sswitch_1
        0x4d8a16b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
