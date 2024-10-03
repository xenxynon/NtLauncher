.class public final synthetic Lcom/android/launcher3/taskbar/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/l1;->g:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/l1;->h:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/l1;->g:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/l1;->h:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->a(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    return-void
.end method
