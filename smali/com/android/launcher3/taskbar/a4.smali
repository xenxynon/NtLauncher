.class public final synthetic Lcom/android/launcher3/taskbar/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/a4;->g:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/a4;->g:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->a(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V

    return-void
.end method
