.class public Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;
.super Lcom/android/launcher3/uioverrides/states/OverviewState;
.source "SourceFile"


# static fields
.field private static final STATE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    sget v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->STATE_FLAGS:I

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(III)V

    return-void
.end method

.method public static getOverviewScaleAndOffsetForModalState(Lcom/android/launcher3/BaseDraggingActivity;)[F
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSelectedTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getModalTaskSize(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/4 v1, 0x0

    aput v1, v0, p0

    return-object v0
.end method


# virtual methods
.method public getOverviewModalness()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->getOverviewScaleAndOffsetForModalState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    move-result-object p0

    return-object p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetModalVisuals()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    :goto_0
    return-void
.end method
