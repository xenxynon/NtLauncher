.class public final Lcom/android/quickstep/WindowModeShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/android/launcher3/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final iconRes:I

.field private final launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final taskView:Lcom/android/quickstep/views/TaskView;

.field private final textRes:I


# direct methods
.method public constructor <init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherEvent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput p1, p0, Lcom/android/quickstep/WindowModeShortcut;->iconRes:I

    iput p2, p0, Lcom/android/quickstep/WindowModeShortcut;->textRes:I

    iput-object p3, p0, Lcom/android/quickstep/WindowModeShortcut;->activity:Lcom/android/launcher3/BaseDraggingActivity;

    iput-object p4, p0, Lcom/android/quickstep/WindowModeShortcut;->taskView:Lcom/android/quickstep/views/TaskView;

    iput-object p5, p0, Lcom/android/quickstep/WindowModeShortcut;->launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-void
.end method

.method private final isAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/quickstep/views/TaskView;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task;->activityType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->isWindowModeSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_3

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/android/quickstep/utils/WindowModeHelper;->isAppSupportWindowMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p0, v1

    :cond_3
    return p0
.end method


# virtual methods
.method public final getActivity()Lcom/android/launcher3/BaseDraggingActivity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/WindowModeShortcut;->activity:Lcom/android/launcher3/BaseDraggingActivity;

    return-object p0
.end method

.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/WindowModeShortcut;->iconRes:I

    return p0
.end method

.method public final getLauncherEvent()Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/WindowModeShortcut;->launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0
.end method

.method public final getShortcut()Lcom/android/quickstep/WindowModeShortcut;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/WindowModeShortcut<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/WindowModeShortcut;->activity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v1, p0, Lcom/android/quickstep/WindowModeShortcut;->taskView:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/WindowModeShortcut;->isAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/WindowModeShortcut;->taskView:Lcom/android/quickstep/views/TaskView;

    return-object p0
.end method

.method public final getTextRes()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/WindowModeShortcut;->textRes:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->constructWindowModeActivityOption()Landroid/app/ActivityOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/WindowModeShortcut;->taskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    const-string v1, "key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/popup/SystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/quickstep/WindowModeShortcut;->activity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->returnToHomescreen()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/WindowModeShortcut;->taskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/WindowModeShortcut;->launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    sget-object p0, Ly4/a;->h:Ly4/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ly4/a;->e(I)V

    return-void
.end method
