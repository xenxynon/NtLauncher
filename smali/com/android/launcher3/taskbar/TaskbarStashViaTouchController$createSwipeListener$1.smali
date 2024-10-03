.class public final Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->createSwipeListener()Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private lastDisplacement:F

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(F)Z
    .locals 8

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->lastDisplacement:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getTranslationCallback$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getMaxTouchDisplacement$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)F

    move-result v4

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getMaxVisualDisplacement$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)F

    move-result v6

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getDisplacementInterpolator$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Landroid/view/animation/Interpolator;

    move-result-object v7

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->onActionMove(F)V

    return v1
.end method

.method public onDragEnd(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getSwipeDownDetector$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->lastDisplacement:F

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getTouchDisplacementToStash$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->getControllers()Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getTranslationCallback$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->onActionEnd()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController$createSwipeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;->access$getSwipeDownDetector$p(Lcom/android/launcher3/taskbar/TaskbarStashViaTouchController;)Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0

    return-void
.end method
