.class Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->access$002(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$1;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->access$100(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)V

    return-void
.end method
