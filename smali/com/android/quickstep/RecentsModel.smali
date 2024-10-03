.class public Lcom/android/quickstep/RecentsModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;
.implements Lcom/android/quickstep/util/TaskVisualsChangeListener;
.implements Ls3/f;
.implements Ls3/e;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentsModel$RunningTasksListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/RecentsModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/quickstep/TaskIconCache;

.field private final mTaskList:Lcom/android/quickstep/RecentTasksList;

.field private final mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

.field private final mThumbnailChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/TaskVisualsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/quickstep/r5;->a:Lcom/android/quickstep/r5;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "TaskThumbnailIconCache-"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/RecentsModel;->RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/quickstep/RecentTasksList;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/quickstep/RecentTasksList;-><init>(Lcom/android/launcher3/util/LooperExecutor;Landroid/app/KeyguardManager;Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v0, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/quickstep/TaskIconCache;

    sget-object v3, Lcom/android/quickstep/RecentsModel;->RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v2, p1, v3, v0}, Lcom/android/quickstep/TaskIconCache;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v2, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {v2, p0}, Lcom/android/quickstep/TaskIconCache;->registerTaskVisualsChangeListener(Lcom/android/quickstep/util/TaskVisualsChangeListener;)V

    new-instance v2, Lcom/android/quickstep/TaskThumbnailCache;

    invoke-direct {v2, p1, v3}, Lcom/android/quickstep/TaskThumbnailCache;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/icons/IconProvider;->registerIconChangeListener(Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)Lcom/android/launcher3/util/SafeCloseable;

    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->G(Ls3/f;)V

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo3/b;->H(Ls3/e;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;
    .locals 1

    new-instance v0, Lcom/android/quickstep/RecentsModel;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic b(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/RecentsModel;->lambda$isTaskRemoved$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/RecentsModel;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsModel;->lambda$onTaskStackChangedBackground$1(ILjava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$isTaskRemoved$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private synthetic lambda$onTaskStackChangedBackground$1(ILjava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addThumbnailChangeListener(Lcom/android/quickstep/util/TaskVisualsChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "RecentsModel:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    const-string p1, "  "

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getIconCache()Lcom/android/quickstep/TaskIconCache;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    return-object p0
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

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentTasksList;->getRunningTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getTasks(Ljava/util/function/Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    sget-object v0, Lcom/android/quickstep/RecentsFilterState;->DEFAULT_FILTER:Ljava/util/function/Predicate;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)I

    move-result p0

    return p0
.end method

.method public getTasks(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)I

    move-result p0

    return p0
.end method

.method public getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    return-object p0
.end method

.method public isLoadingTasksInBackground()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentTasksList;->isLoadingTasksInBackground()Z

    move-result p0

    return p0
.end method

.method public isTaskListValid(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->isTaskListValid(I)Z

    move-result p0

    return p0
.end method

.method public isTaskRemoved(ILjava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentTasksList;->onRecentTasksChanged()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    new-instance v0, Lcom/android/quickstep/s5;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/s5;-><init>(ILjava/util/function/Consumer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)I

    return-void
.end method

.method public onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/TaskIconCache;->invalidateCacheEntries(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/TaskVisualsChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/quickstep/util/TaskVisualsChangeListener;->onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNothingIconApplyStatusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    return-void
.end method

.method public onNothingIconForceRenderChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    return-void
.end method

.method public onSystemIconStateChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    return-void
.end method

.method public onTaskIconChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/TaskVisualsChangeListener;

    invoke-interface {v0, p1}, Lcom/android/quickstep/util/TaskVisualsChangeListener;->onTaskIconChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 9

    new-instance v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, v8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V

    iget-object p1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {p1, v8}, Lcom/android/quickstep/TaskThumbnailCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {p0, v8}, Lcom/android/quickstep/TaskIconCache;->onTaskRemoved(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/TaskThumbnailCache;->updateTaskSnapShot(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/TaskVisualsChangeListener;

    invoke-interface {v2, p1, p2}, Lcom/android/quickstep/util/TaskVisualsChangeListener;->onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object p2, v2, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onTaskStackChangedBackground()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->isPreloadingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/quickstep/TaskUtils;->checkCurrentOrManagedUserId(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v2

    new-instance v3, Lcom/android/quickstep/t5;

    invoke-direct {v3, p0, v0}, Lcom/android/quickstep/t5;-><init>(Lcom/android/quickstep/RecentsModel;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onThemedIconChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/icons/IconProvider$IconChangeListener;->onThemedIconChanged()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    :cond_0
    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {p1}, Lcom/android/quickstep/TaskThumbnailCache;->clear()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    :cond_1
    return-void
.end method

.method public registerRunningTasksListener(Lcom/android/quickstep/RecentsModel$RunningTasksListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->registerRunningTasksListener(Lcom/android/quickstep/RecentsModel$RunningTasksListener;)V

    return-void
.end method

.method public removeThumbnailChangeListener(Lcom/android/quickstep/util/TaskVisualsChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRunningTasksListener()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentTasksList;->unregisterRunningTasksListener()V

    return-void
.end method
