.class public abstract Lcom/android/launcher3/model/BaseLauncherBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;,
        Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;
    }
.end annotation


# instance fields
.field protected final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private mMyBindingId:I

.field protected final mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/LooperExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-object p3, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iput-object p4, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$bindAllApps$1(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$executeCallbacksTask$5(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method private bindWorkspaceAllAtOnce(ZZ)V
    .locals 22

    move-object/from16 v0, p0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v15}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v3, Ln/i;

    invoke-direct {v3, v12}, Ln/i;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v3, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->cardWidgets:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v8, v9

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v3, v9, v7

    new-instance v6, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    iget-object v4, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v5, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    move/from16 v16, v1

    move-object v1, v6

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object v0, v6

    move-object/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move-object v8, v13

    move-object/from16 v18, v9

    move-object v9, v14

    move-object/from16 v19, v13

    move v13, v10

    move-object v10, v11

    move-object/from16 v20, v11

    move-object v11, v12

    move-object/from16 v21, v12

    move-object v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/concurrent/Executor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->access$000(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;ZI)V

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p0

    move v10, v13

    move/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic c([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$bindAllApps$3([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$bindAllApps$0(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$sortWorkspaceItemsSpatially$4(IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$bindAllApps$2(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$bindAllApps$0(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method private static synthetic lambda$bindAllApps$1(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/data/AppInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$bindAllApps$2(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$bindAllApps$3([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$executeCallbacksTask$5(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    const-string p0, "LauncherBinder"

    const-string p1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$sortWorkspaceItemsSpatially$4(IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 2

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v0, v1, :cond_2

    const/16 v1, -0x65

    if-eq v0, v1, :cond_1

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr v0, p0

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v0, p2

    iget p2, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr p2, p0

    iget p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr p0, p1

    add-int/2addr p2, p0

    iget p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    iget p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bindAllApps()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->copyData()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result v1

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Ln/k;->a:Ln/k;

    sget-object v4, Ln/j;->a:Ln/j;

    sget-object v5, Ln/h;->a:Ln/h;

    invoke-static {v3, v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Ln/e;

    invoke-direct {v3, v0, v1, v2}, Ln/e;-><init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bindWorkspace(ZZ)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WORKSPACE_LOADING_OPTIMIZATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/BaseLauncherBinder;->initWorkspaceBinder(ZLcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindCurrentWorkspacePages(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindOtherWorkspacePages()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/BaseLauncherBinder;->bindWorkspaceAllAtOnce(ZZ)V

    :goto_0
    return-void
.end method

.method protected executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Ln/f;

    invoke-direct {v0, p0, p1}, Ln/f;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initWorkspaceBinder(ZLcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, p1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget p1, p1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    new-instance p1, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/util/IntArray;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/LooperIdleLock;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/util/LooperIdleLock;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperIdleLock;->queueIdle()Z

    :cond_0
    return-object v0
.end method

.method protected sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget p0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr p1, p0

    new-instance v0, Ln/g;

    invoke-direct {v0, p1, p0}, Ln/g;-><init>(II)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
