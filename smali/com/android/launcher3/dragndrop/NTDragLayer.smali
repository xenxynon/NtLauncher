.class public final Lcom/android/launcher3/dragndrop/NTDragLayer;
.super Lcom/android/launcher3/dragndrop/DragLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;


# instance fields
.field private final folderScrim$delegate:Ln5/e;

.field private interceptByController:Z

.field private interceptByCustom:Z

.field private isFlingAnimationPlaying:Z

.field private lastPrintedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/NTDragLayer;->Companion:Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->lastPrintedTime:J

    new-instance p1, Lcom/android/launcher3/dragndrop/NTDragLayer$folderScrim$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/dragndrop/NTDragLayer$folderScrim$2;-><init>(Lcom/android/launcher3/dragndrop/NTDragLayer;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->folderScrim$delegate:Ln5/e;

    return-void
.end method

.method public static final synthetic access$setFlingAnimationPlaying$p(Lcom/android/launcher3/dragndrop/NTDragLayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->isFlingAnimationPlaying:Z

    return-void
.end method

.method private final onCustomInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->FOLDER_SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public final clearAnimatedViewIfNeed()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->isFlingAnimationPlaying:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    :cond_0
    return-void
.end method

.method public createFlingAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/dragndrop/NTDragLayer$createFlingAnimationListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/NTDragLayer$createFlingAnimationListener$1;-><init>(Lcom/android/launcher3/dragndrop/NTDragLayer;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/launcher3/dragndrop/NTDragLayer;->Companion:Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;

    iget-wide v3, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->lastPrintedTime:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;->isTooFrequent(J)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->getFolderScrim()Lcom/android/launcher3/graphics/FolderScrim;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/graphics/Scrim;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->lastPrintedTime:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dispatchDraw consumed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NTDragLayer"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getFolderScrim()Lcom/android/launcher3/graphics/FolderScrim;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->folderScrim$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/graphics/FolderScrim;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->interceptByController:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/NTDragLayer;->onCustomInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->interceptByCustom:Z

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->interceptByController:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

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

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/launcher3/dragndrop/NTDragLayer;->Companion:Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;

    iget-wide v3, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->lastPrintedTime:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;->isTooFrequent(J)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/views/BaseDragLayer;->onLayout(ZIIII)V

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onLayout consumed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NTDragLayer"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/launcher3/dragndrop/NTDragLayer;->Companion:Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;

    iget-wide v3, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->lastPrintedTime:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/dragndrop/NTDragLayer$Companion;->isTooFrequent(J)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onMeasure consumed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NTDragLayer"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->interceptByController:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer;->interceptByCustom:Z

    if-eqz v0, :cond_0

    const-string p0, "NTDragLayer"

    const-string p1, "Consume current touch event for spring load state."

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    sget-boolean p0, Ly2/e;->c:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DragLayer remove in child thread,view = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", stack = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x14

    invoke-static {p1}, Ly2/e;->i(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AL-2073"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
