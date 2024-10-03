.class public final synthetic Li/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/dragndrop/DragView;

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/i;->g:Lcom/android/launcher3/dragndrop/DragView;

    iput p2, p0, Li/i;->h:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Li/i;->g:Lcom/android/launcher3/dragndrop/DragView;

    iget p0, p0, Li/i;->h:F

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->c(Lcom/android/launcher3/dragndrop/DragView;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
