.class public final synthetic Lcom/android/launcher3/taskbar/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarControllers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/j1;->g:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/j1;->g:Lcom/android/launcher3/taskbar/TaskbarControllers;

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->b(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    return-void
.end method
