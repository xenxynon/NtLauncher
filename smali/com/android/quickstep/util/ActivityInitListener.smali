.class public Lcom/android/quickstep/util/ActivityInitListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mIsRegistered:Z

.field private mOnInitListener:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;Lcom/android/launcher3/util/ActivityTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/launcher3/util/ActivityTracker<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    iput-object p1, p0, Lcom/android/quickstep/util/ActivityInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    iput-object p2, p0, Lcom/android/quickstep/util/ActivityInitListener;->mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;

    return-void
.end method


# virtual methods
.method protected handleInit(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final init(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/ActivityInitListener;->handleInit(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result p0

    return p0
.end method

.method public register()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    iget-object v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    return-void
.end method
