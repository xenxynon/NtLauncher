.class public final synthetic Lcom/android/quickstep/interaction/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/interaction/AnimatedTaskView;

.field public final synthetic h:Landroid/graphics/Rect;

.field public final synthetic i:I

.field public final synthetic j:F

.field public final synthetic k:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/h;->g:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/h;->h:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/quickstep/interaction/h;->i:I

    iput p4, p0, Lcom/android/quickstep/interaction/h;->j:F

    iput p5, p0, Lcom/android/quickstep/interaction/h;->k:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/interaction/h;->g:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/h;->h:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/quickstep/interaction/h;->i:I

    iget v3, p0, Lcom/android/quickstep/interaction/h;->j:F

    iget v4, p0, Lcom/android/quickstep/interaction/h;->k:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/interaction/AnimatedTaskView;->d(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;IFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
