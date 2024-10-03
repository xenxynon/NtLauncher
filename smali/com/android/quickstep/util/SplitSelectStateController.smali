.class public Lcom/android/quickstep/util/SplitSelectStateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;,
        Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitSelectStateCtor"


# instance fields
.field private mAnimateCurrentTaskDismissal:Z

.field private final mAppPairsController:Lcom/android/quickstep/util/AppPairsController;

.field private final mContext:Landroid/content/Context;

.field private mDepthController:Lcom/android/launcher3/statehandlers/DepthController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDismissingFromSplitPair:Z

.field private mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialStagePosition:I

.field private mInitialTaskId:I

.field private mInitialTaskIntent:Landroid/content/Intent;

.field private mInitialUser:Landroid/os/UserHandle;

.field private mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mRecentTasksModel:Lcom/android/quickstep/RecentsModel;

.field private mRecentsAnimationRunning:Z

.field private mSecondPendingIntent:Landroid/app/PendingIntent;

.field private mSecondTaskId:I

.field private mSecondTaskIntent:Landroid/content/Intent;

.field private mSecondUser:Landroid/os/UserHandle;

.field private final mSplitAnimationController:Lcom/android/quickstep/util/SplitAnimationController;

.field private mSplitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

.field private final mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

.field private final mStateManager:Lcom/android/launcher3/statemanager/StateManager;

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/quickstep/SystemUiProxy;Lcom/android/quickstep/RecentsModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    iput-object p6, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iput-object p3, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iput-object p4, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    iput-object p7, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentTasksModel:Lcom/android/quickstep/RecentsModel;

    new-instance p2, Lcom/android/quickstep/util/SplitAnimationController;

    invoke-direct {p2, p0}, Lcom/android/quickstep/util/SplitAnimationController;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;)V

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitAnimationController:Lcom/android/quickstep/util/SplitAnimationController;

    new-instance p2, Lcom/android/quickstep/util/AppPairsController;

    invoke-direct {p2, p1, p0}, Lcom/android/quickstep/util/AppPairsController;-><init>(Landroid/content/Context;Lcom/android/quickstep/util/SplitSelectStateController;)V

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mAppPairsController:Lcom/android/quickstep/util/AppPairsController;

    new-instance p2, Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-direct {p2, p1}, Lcom/android/quickstep/util/SplitSelectDataHolder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/SplitSelectStateController;Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/SplitSelectStateController;->lambda$findLastActiveTaskAndRunCallback$0(Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/quickstep/views/GroupedTaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statemanager/StateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statehandlers/DepthController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/quickstep/util/SplitSelectStateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return p0
.end method

.method private getLegacyRemoteAdapter(IILjava/util/function/Consumer;)Landroid/view/RemoteAnimationAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    new-instance v1, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;IILjava/util/function/Consumer;)V

    new-instance p0, Landroid/view/RemoteAnimationAdapter;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v6

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x96

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    return-object p0
.end method

.method private getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v3, 0x3000000

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    const/high16 p2, 0x3000000

    invoke-static {p0, v0, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getShellRemoteTransition(IILjava/util/function/Consumer;)Landroid/window/RemoteTransition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/window/RemoteTransition;"
        }
    .end annotation

    new-instance v0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;IILjava/util/function/Consumer;)V

    new-instance p0, Landroid/window/RemoteTransition;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object p1

    const-string p2, "LaunchSplitPair"

    invoke-direct {p0, v0, p1, p2}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    return-object p0
.end method

.method private getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "shortcut_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    new-instance p2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {p2, p0, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create a ShortcutInfo for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitSelectStateCtor"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method private isInitialTaskIntentSet()Z
    .locals 2

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSecondTaskIntentSet()Z
    .locals 2

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$findLastActiveTaskAndRunCallback$0(Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/GroupTask;

    iget-object v3, v2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v3, p1}, Lcom/android/quickstep/util/SplitSelectStateController;->isInstanceOfComponent(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/ComponentKey;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v2, p1}, Lcom/android/quickstep/util/SplitSelectStateController;->isInstanceOfComponent(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/ComponentKey;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private launchIntentOrShortcut(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/ActivityOptions;IIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 15
    .param p8    # Lcom/android/internal/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/quickstep/util/SplitSelectStateController;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v3, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-direct/range {p0 .. p2}, Lcom/android/quickstep/util/SplitSelectStateController;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v10, 0x0

    move/from16 v9, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v5 .. v14}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    :goto_0
    return-void
.end method

.method private launchIntentOrShortcutLegacy(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/ActivityOptions;IIFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 15
    .param p8    # Lcom/android/internal/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/quickstep/util/SplitSelectStateController;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v3, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-direct/range {p0 .. p2}, Lcom/android/quickstep/util/SplitSelectStateController;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v10, 0x0

    move/from16 v9, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v5 .. v14}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_0
    return-void
.end method

.method private launchTasksRefactored(Ljava/util/function/Consumer;ZFLcom/android/internal/logging/InstanceId;)V
    .locals 27
    .param p4    # Lcom/android/internal/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF",
            "Lcom/android/internal/logging/InstanceId;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    :cond_0
    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getSplitLaunchData()Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialTaskId()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSecondTaskId()I

    move-result v13

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object v17

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSecondShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialPendingIntent()Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSecondPendingIntent()Landroid/app/PendingIntent;

    move-result-object v19

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialUserId()I

    move-result v16

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSecondUserId()I

    move-result v20

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialStagePosition()I

    move-result v23

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    sget-boolean v2, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_7

    invoke-direct {v0, v8, v13, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getShellRemoteTransition(IILjava/util/function/Consumer;)Landroid/window/RemoteTransition;

    move-result-object v25

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSplitLaunchType()I

    move-result v1

    if-eqz v1, :cond_6

    if-eq v1, v9, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v14, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/16 v22, 0x0

    move/from16 v24, p3

    move-object/from16 v26, p4

    invoke-virtual/range {v14 .. v26}, Lcom/android/quickstep/SystemUiProxy;->startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_2
    iget-object v9, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move v12, v13

    move-object v13, v0

    move/from16 v14, v23

    move/from16 v15, p3

    move-object/from16 v16, v25

    move-object/from16 v17, p4

    invoke-virtual/range {v9 .. v17}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_3
    iget-object v9, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v14, 0x0

    move-object v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v18

    move/from16 v15, v23

    move/from16 v16, p3

    move-object/from16 v17, v25

    move-object/from16 v18, p4

    invoke-virtual/range {v9 .. v18}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    move-object/from16 v5, v21

    move-object/from16 v6, v18

    move v7, v8

    move-object v8, v0

    move/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, v25

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v9, 0x0

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v18

    move/from16 v10, v23

    move/from16 v11, p3

    move-object/from16 v12, v25

    move-object/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    move v5, v8

    move-object/from16 v6, v18

    move v7, v13

    move-object v8, v0

    move/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, v25

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {v0, v8, v13, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getLegacyRemoteAdapter(IILjava/util/function/Consumer;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v25

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSplitLaunchType()I

    move-result v1

    if-eqz v1, :cond_d

    if-eq v1, v9, :cond_c

    if-eq v1, v7, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v14, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/16 v22, 0x0

    move/from16 v24, p3

    move-object/from16 v26, p4

    invoke-virtual/range {v14 .. v26}, Lcom/android/quickstep/SystemUiProxy;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_9
    iget-object v9, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move v12, v13

    move-object v13, v0

    move/from16 v14, v23

    move/from16 v15, p3

    move-object/from16 v16, v25

    move-object/from16 v17, p4

    invoke-virtual/range {v9 .. v17}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_a
    iget-object v9, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v14, 0x0

    move-object v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v18

    move/from16 v15, v23

    move/from16 v16, p3

    move-object/from16 v17, v25

    move-object/from16 v18, p4

    invoke-virtual/range {v9 .. v18}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_b
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    move-object/from16 v5, v21

    move-object/from16 v6, v18

    move v7, v8

    move-object v8, v0

    move/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, v25

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_c
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v9, 0x0

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v18

    move/from16 v10, v23

    move/from16 v11, p3

    move-object/from16 v12, v25

    move-object/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_d
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    move v5, v8

    move-object/from16 v6, v18

    move v7, v13

    move-object v8, v0

    move/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, v25

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_0
    return-void
.end method

.method private setInitialData(ILcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iput-object p3, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialStagePosition:I

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/SplitSelectDataHolder;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public findLastActiveTaskAndRunCallback(Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/util/ComponentKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentTasksModel:Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/quickstep/util/l0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/util/l0;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method public getActiveSplitStagePosition()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialStagePosition:I

    return p0
.end method

.method public getAppPairsController()Lcom/android/quickstep/util/AppPairsController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mAppPairsController:Lcom/android/quickstep/util/AppPairsController;

    return-object p0
.end method

.method public getFirstFloatingTaskView()Lcom/android/quickstep/views/FloatingTaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    return-object p0
.end method

.method public getInitialTaskId()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getInitialTaskId()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    return p0
.end method

.method public getSecondTaskId()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getSecondTaskId()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    return p0
.end method

.method public getSplitAnimationController()Lcom/android/quickstep/util/SplitAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitAnimationController:Lcom/android/quickstep/util/SplitAnimationController;

    return-object p0
.end method

.method public getSplitEvent()Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-object p0
.end method

.method public isAnimateCurrentTaskDismissal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mAnimateCurrentTaskDismissal:Z

    return p0
.end method

.method public isBothSplitAppsConfirmed()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->isBothSplitAppsConfirmed()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isSecondTaskIntentSet()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDismissingFromSplitPair()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDismissingFromSplitPair:Z

    return p0
.end method

.method public isInstanceOfComponent(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/ComponentKey;)Z
    .locals 3
    .param p1    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    iget-object v1, p2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object p1, p2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isSplitSelectActive()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->isSplitSelectActive()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isSecondTaskIntentSet()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchExistingSplitPair(Lcom/android/quickstep/views/GroupedTaskView;IIILjava/util/function/Consumer;ZF)V
    .locals 9
    .param p1    # Lcom/android/quickstep/views/GroupedTaskView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/GroupedTaskView;",
            "III",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v3, p3

    move-object v2, p5

    move-object v4, p1

    iput-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    if-eqz p6, :cond_0

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    :cond_0
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-boolean v5, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p2, p3, p5}, Lcom/android/quickstep/util/SplitSelectStateController;->getShellRemoteTransition(IILjava/util/function/Consumer;)Landroid/window/RemoteTransition;

    move-result-object v7

    iget-object v0, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v1, p2

    move-object v2, v4

    move v3, p3

    move-object v4, v5

    move v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/SystemUiProxy;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3, p5}, Lcom/android/quickstep/util/SplitSelectStateController;->getLegacyRemoteAdapter(IILjava/util/function/Consumer;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v7

    iget-object v0, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v1, p2

    move-object v2, v4

    move v3, p3

    move-object v4, v5

    move v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/SystemUiProxy;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_0
    return-void
.end method

.method public launchInitialAppFullscreen(Ljava/util/function/Consumer;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/util/SplitSelectStateController;->launchSplitTasks(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getFullscreenLaunchData()Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialTaskId()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSecondTaskId()I

    move-result v12

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialPendingIntent()Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialUserId()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialStagePosition()I

    move-result v14

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getInitialShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    new-instance v2, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    invoke-direct {v2, v0, v7, v12, v1}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;IILjava/util/function/Consumer;)V

    new-instance v15, Landroid/window/RemoteTransition;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    const-string v6, "LaunchSplitPair"

    invoke-direct {v15, v2, v4, v6}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/quickstep/util/LogUtils;->getShellShareableInstanceId()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/internal/logging/InstanceId;

    sget-boolean v2, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    const/16 v4, 0x8

    const/4 v6, 0x7

    const/4 v8, 0x6

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSplitLaunchType()I

    move-result v1

    if-eq v1, v8, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v8, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v6, v11

    move v9, v14

    move-object v11, v15

    move-object/from16 v12, v17

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_0

    :cond_2
    iget-object v8, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v13, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    move-object v1, v15

    move v15, v0

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v17}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_3
    move-object v1, v15

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v8, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    move v5, v7

    move-object v6, v11

    move v7, v12

    move v9, v14

    move-object v11, v1

    move-object/from16 v12, v17

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_4
    invoke-direct {v0, v7, v12, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getLegacyRemoteAdapter(IILjava/util/function/Consumer;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->getSplitLaunchType()I

    move-result v1

    if-eq v1, v8, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v8, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v6, v11

    move v9, v14

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_6
    iget-object v8, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v13, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual/range {v8 .. v17}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_7
    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v8, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    move v5, v7

    move-object v6, v11

    move v7, v12

    move v9, v14

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-virtual/range {v4 .. v12}, Lcom/android/quickstep/SystemUiProxy;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_0
    return-void
.end method

.method public launchSplitTasks(Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/quickstep/util/LogUtils;->getShellShareableInstanceId()Landroid/util/Pair;

    move-result-object v0

    iget v2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    iget-object v3, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iget-object v5, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialStagePosition:I

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lcom/android/internal/logging/InstanceId;

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(ILandroid/content/Intent;ILandroid/content/Intent;ILjava/util/function/Consumer;ZFLcom/android/internal/logging/InstanceId;)V

    iget-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public launchTasks(ILandroid/content/Intent;ILandroid/content/Intent;ILjava/util/function/Consumer;ZFLcom/android/internal/logging/InstanceId;)V
    .locals 21
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/android/internal/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF",
            "Lcom/android/internal/logging/InstanceId;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v4, p1

    move-object/from16 v1, p2

    move/from16 v5, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move/from16 v6, p7

    const-string v7, "Main"

    const-string v8, "launchSplitTasks"

    invoke-static {v7, v8}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v7}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_0

    move/from16 v7, p8

    move-object/from16 v15, p9

    invoke-direct {v0, v3, v6, v7, v15}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasksRefactored(Ljava/util/function/Consumer;ZFLcom/android/internal/logging/InstanceId;)V

    return-void

    :cond_0
    move/from16 v7, p8

    move-object/from16 v15, p9

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    if-eqz v6, :cond_1

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    :cond_1
    iget-object v6, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    sget-boolean v9, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v9, :cond_7

    invoke-direct {v0, v4, v5, v3}, Lcom/android/quickstep/util/SplitSelectStateController;->getShellRemoteTransition(IILjava/util/function/Consumer;)Landroid/window/RemoteTransition;

    move-result-object v19

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v6, :cond_3

    iget-object v0, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v6

    move/from16 v5, p5

    move/from16 v6, p8

    move-object/from16 v7, v19

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/SystemUiProxy;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_5

    :cond_3
    if-nez v2, :cond_4

    if-nez v6, :cond_4

    iget-object v2, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v8

    move/from16 v4, p3

    move/from16 v5, p5

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-static/range {p5 .. p5}, Lcom/android/launcher3/util/SplitConfigurationOptions;->getOppositeStagePosition(I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v3

    move-object v3, v8

    move/from16 v4, p1

    :goto_1
    move/from16 v6, p8

    move-object/from16 v7, v19

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->launchIntentOrShortcut(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/ActivityOptions;IIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_5

    :cond_5
    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v11

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v6, :cond_6

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondPendingIntent:Landroid/app/PendingIntent;

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-direct {v0, v2, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_2
    move-object v13, v1

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-direct {v0, v2, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    const/16 v16, 0x0

    move-object v8, v3

    move-object v15, v0

    move/from16 v17, p5

    move/from16 v18, p8

    move-object/from16 v20, p9

    invoke-virtual/range {v8 .. v20}, Lcom/android/quickstep/SystemUiProxy;->startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_5

    :cond_7
    invoke-direct {v0, v4, v5, v3}, Lcom/android/quickstep/util/SplitSelectStateController;->getLegacyRemoteAdapter(IILjava/util/function/Consumer;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v19

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-nez v6, :cond_8

    iget-object v0, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v6

    move/from16 v5, p5

    move/from16 v6, p8

    move-object/from16 v7, v19

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/SystemUiProxy;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_5

    :cond_8
    if-nez v2, :cond_9

    if-nez v6, :cond_9

    iget-object v2, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v8

    move/from16 v4, p3

    move/from16 v5, p5

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-static/range {p5 .. p5}, Lcom/android/launcher3/util/SplitConfigurationOptions;->getOppositeStagePosition(I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v3

    move-object v3, v8

    move/from16 v4, p1

    :goto_3
    move/from16 v6, p8

    move-object/from16 v7, v19

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->launchIntentOrShortcutLegacy(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/ActivityOptions;IIFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_5

    :cond_a
    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v11

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v6, :cond_b

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondPendingIntent:Landroid/app/PendingIntent;

    goto :goto_4

    :cond_b
    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-direct {v0, v2, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_4
    move-object v13, v1

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-direct {v0, v2, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v15

    const/16 v16, 0x0

    move-object v8, v3

    move/from16 v17, p5

    move/from16 v18, p8

    move-object/from16 v20, p9

    invoke-virtual/range {v8 .. v20}, Lcom/android/quickstep/SystemUiProxy;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    :goto_5
    return-void
.end method

.method public resetState()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->resetState()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialStagePosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iput-boolean v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mAnimateCurrentTaskDismissal:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDismissingFromSplitPair:Z

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setAnimateCurrentTaskDismissal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mAnimateCurrentTaskDismissal:Z

    return-void
.end method

.method public setDismissingFromSplitPair(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDismissingFromSplitPair:Z

    return-void
.end method

.method public setFirstFloatingTaskView(Lcom/android/quickstep/views/FloatingTaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    return-void
.end method

.method public setInitialTaskSelect(Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 1

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    invoke-direct {p0, p2, p4, p3}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialData(ILcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/model/data/ItemInfo;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/SplitSelectDataHolder;->setInitialTaskSelect(Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    return-void
.end method

.method public setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V
    .locals 7
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    iput p5, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    iget-object v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialUser:Landroid/os/UserHandle;

    :goto_0
    invoke-direct {p0, p2, p4, p3}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialData(ILcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/model/data/ItemInfo;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/util/SplitSelectDataHolder;->setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    :cond_1
    return-void
.end method

.method public setRecentsAnimationRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return-void
.end method

.method public setSecondTask(Landroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SplitSelectDataHolder;->setSecondTask(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public setSecondTask(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/SplitSelectDataHolder;->setSecondTask(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_LAUNCH_DATA_REFACTOR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSplitSelectDataHolder:Lcom/android/quickstep/util/SplitSelectDataHolder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SplitSelectDataHolder;->setSecondTask(I)V

    :cond_0
    return-void
.end method
