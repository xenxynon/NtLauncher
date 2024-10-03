.class public final synthetic Lcom/android/quickstep/views/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic h:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic i:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;[Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/x;->g:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/x;->h:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/quickstep/views/x;->i:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/x;->g:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/views/x;->h:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/quickstep/views/x;->i:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/views/RecentsView;->K(Lcom/android/quickstep/views/RecentsView;[Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V

    return-void
.end method
