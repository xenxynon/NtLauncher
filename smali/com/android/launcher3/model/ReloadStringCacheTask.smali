.class public Lcom/android/launcher3/model/ReloadStringCacheTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelDelegate;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/model/ModelDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ReloadStringCacheTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    return-void
.end method

.method private static synthetic lambda$execute$0(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ReloadStringCacheTask;->lambda$execute$0(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/LauncherAppState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/model/BgDataModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/model/AllAppsList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p2

    :try_start_0
    iget-object p1, p0, Lcom/android/launcher3/model/ReloadStringCacheTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object p3, p2, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/model/ModelDelegate;->loadStringCache(Lcom/android/launcher3/model/StringCache;)V

    iget-object p1, p2, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {p1}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object p1

    new-instance p3, Ln/c3;

    invoke-direct {p3, p1}, Ln/c3;-><init>(Lcom/android/launcher3/model/StringCache;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
