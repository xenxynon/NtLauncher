.class public final synthetic Lcom/android/launcher3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

.field public final synthetic h:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b0;->g:Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    iput-object p2, p0, Lcom/android/launcher3/b0;->h:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/b0;->g:Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    iget-object p0, p0, Lcom/android/launcher3/b0;->h:Landroid/animation/ValueAnimator;

    invoke-static {v0, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->a(Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method
