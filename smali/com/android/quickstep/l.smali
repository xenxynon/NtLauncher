.class public final synthetic Lcom/android/quickstep/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/l;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/l;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->l(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/ValueAnimator;)V

    return-void
.end method
