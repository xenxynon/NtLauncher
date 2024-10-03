.class public Lcom/android/quickstep/TopTaskTracker;
.super Lcom/android/wm/shell/splitscreen/b$a;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/TopTaskTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TopTaskTracker"


# instance fields
.field mFallbackHomeComponent:Landroid/content/ComponentName;

.field private final mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

.field mMyHomeComponent:Landroid/content/ComponentName;

.field private final mOrderedTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedTaskId:I

.field private mRecentTaskId:I

.field private final mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/quickstep/s7;->a:Lcom/android/quickstep/s7;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/b$a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    invoke-direct {v0}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    invoke-direct {v1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    iput v2, p0, Lcom/android/quickstep/TopTaskTracker;->mRecentTaskId:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stageType:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stageType:I

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/SystemUiProxy;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/b;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->initHomeComponent(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic R()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-static {}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$5()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic S(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskRemoved$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic U(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$3(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic W(Lcom/android/quickstep/TopTaskTracker;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$6(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic X(Landroid/content/Context;)Lcom/android/quickstep/TopTaskTracker;
    .locals 1

    new-instance v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TopTaskTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic Y()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-static {}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$4()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private initHomeComponent(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mMyHomeComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mFallbackHomeComponent:Landroid/content/ComponentName;

    return-void
.end method

.method private isHomeTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mMyHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mFallbackHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getCachedTopTask$4()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getCachedTopTask$5()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getCachedTopTask$6(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskMovedToFront$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskMovedToFront$3(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskRemoved$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/quickstep/z7;->a:Lcom/android/quickstep/z7;

    const-string p1, "getCachedTopTask.true"

    invoke-static {p1, p0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance p1, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/quickstep/y7;->a:Lcom/android/quickstep/y7;

    const-string v0, "getCachedTopTask.false"

    invoke-static {v0, p1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/quickstep/w7;

    invoke-direct {v0, p0}, Lcom/android/quickstep/w7;-><init>(Lcom/android/quickstep/TopTaskTracker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getRecentTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/TopTaskTracker;->mRecentTaskId:I

    return p0
.end method

.method public getRunningSplitTaskIds()[I
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget v1, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-ne p0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stagePosition:I

    const/4 v4, 0x1

    if-nez v0, :cond_1

    aput v1, v2, v3

    aput p0, v2, v4

    goto :goto_0

    :cond_1
    aput v1, v2, v4

    aput p0, v2, v3

    :goto_0
    return-object v2

    :cond_2
    :goto_1
    new-array p0, v3, [I

    return-object p0
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    :goto_0
    iput p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stagePosition:I

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->isHomeTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    const-string v1, "TopTaskTracker"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found recent activity taskId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Lcom/android/quickstep/TopTaskTracker;->mRecentTaskId:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call back onTaskMovedToFront taskId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/quickstep/v7;

    invoke-direct {v1, p1}, Lcom/android/quickstep/v7;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/x7;->a:Lcom/android/quickstep/x7;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/quickstep/u7;

    invoke-direct {v2, v0}, Lcom/android/quickstep/u7;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_3
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/quickstep/t7;

    invoke-direct {v1, p1}, Lcom/android/quickstep/t7;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    iget v0, p0, Lcom/android/quickstep/TopTaskTracker;->mRecentTaskId:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/TopTaskTracker;->mRecentTaskId:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove current recent taskId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TopTaskTracker"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 1

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    :goto_0
    iput p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    return-void

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget p3, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-ne p3, p1, :cond_3

    iput v0, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-ne p2, p1, :cond_4

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    :cond_4
    :goto_2
    return-void
.end method
