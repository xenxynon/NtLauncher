.class public final synthetic Lw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/a;->g:Lcom/android/launcher3/statehandlers/DepthController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lw/a;->g:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->c(Lcom/android/launcher3/statehandlers/DepthController;Landroid/animation/ValueAnimator;)V

    return-void
.end method
