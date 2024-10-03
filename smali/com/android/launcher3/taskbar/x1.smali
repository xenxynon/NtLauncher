.class public final synthetic Lcom/android/launcher3/taskbar/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarDragLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/x1;->g:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/x1;->g:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method
