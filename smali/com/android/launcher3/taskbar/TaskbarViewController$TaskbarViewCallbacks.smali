.class public Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskbarViewCallbacks"
.end annotation


# instance fields
.field private mCanceledStashHint:Z

.field private mDownX:F

.field private mDownY:F

.field private final mSquaredTouchSlop:F

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$000(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mSquaredTouchSlop:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->lambda$getBackgroundOnLongClickListener$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->lambda$getAllAppsButtonClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->lambda$getTaskbarDividerLongClickListener$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getAllAppsButtonClickListener$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$000(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->toggle()V

    return-void
.end method

.method private synthetic lambda$getBackgroundOnLongClickListener$2(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateIsManuallyStashedInApp(Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getTaskbarDividerLongClickListener$1(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPinningController:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->showPinningView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAllAppsButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/l4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/l4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    return-object v0
.end method

.method public getBackgroundOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/n4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/n4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    return-object v0
.end method

.method public getIconOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$000(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getIconOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/taskbar/m4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/m4;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    return-object v0
.end method

.method public getTaskbarDividerLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/o4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/o4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    return-object v0
.end method

.method public notifyIconLayoutBoundsChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onIconLayoutBoundsChanged()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mSquaredTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startStashHint(Z)V

    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    return v3

    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startStashHint(Z)V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownX:F

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownY:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startStashHint(Z)V

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    :cond_3
    :goto_0
    return v2
.end method
