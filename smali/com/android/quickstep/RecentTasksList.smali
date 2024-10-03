.class public Lcom/android/quickstep/RecentTasksList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    }
.end annotation


# static fields
.field private static final INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;


# instance fields
.field private mChangeId:I

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoadingTasksInBackground:Z

.field private final mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field private mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field private mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTasksListener:Lcom/android/quickstep/RecentsModel$RunningTasksListener;

.field private final mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    sput-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/LooperExecutor;Landroid/app/KeyguardManager;Lcom/android/quickstep/SystemUiProxy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iput-object p2, p0, Lcom/android/quickstep/RecentTasksList;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    iput-object p3, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    new-instance p1, Lcom/android/quickstep/RecentTasksList$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/RecentTasksList$1;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    invoke-virtual {p3, p1}, Lcom/android/quickstep/SystemUiProxy;->registerRecentTasksListener(Lcom/android/wm/shell/recents/b;)V

    const p1, 0x7fffffff

    invoke-virtual {p3, p1}, Lcom/android/quickstep/SystemUiProxy;->getRunningTasks(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList;->initRunningTasks(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentTasksList;IZLjava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$4(IZLjava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/RecentTasksList;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList;->onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/quickstep/RecentTasksList;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList;->onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/quickstep/RecentTasksList;)Landroid/app/KeyguardManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->lambda$getTaskKeys$0(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$3(Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method private convertSplitBounds(Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget-object v0, p1, Lcom/android/wm/shell/util/SplitBounds;->g:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/util/SplitBounds;->h:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->o:I

    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->p:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :goto_0
    return-object p0
.end method

.method private copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v1}, Lcom/android/quickstep/util/GroupTask;->copy()Lcom/android/quickstep/util/GroupTask;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private createDesktopTask(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;)Lcom/android/quickstep/util/DesktopTask;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->positionInParent:Landroid/graphics/Point;

    iput-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->positionInParent:Landroid/graphics/Point;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/Task;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/quickstep/util/DesktopTask;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/DesktopTask;-><init>(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public static synthetic d(Lcom/android/quickstep/RecentTasksList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentTasksList;->lambda$invalidateLoadedTasks$5()V

    return-void
.end method

.method public static synthetic e(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$2(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentTasksList;ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->lambda$getTaskKeys$1(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private initRunningTasks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized invalidateLoadedTasks()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/t3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/t3;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic lambda$getTaskKeys$0(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getTaskKeys$1(ILjava/util/function/Consumer;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/RecentTasksList;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/x3;

    invoke-direct {v0, p2, p1}, Lcom/android/quickstep/x3;-><init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$getTasks$2(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getTasks$3(Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/quickstep/z3;->a:Lcom/android/quickstep/z3;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/allapps/v;->a:Lcom/android/launcher3/allapps/v;

    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getTasks$4(IZLjava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->isValidForRequest(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget-object p2, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/w3;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/quickstep/w3;-><init>(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$invalidateLoadedTasks$5()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    return-void
.end method

.method private onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasksListener:Lcom/android/quickstep/RecentsModel$RunningTasksListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/quickstep/RecentsModel$RunningTasksListener;->onRunningTasksChanged()V

    :cond_2
    return-void
.end method

.method private onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasksListener:Lcom/android/quickstep/RecentsModel$RunningTasksListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/quickstep/RecentsModel$RunningTasksListener;->onRunningTasksChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RecentTasksList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mResultsUi=[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget v1, v1, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "-1"

    const-string v3, " t2: (id="

    const-string v4, "    t1: (id="

    const/4 v5, 0x0

    const-string v6, ")"

    const-string v7, "no package)"

    const-string v8, "; package="

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    iget-object v9, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v9}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v5

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v7

    :goto_1
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const v9, 0x7fffffff

    invoke-virtual {p0, v9, v0}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  rawTasks=["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-virtual {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->c()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->d()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iget-object v10, v9, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    iget-object v11, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_3

    :cond_5
    move-object v11, v5

    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_6
    move-object v9, v7

    :goto_4
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_7
    move-object v0, v2

    :goto_5
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v7

    :goto_6
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getRunningTasks()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTaskKeys(ILjava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/u3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/u3;-><init>(Lcom/android/quickstep/RecentTasksList;ILjava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized getTasks(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v0, v6, p1}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->isValidForRequest(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p3, Lcom/android/quickstep/z3;->a:Lcom/android/quickstep/z3;

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p3, Lcom/android/launcher3/allapps/v;->a:Lcom/android/launcher3/allapps/v;

    invoke-static {p3}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/y3;

    invoke-direct {v0, p2, p1}, Lcom/android/quickstep/y3;-><init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v6

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    sget-object v7, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/quickstep/v3;

    move-object v0, v8

    move-object v1, p0

    move v2, v6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/v3;-><init>(Lcom/android/quickstep/RecentTasksList;IZLjava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isLoadingTasksInBackground()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    return p0
.end method

.method public declared-synchronized isTaskListValid(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, p1, v0}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v0, Lcom/android/quickstep/RecentTasksList$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentTasksList$2;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    new-instance v1, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, p2, p3, v2}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    sget-boolean v2, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->f()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/quickstep/RecentTasksList;->createDesktopTask(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;)Lcom/android/quickstep/util/DesktopTask;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->c()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->d()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v4, v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz p3, :cond_1

    new-instance v5, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v5, v4}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_1

    :cond_1
    iget v5, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    const/4 v2, 0x0

    if-eqz v3, :cond_3

    new-instance v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz p3, :cond_2

    new-instance v4, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    move-object v2, v4

    goto :goto_2

    :cond_2
    iget v4, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    :cond_3
    invoke-virtual {p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->a()Lcom/android/wm/shell/util/SplitBounds;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/quickstep/RecentTasksList;->convertSplitBounds(Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    move-result-object p2

    new-instance v3, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {v3, v5, v2, p2}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public onRecentTasksChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentTasksList;->invalidateLoadedTasks()V

    return-void
.end method

.method public registerRunningTasksListener(Lcom/android/quickstep/RecentsModel$RunningTasksListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasksListener:Lcom/android/quickstep/RecentsModel$RunningTasksListener;

    return-void
.end method

.method public unregisterRunningTasksListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasksListener:Lcom/android/quickstep/RecentsModel$RunningTasksListener;

    return-void
.end method
