.class Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableSuccessListener"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/launcher3/anim/AnimatorListeners$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
