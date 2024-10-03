.class public Lcom/android/launcher3/anim/AnimatorListeners;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;,
        Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;
    }
.end annotation


# direct methods
.method public static forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/anim/AnimatorListeners$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/AnimatorListeners$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static forEndCallback(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/animation/Animator$AnimatorListener;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 2

    new-instance v0, Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;-><init>(Ljava/lang/Runnable;Lcom/android/launcher3/anim/AnimatorListeners$1;)V

    return-object v0
.end method
