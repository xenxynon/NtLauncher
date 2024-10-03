.class public Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;
.super Lcom/android/wm/shell/bubbles/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;
    }
.end annotation


# static fields
.field public static final BUBBLE_BAR_ENABLED:Z

.field private static final BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

.field private mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

.field private mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field private mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

.field private final mBubbles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    const-string v0, "persist.wm.debug.bubble_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "BubbleStateUpdates-"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/g$a;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    sget-boolean p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p2, p0}, Lcom/android/quickstep/SystemUiProxy;->setBubblesListener(Lcom/android/wm/shell/bubbles/g;)V

    :cond_0
    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mMainExecutor:Ljava/util/concurrent/Executor;

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance p2, Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/BubbleIconFactory;-><init>(Landroid/content/Context;IIII)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    return-void
.end method

.method public static synthetic R(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->lambda$onBubbleStateChange$3(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->lambda$onBubbleStateChange$4(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method public static synthetic T(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->lambda$onBubbleStateChange$1(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method public static synthetic U(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->lambda$onBubbleStateChange$2(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method public static synthetic V(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->lambda$init$0()V

    return-void
.end method

.method private applyViewChanges(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 8

    iget-boolean v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expandedChanged:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    if-eqz v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    iget-object v4, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/bubbles/RemovedBubble;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/bubbles/RemovedBubble;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->removeBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trying to remove bubble that doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/bubbles/RemovedBubble;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object v4, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->addBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    if-eqz v0, :cond_5

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    :cond_5
    iget-object v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_8

    iget-object v2, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->addBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    if-eqz v0, :cond_7

    move-object v3, v2

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trying to add bubble but null after loading! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setHiddenForBubbles(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->setHiddenForBubbles(Z)V

    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->bubbleKeysInOrder:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->bubbleKeysInOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/taskbar/bubbles/f;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/bubbles/f;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/bubbles/g;->a:Lcom/android/launcher3/taskbar/bubbles/g;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->reorderBubbles(Ljava/util/List;)V

    :cond_9
    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v0, :cond_a

    move-object v3, v0

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to select bubble that doesn\'t exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->setSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    :cond_c
    iget-boolean v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expandedChanged:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-boolean p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpandedFromSysui(Z)V

    goto :goto_6

    :cond_d
    sget-object p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    const-string p1, "expansion was changed but is the same"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    sget-boolean v1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setHiddenForBubbles(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->setHiddenForBubbles(Z)V

    return-void
.end method

.method private synthetic lambda$onBubbleStateChange$1(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->applyViewChanges(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method private synthetic lambda$onBubbleStateChange$2(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 5

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->j:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->populateBubble(Lcom/android/wm/shell/common/bubbles/BubbleInfo;Landroid/content/Context;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->k:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->populateBubble(Lcom/android/wm/shell/common/bubbles/BubbleInfo;Landroid/content/Context;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->updatedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->p:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->populateBubble(Lcom/android/wm/shell/common/bubbles/BubbleInfo;Landroid/content/Context;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/d;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/taskbar/bubbles/d;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onBubbleStateChange$3(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->applyViewChanges(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method private synthetic lambda$onBubbleStateChange$4(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/bubbles/b;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private populateBubble(Lcom/android/wm/shell/common/bubbles/BubbleInfo;Landroid/content/Context;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->f()Z

    move-result v2

    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->e()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v3, v1, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->d()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v3

    const/16 v4, 0xc11

    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    if-lez v4, :cond_0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    if-nez v3, :cond_1

    sget-object v4, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No shortcutInfo found for bubble: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with shortcutId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v4, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->c()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->e()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find appInfo: "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->e()I

    move-result v9

    invoke-direct {v7, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->a()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v7, v1, v3, v9}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBubbleDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    iget-object v3, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual {v3, v6, v2}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iget-object v12, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    new-array v3, v5, [F

    iget-object v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBubbleBitmap(Landroid/graphics/drawable/Drawable;[F)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1040253

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v15

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    aget v3, v3, v8

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v15, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, v2, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    const/4 v2, -0x1

    const/high16 v3, 0x430a0000    # 138.0f

    invoke-static {v0, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v14

    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e004f

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-object v9, v1

    move-object/from16 v10, p1

    move-object v11, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;-><init>(Lcom/android/wm/shell/common/bubbles/BubbleInfo;Lcom/android/launcher3/taskbar/bubbles/BubbleView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/graphics/Path;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->setBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    return-object v1

    :catch_0
    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find packageName: "

    goto/16 :goto_1
.end method


# virtual methods
.method public getSelectedBubbleKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/a;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBubbleStateChange(Landroid/os/Bundle;)V
    .locals 3

    const-class v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-class v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    const-string v1, "update"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;-><init>(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V

    iget-object v1, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->j:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->k:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/c;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/bubbles/c;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/taskbar/bubbles/e;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/taskbar/bubbles/e;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setBubblesListener(Lcom/android/wm/shell/bubbles/g;)V

    return-void
.end method

.method public setSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->updateSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    :cond_0
    return-void
.end method
