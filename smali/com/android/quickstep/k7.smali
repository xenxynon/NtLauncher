.class public final synthetic Lcom/android/quickstep/k7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k7;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/android/quickstep/k7;->h:Landroid/view/SurfaceControl$Transaction;

    iput-boolean p3, p0, Lcom/android/quickstep/k7;->i:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/k7;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/android/quickstep/k7;->h:Landroid/view/SurfaceControl$Transaction;

    iget-boolean p0, p0, Lcom/android/quickstep/k7;->i:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/TaskViewUtils;->b(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
