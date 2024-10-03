.class public final synthetic Lcom/android/launcher3/graphics/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Landroid/graphics/Path;

.field public final synthetic h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic i:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/e;->g:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/android/launcher3/graphics/e;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p3, p0, Lcom/android/launcher3/graphics/e;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/e;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/e;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object p0, p0, Lcom/android/launcher3/graphics/e;->i:Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/graphics/IconShape$PathShape;->a(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
