.class Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/LauncherUnfoldAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QsbAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;Lcom/android/quickstep/util/LauncherUnfoldAnimationController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->access$300(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/util/HorizontalInsettableView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->access$300(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/util/HorizontalInsettableView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/launcher3/util/HorizontalInsettableView;->setHorizontalInsets(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    invoke-super {p0}, Lm0/o$a;->onTransitionFinishing()V

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->access$300(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/util/HorizontalInsettableView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->access$300(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/util/HorizontalInsettableView;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher3/util/HorizontalInsettableView;->setHorizontalInsets(F)V

    :cond_0
    return-void
.end method

.method public onTransitionStarted()V
    .locals 0

    return-void
.end method
