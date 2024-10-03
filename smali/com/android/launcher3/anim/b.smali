.class public final synthetic Lcom/android/launcher3/anim/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/b;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/b;->g:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->a(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
