.class public final synthetic Lcom/android/quickstep/j7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Ljava/util/ArrayList;

.field public final synthetic h:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j7;->g:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/quickstep/j7;->h:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/j7;->g:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/quickstep/j7;->h:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/TaskViewUtils;->d(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
